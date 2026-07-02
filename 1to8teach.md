# 海洋知识库系统开发教案（1~8 章 · 源码整合版）

> 本教案以 **`wenku`（后端）+ `web-vue3`（前端）**项目源码为蓝本，综合 8 个教学模块，按实际开发流程整理。所有代码均取自本项目真实文件，可直接对照阅读。

---

## 目录

1. [项目环境搭建](#1-项目环境搭建)
2. [Vue3 入门](#2-vue3-入门)
3. [Vue3 进阶](#3-vue3-进阶)
4. [Vue3 整合 Ant Design Vue](#4-vue3-整合-ant-design-vue)
5. [MyBatis-Plus + Lombok](#5-mybatis-plus--lombok)
6. [构建后端项目框架](#6-构建后端项目框架)
7. [首页前端设计](#7-首页前端设计)
8. [海洋生物电子书页面管理](#8-海洋生物电子书页面管理)

---

## 1. 项目环境搭建

### 1.1 项目总览

```
wenku/wenku/              —— Spring Boot 后端 (端口 8085)
project1/web-vue3/        —— Vue 3 前端 (端口 8899)
haiyang.sql               —— MySQL 数据库
```

### 1.2 后端技术栈

| 技术 | 版本 | 说明 |
|------|------|------|
| Spring Boot | 2.6.8 | 基础框架 |
| JDK | 1.8 (源码级别 8) | Java 版本 |
| MyBatis-Plus | 3.5.2 | ORM 框架 |
| MySQL | 5.6+ | 数据库 |
| Maven | 3.6.3 | 项目构建 |
| Lombok | 最新 | 代码简化 |

**后端 pom.xml 核心依赖：**

```xml
<groupId>com.gec</groupId>
<artifactId>wenku</artifactId>
<version>1.0-SNAPSHOT</version>

<parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>2.6.8</version>
</parent>

<dependencies>
    <!-- Web -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
    <!-- MySQL -->
    <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
    </dependency>
    <!-- MyBatis-Plus -->
    <dependency>
        <groupId>com.baomidou</groupId>
        <artifactId>mybatis-plus-boot-starter</artifactId>
        <version>3.5.2</version>
    </dependency>
    <!-- Lombok -->
    <dependency>
        <groupId>org.projectlombok</groupId>
        <artifactId>lombok</artifactId>
        <scope>provided</scope>
    </dependency>
    <!-- 参数校验 -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-validation</artifactId>
    </dependency>
    <!-- 工具类 -->
    <dependency>
        <groupId>com.alibaba</groupId>
        <artifactId>fastjson</artifactId>
        <version>1.2.70</version>
    </dependency>
</dependencies>
```

### 1.3 前端技术栈

| 技术 | 版本 | 说明 |
|------|------|------|
| Vue | 3.2.13 | 前端框架 |
| Vue CLI | ~5.0.0 | 脚手架 |
| Ant Design Vue | 4.2.6 | UI 组件库 |
| Axios | 1.18.0 | HTTP 请求库 |
| Vue Router | 4.0.3 | 路由 |
| Vuex | 4.0.0 | 状态管理 |
| Node.js | 18+ | 运行环境 |

### 1.4 数据库初始化

数据库名：`haiyang`

核心表：

```sql
-- 电子书表
CREATE TABLE `ebook` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `category1_id` bigint(20) DEFAULT NULL COMMENT '分类1',
  `category2_id` bigint(20) DEFAULT NULL COMMENT '分类2',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `cover` varchar(200) DEFAULT NULL COMMENT '封面',
  `doc_count` int(11) DEFAULT NULL COMMENT '文档数',
  `view_count` int(11) DEFAULT NULL COMMENT '阅读数',
  `vote_count` int(11) DEFAULT NULL COMMENT '点赞数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电子书';

-- 分类表
CREATE TABLE `category` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `parent` bigint(255) NOT NULL COMMENT '父id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 文档表
CREATE TABLE `doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ebook_id` bigint(20) NOT NULL COMMENT '电子书id',
  `parent` bigint(20) NOT NULL COMMENT '父id',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '顺序',
  `view_count` int(10) unsigned DEFAULT '0' COMMENT '阅读数',
  `vote_count` int(10) unsigned DEFAULT '0' COMMENT '点赞数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 文档内容表
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

---

## 2. Vue3 入门

### 2.1 创建项目

```bash
vue create web-vue3
```

关键选项：
- Vue 3.x 版本
- Router（路由）
- Vuex（状态管理）
- 非 TypeScript 模式（本项目使用 JS）

### 2.2 项目目录结构（本项目）

```
web-vue3/
├── src/
│   ├── App.vue              # 根组件（布局）
│   ├── main.js              # 入口文件
│   ├── components/          # 公共组件
│   │   ├── the-header.vue
│   │   ├── the-footer.vue
│   │   ├── Button.vue
│   │   └── GridDemo.vue
│   ├── views/               # 页面组件
│   │   ├── HomeView.vue     # 首页
│   │   ├── AboutView.vue    # 关于
│   │   └── admin/
│   │       └── admin-ebook.vue  # 电子书管理
│   ├── router/index.js
│   ├── store/index.js
│   └── assets/
├── vue.config.js
├── .env.dev
├── .env.prod
└── package.json
```

### 2.3 Vue3 核心语法

**插值表达式 & 指令：**

```html
<!-- 插值表达式 -->
<span>{{ message }}</span>

<!-- 文本绑定 -->
<span v-text="name"></span>

<!-- HTML 解析 -->
<span v-html="htmlContent"></span>

<!-- 属性绑定 -->
<img :src="imageUrl" />       <!-- v-bind 简写 -->

<!-- 双向绑定 -->
<input v-model="username" />

<!-- 条件渲染 -->
<div v-if="visible">显示</div>
<div v-show="visible">显示</div>

<!-- 列表渲染 -->
<li v-for="(item, index) in list" :key="item.id">{{ item.name }}</li>

<!-- 事件绑定 -->
<button @click="handleClick">点击</button>  <!-- v-on 简写 -->
```

**事件修饰符：**
- `.stop` — 阻止事件冒泡
- `.prevent` — 阻止默认行为
- `.once` — 只触发一次

### 2.4 本项目的 HomeView.vue（组合式 API 风格）

本项目使用 `<script setup>` 语法糖，这是 Vue 3.2+ 的推荐写法：

```javascript
<script setup>
import { ref, onMounted } from 'vue'

const count = ref(0)
const handleClick = () => {
  count.value++
}

onMounted(() => {
  console.log('组件已挂载')
})
</script>
```

---

## 3. Vue3 进阶

### 3.1 Composition API 与 `<script setup>`

传统 Options API 将 data、methods、computed 分开写，而 Composition API 按**功能逻辑**组织代码。

本项目自始至终使用 `<script setup>` 语法糖：

```javascript
<script setup>
import { ref, reactive, computed, watch, onMounted } from 'vue'

// 简单类型响应式
const message = ref('Hello')

// 对象类型响应式
const user = reactive({ name: '张三', age: 18 })

// 计算属性
const doubleCount = computed(() => count.value * 2)

// 监听
watch(message, (newVal, oldVal) => {
  console.log('变化:', oldVal, '->', newVal)
})

// 生命周期
onMounted(() => { /* 初始化逻辑 */ })
</script>
```

`<script setup>` 的好处：**无需 `return`，定义的变量和方法直接在模板中使用**。

### 3.2 路由使用（本项目）

**文件：** `src/router/index.js`

```javascript
import { createRouter, createWebHashHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    component: () => import('../views/AboutView.vue')
  },
  {
    path: '/admin/ebook',
    name: 'adminEbook',
    component: () => import('../views/admin/admin-ebook.vue')
  }
]

const router = createRouter({
  history: createWebHashHistory(),  // Hash 模式
  routes
})

export default router
```

**组件内使用路由：**

```javascript
<script setup>
import { useRoute, useRouter } from 'vue-router'

const route = useRoute()   // 获取当前路由信息
const router = useRouter() // 路由操作对象

const goToPage = () => {
  router.push('/admin/ebook')
}
</script>
```

**注意**：Vue3 中不能用 `this.$router`，必须通过 `useRouter()` 获取。

### 3.3 父子组件通信

**父传子 — props：**

```vue
<!-- 父组件 -->
<Son :userName="name" :age="18" />

<!-- 子组件 Son.vue -->
<script setup>
import { defineProps } from 'vue'

defineProps({
  userName: String,
  age: Number
})
</script>
```

**子传父 — emit：**

```vue
<!-- 子组件 -->
<script setup>
import { defineEmits } from 'vue'

const emit = defineEmits(['update'])
const handleClick = () => {
  emit('update', '子组件的数据')
}
</script>

<!-- 父组件 -->
<Son @update="handleUpdate" />
```

### 3.4 Axios 请求

本项目使用 Axios 进行前后端通信。

**安装：**
```bash
npm install axios
```

**基本请求：**

```javascript
import axios from 'axios'

// GET 请求
axios.get('/ebook/list', {
  params: { page: 1, size: 10 }
}).then(resp => {
  console.log(resp.data)
})

// POST 请求（JSON 体）
axios.post('/ebook/save', { name: '测试', description: '描述' })

// PUT 请求
axios.put('/ebook/update/1', { name: '新名称' })

// DELETE 请求
axios.delete('/ebook/delete/1')
```

---

## 4. Vue3 整合 Ant Design Vue

### 4.1 安装与注册

```bash
npm i --save ant-design-vue@4.x
npm install --save @ant-design/icons-vue
```

**全局注册（`main.js`）：**

```javascript
import { createApp } from 'vue'
import App from './App.vue'
import Antd from 'ant-design-vue'
import 'ant-design-vue/dist/reset.css'
import * as Icons from '@ant-design/icons-vue'

const app = createApp(App)

app.use(Antd)

// 全局注册所有图标
for (const key in Icons) {
  app.component(key, Icons[key])
}

app.mount('#app')
```

### 4.2 本项目使用的主要组件

**Layout 布局（`App.vue`）：**

```vue
<a-layout>
  <TheHeader />                              <!-- 顶部导航 -->
  <a-layout>
    <a-layout-sider>                          <!-- 左侧边栏 -->
      <a-menu mode="inline">
        <a-menu-item key="1">首页</a-menu-item>
        <a-menu-item key="2">电子书管理</a-menu-item>
      </a-menu>
    </a-layout-sider>
    <a-layout-content>                        <!-- 内容区域 -->
      <router-view />
    </a-layout-content>
  </a-layout>
  <TheFooter />                              <!-- 底部版权 -->
</a-layout>
```

**Table 表格（`admin-ebook.vue`）：**

```vue
<a-table
  :columns="columns"
  :data-source="ebooks"
  :pagination="pagination"
  :loading="loading"
  @change="handleTableChange"
>
  <!-- 自定义列 -->
  <template #bodyCell="{ column, record }">
    <template v-if="column.key === 'cover'">
      <a-image :src="record.cover" style="width:80px" />
    </template>
    <template v-if="column.dataIndex === 'action'">
      <a-space>
        <a-button @click="edit(record)">编辑</a-button>
        <a-popconfirm title="确认删除?" @confirm="handleDelete(record.id)">
          <a-button danger>删除</a-button>
        </a-popconfirm>
      </a-space>
    </template>
  </template>
</a-table>
```

**Modal 模态框：**

```vue
<a-modal
  title="电子书表单"
  v-model:open="modalVisible"     <!-- 注意：Ant Design Vue 4.x 使用 open 而非 visible -->
  @ok="handleModalOk"
>
  <a-form :model="ebook">
    <a-form-item label="名称">
      <a-input v-model:value="ebook.name" />
    </a-form-item>
    <a-form-item label="描述">
      <a-textarea v-model:value="ebook.description" />
    </a-form-item>
  </a-form>
</a-modal>
```

**List 列表（首页）：**

```vue
<a-list
  item-layout="vertical"
  :pagination="pagination"
  :data-source="ebooks"
  @change="handlePageChange"
>
  <template #renderItem="{ item }">
    <a-list-item>
      <a-list-item-meta :description="item.description">
        <template #title>{{ item.name }}</template>
      </a-list-item-meta>
    </a-list-item>
  </template>
</a-list>
```

### 4.3 Ant Design Vue 4.x 注意事项

- 组件以 `a-` 前缀命名，如 `a-button`、`a-table`
- `v-model:value` 用于输入类组件
- `v-model:open` 替代旧的 `v-model:visible`（Modal / Drawer）
- `@change` 在 `a-list` 上可能不生效，改用 `pagination.onChange` 回调

---

## 5. MyBatis-Plus + Lombok

### 5.1 Lombok 常用注解

| 注解 | 作用 |
|------|------|
| `@Data` | 组合：`@Getter` + `@Setter` + `@ToString` + `@EqualsAndHashCode` + `@RequiredArgsConstructor` |
| `@AllArgsConstructor` | 生成全参构造函数 |
| `@NoArgsConstructor` | 生成无参构造函数 |
| `@Slf4j` | 注入日志对象 |

**本项目实体类示例（`Ebook.java`）：**

```java
package com.jw.wenku.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.IdType;
import java.io.Serializable;

public class Ebook implements Serializable {
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    private String name;
    private Long category1Id;
    private Long category2Id;
    private String description;
    private String cover;
    private Integer docCount;
    private Integer viewCount;
    private Integer voteCount;

    // 手动编写的 getter/setter（本项目未使用 @Data，保留了手写 getter/setter）
}
```

### 5.2 MyBatis-Plus 核心配置

**`application.properties`：**

```properties
spring.datasource.driver-class-name=com.mysql.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/haiyang?characterEncoding=UTF8
spring.datasource.username=root
spring.datasource.password=123456

mybatis-plus.mapper-locations=classpath:/mapper/*.xml
logging.level.com.jw.wenku.mapper=trace

server.port=8085
```

**分页插件配置（`MybatisPlusConfig.java`）：**

```java
package com.jw.wenku.config;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MybatisPlusConfig {
    @Bean
    public MybatisPlusInterceptor mybatisPlusInterceptor() {
        MybatisPlusInterceptor interceptor = new MybatisPlusInterceptor();
        interceptor.addInnerInterceptor(new PaginationInnerInterceptor(DbType.MYSQL));
        return interceptor;
    }
}
```

**Mapper 接口：**

```java
package com.jw.wenku.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jw.wenku.entity.Ebook;

public interface EbookMapper extends BaseMapper<Ebook> {
    // 继承 BaseMapper 即拥有基本 CRUD 方法
}
```

**Service 接口与实现：**

```java
// IEbookService.java
public interface IEbookService extends IService<Ebook> {
    PageResp<EbookQueryResp> getBookList(EbookQueryReq req);
    void save(EbookSaveReq req);
}

// EbookServiceImpl.java
@Service
public class EbookServiceImpl extends ServiceImpl<EbookMapper, Ebook> implements IEbookService {
    @Override
    public PageResp<EbookQueryResp> getBookList(EbookQueryReq req) {
        int currentPage = req.getPage() == null || req.getPage() < 1 ? 1 : req.getPage();
        int pageSize = req.getSize() == null || req.getSize() < 1 ? 10 : req.getSize();

        QueryWrapper<Ebook> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(req.getName()), "name", req.getName());

        Page<Ebook> page = new Page<>(currentPage, pageSize);
        page = this.baseMapper.selectPage(page, queryWrapper);

        List<EbookQueryResp> resps = CopyUtil.copyList(page.getRecords(), EbookQueryResp.class);
        PageResp<EbookQueryResp> pageResp = new PageResp<>();
        pageResp.setList(resps);
        pageResp.setTotal(page.getTotal());
        return pageResp;
    }
}
```

### 5.3 条件构造器常用方法

```java
QueryWrapper<Ebook> wrapper = new QueryWrapper<>();

wrapper.like(StringUtils.isNotBlank(name), "name", name);   // 模糊查询
wrapper.eq(ObjectUtils.isNotEmpty(id), "category2_id", id); // 等值查询
wrapper.orderByDesc("sort");                                 // 排序
wrapper.select("id", "name");                                // 指定字段
wrapper.in("id", idList);                                    // IN 查询
```

### 5.4 分页参数封装

**`PageReq.java`：**

```java
@Data
@ToString
public class PageReq {
    @NotNull(message = "【页码】不能为空")
    @Min(value = 1, message = "【页码】最小值为 1")
    private Integer page = 1;

    @NotNull(message = "【每页条数】不能为空")
    @Min(value = 1, message = "【每页条数】最小值为 1")
    @Max(value = 1000, message = "【每页条数】不能超过1000")
    private Integer size = 10;
}
```

**`PageResp.java`：**

```java
@Data
@ToString
public class PageResp<T> {
    private long total;     // 总条数
    private List<T> list;   // 分页数据
}
```

---

## 6. 构建后端项目框架

### 6.1 项目包结构

```
com.jw.wenku/
├── WenKuApplication.java        # 启动类
├── config/
│   ├── CorsConfig.java          # 跨域配置
│   ├── MybatisPlusConfig.java   # MyBatis-Plus 分页插件
│   └── SpringMvcConfig.java     # 拦截器配置
├── controller/                  # 控制层
│   ├── EbookController.java
│   ├── CategoryController.java
│   ├── DocController.java
│   ├── ContentController.java
│   ├── UserController.java
│   └── EbookSnapshotController.java
├── entity/                      # 实体类
├── mapper/                      # 数据访问层
├── service/                     # 业务层
│   └── impl/
├── req/                         # 请求参数封装
│   ├── PageReq.java
│   ├── EbookQueryReq.java
│   └── EbookSaveReq.java
├── resp/                        # 响应封装
│   ├── CommonResp.java
│   ├── PageResp.java
│   └── EbookQueryResp.java
├── exception/                   # 异常处理
│   ├── BusinessException.java
│   └── BusinessExceptionCode.java
├── interceptor/                 # 拦截器
│   └── DurationInterceptor.java
├── filter/                      # 过滤器
│   └── DurationFilter.java
├── aspect/                      # AOP
│   └── LogAspect.java
└── util/                        # 工具类
    ├── CopyUtil.java
    └── SnowFlake.java
```

### 6.2 跨域配置

```java
package com.jw.wenku.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfig implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOriginPatterns("*")
                .allowedHeaders(CorsConfiguration.ALL)
                .allowedMethods(CorsConfiguration.ALL)
                .allowCredentials(true)
                .maxAge(3600);
    }
}
```

### 6.3 统一返回对象

```java
package com.jw.wenku.resp;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CommonResp<T> {
    private boolean success = true;
    private String message;
    private T content;

    public CommonResp() {}
}
```

所有控制器方法统一返回 `CommonResp` 对象，前端通过 `data.success` 判断业务是否成功。

### 6.4 控制器示例

```java
package com.jw.wenku.controller;

import com.jw.wenku.req.EbookQueryReq;
import com.jw.wenku.req.EbookSaveReq;
import com.jw.wenku.resp.CommonResp;
import com.jw.wenku.resp.PageResp;
import com.jw.wenku.service.IEbookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;

@RestController
@RequestMapping("/ebook")
public class EbookController {

    @Autowired
    private IEbookService ebookService;

    // 分页查询
    @RequestMapping("/list")
    public CommonResp list(@Valid EbookQueryReq req) {
        PageResp<EbookQueryResp> pageResp = ebookService.getBookList(req);
        return new CommonResp<>(true, "查询成功", pageResp);
    }

    // 新增/修改
    @PostMapping("/save")
    public CommonResp save(@Valid @RequestBody EbookSaveReq req) {
        ebookService.save(req);
        return new CommonResp<>(true, "保存成功", null);
    }

    // 更新
    @PutMapping("/update/{id}")
    public CommonResp update(@PathVariable Long id, @Valid @RequestBody EbookSaveReq req) {
        req.setId(id);
        ebookService.save(req);
        return new CommonResp<>(true, "更新成功", null);
    }

    // 删除
    @DeleteMapping("/delete/{id}")
    public CommonResp delete(@PathVariable Long id) {
        ebookService.removeById(id);
        return new CommonResp<>(true, "删除成功", null);
    }
}
```

### 6.5 雪花算法（ID 生成）

```java
package com.jw.wenku.util;

import org.springframework.stereotype.Component;

@Component
public class SnowFlake {
    private final static long START_STMP = 1609459200000L;
    private final static long SEQUENCE_BIT = 12;
    private final static long MACHINE_BIT = 5;
    private final static long DATACENTER_BIT = 5;

    private long datacenterId = 1;
    private long machineId = 1;
    private long sequence = 0L;
    private long lastStmp = -1L;

    public synchronized long nextId() {
        long currStmp = System.currentTimeMillis();
        if (currStmp < lastStmp) {
            throw new RuntimeException("Clock moved backwards");
        }
        if (currStmp == lastStmp) {
            sequence = (sequence + 1) & (-1L ^ (-1L << SEQUENCE_BIT));
            if (sequence == 0L) {
                currStmp = getNextMill();
            }
        } else {
            sequence = 0L;
        }
        lastStmp = currStmp;
        return (currStmp - START_STMP) << (SEQUENCE_BIT + MACHINE_BIT + DATACENTER_BIT)
                | datacenterId << (SEQUENCE_BIT + MACHINE_BIT)
                | machineId << SEQUENCE_BIT
                | sequence;
    }

    private long getNextMill() {
        long mill = System.currentTimeMillis();
        while (mill <= lastStmp) {
            mill = System.currentTimeMillis();
        }
        return mill;
    }
}
```

雪花算法生成 64 位 Long 型 ID：**1 位符号位 + 41 位时间戳 + 10 位机器码 + 12 位序列号**，支持每毫秒生成 4096 个不重复 ID。

### 6.6 Jackson 序列化解决精度丢失

雪花 ID 超过 16 位时，前端 JavaScript 会丢失精度。解决方案是在返回给前端的 DTO 中将 Long 序列化为 String：

```java
@JsonSerialize(using = ToStringSerializer.class)
private Long id;
```

---

## 7. 首页前端设计

### 7.1 多环境配置

**`.env.dev`：**
```
NODE_ENV=development
VUE_APP_SERVER=http://localhost:8085
```

**`.env.prod`：**
```
NODE_ENV=production
VUE_APP_SERVER=http://server.jw.com
```

**启动命令：**
```bash
npm run serve-dev     # 开发环境（端口 8899）
```

**`vue.config.js`：**
```javascript
const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  devServer: {
    port: 8899,
    proxy: {
      '/image': {
        target: 'http://localhost:8085',
        changeOrigin: true
      }
    }
  }
})
```

### 7.2 Axios 配置（`main.js`）

```javascript
import axios from 'axios'

axios.defaults.baseURL = process.env.VUE_APP_SERVER

// 请求拦截器
axios.interceptors.request.use(function (config) {
  console.log('请求参数：', config)
  return config
})

// 响应拦截器
axios.interceptors.response.use(function (response) {
  console.log('返回结果：', response)
  return response
})
```

### 7.3 首页数据查询（`HomeView.vue`）

```javascript
<script setup>
import { ref, onMounted } from 'vue'
import axios from 'axios'

const ebooks = ref([])
const pagination = ref({
  current: 1,
  pageSize: 3,
  total: 0,
  showSizeChanger: true,
  pageSizeOptions: ['3', '5', '10', '20'],
  showTotal: total => `共 ${total} 条`,
  onChange: (page, size) => { queryBooks(page, size) },
  onShowSizeChange: (current, size) => {
    pagination.value.pageSize = size
    pagination.value.current = 1
    queryBooks(1, size)
  }
})

const queryBooks = (page = 1, size = 3) => {
  axios.get('/ebook/list', { params: { page, size } })
    .then(resp => {
      const content = resp.data.content || { list: [], total: 0 }
      ebooks.value = content.list || []
      pagination.value.total = content.total || 0
      pagination.value.current = page
    })
}

onMounted(() => { queryBooks() })
</script>
```

### 7.4 布局与菜单

**`App.vue`** 包含：顶部导航（TheHeader）+ 侧边栏菜单 + 内容区（router-view）+ 底部（TheFooter）。

**菜单选中同步路由：**

```javascript
import { useRoute, watch, onMounted } from 'vue-router'

const route = useRoute()
const selectedKeys2 = ref(['1'])

const updateSideMenu = () => {
  const path = route.path
  if (path === '/admin/ebook') selectedKeys2.value = ['2']
  else if (path === '/about') selectedKeys2.value = ['3']
  else selectedKeys2.value = ['1']
}

onMounted(() => updateSideMenu())
watch(() => route.path, updateSideMenu)
```

### 7.5 AOP 日志打印

```java
package com.jw.wenku.aspect;

import com.alibaba.fastjson.JSONObject;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogAspect {
    private static final Logger LOG = LoggerFactory.getLogger(LogAspect.class);

    @Around("execution(* com.jw.wenku.controller.*.*(..))")
    public Object doAround(ProceedingJoinPoint joinPoint) throws Throwable {
        long start = System.currentTimeMillis();
        Object result = joinPoint.proceed();
        LOG.info("返回结果: {}", JSONObject.toJSONString(result));
        LOG.info("耗时: {} ms", System.currentTimeMillis() - start);
        return result;
    }
}
```

---

## 8. 海洋生物电子书页面管理

### 8.1 管理页面路由

在 `src/router/index.js` 中添加：

```javascript
{
  path: '/admin/ebook',
  name: 'adminEbook',
  component: () => import('../views/admin/admin-ebook.vue')
}
```

### 8.2 CRUD 完整实现

管理页 `admin-ebook.vue` 使用 `a-table` 展示数据，支持分页查询、新增、编辑、删除。

**核心 JavaScript 逻辑：**

```javascript
<script setup>
import axios from 'axios'
import { ref, onMounted } from 'vue'
import { message } from 'ant-design-vue'

const ebooks = ref([])
const loading = ref(false)
const pagination = ref({
  current: 1, pageSize: 5, total: 0
})

// 列定义
const columns = [
  { title: '封面', key: 'cover' },
  { title: '名称', dataIndex: 'name' },
  { title: '分类一', dataIndex: 'category1Id' },
  { title: '分类二', dataIndex: 'category2Id' },
  { title: '文档数', dataIndex: 'docCount' },
  { title: '阅读数', dataIndex: 'viewCount' },
  { title: '点赞数', dataIndex: 'voteCount' },
  { title: '操作', key: 'action' }
]

// 查询
const handleQuery = (params) => {
  loading.value = true
  axios.get('/ebook/list', {
    params: { page: params.page, size: params.size, name: param.value.name }
  }).then(resp => {
    loading.value = false
    const data = resp.data
    const content = data.content || { list: [], total: 0 }
    ebooks.value = content.list || []
    pagination.value.total = content.total || 0
    pagination.value.current = params.page
  })
}

// 编辑
const edit = (record) => {
  modalVisible.value = true
  ebook.value = { ...record }
}

// 新增
const add = () => {
  modalVisible.value = true
  ebook.value = { id: null, cover: '', name: '', description: '' }
}

// 保存
const handleModalOk = () => {
  modalLoading.value = true
  axios.post('/ebook/save', ebook.value).then(resp => {
    modalLoading.value = false
    modalVisible.value = false
    if (resp.data.success) {
      message.success('保存成功')
      handleQuery({ page: pagination.value.current, size: pagination.value.pageSize })
    }
  })
}

// 删除
const handleDelete = (id) => {
  axios.delete(`/ebook/delete/${id}`).then(resp => {
    if (resp.data.success) {
      message.success('删除成功')
      handleQuery({ page: pagination.value.current, size: pagination.value.pageSize })
    }
  })
}

onMounted(() => { handleQuery({ page: 1, size: pagination.value.pageSize }) })
</script>
```

### 8.3 常见问题与修复

| 问题 | 原因 | 修复方式 |
|------|------|---------|
| 分页返回 `total:13, list:[]` | `PageReq` 中 `int size=0` 导致 MyBatis-Plus 只 count 不查数据 | 改为 `Integer` 类型 + 默认值 |
| `CommonResp` 返回 content 为 null | 构造方法体为空，未赋值字段 | 添加 `@AllArgsConstructor` |
| 分页按钮高亮不更新 | `handleQuery` 未设置 `pagination.current` | 添加 `pagination.value.current = params.page` |
| 页面刷新后菜单选中状态丢失 | 菜单 `selectedKeys` 写死为首页 | 监听 `route.path` 同步更新 |
| Modal 控制台警告 | Ant Design Vue 4.x 弃用 `visible` | `v-model:visible` → `v-model:open` |
| 图片显示 404 | 前端端口请求图片，图片在后端静态目录 | 配置 `vue.config.js` 的 `proxy` |
| 雪花 ID 前端精度丢失 | JS 无法精确表示 16 位以上 Long | `@JsonSerialize(using = ToStringSerializer.class)` |
| `@change` 分页事件不触发 | 在 `<a-list>` 上直接绑定 `@change` 无效 | 改用 `pagination.onChange` 回调 |

---

> 本教案完 · 对应项目源码：`wenku/`（后端） + `web-vue3/`（前端） + `haiyang.sql`（数据库）
