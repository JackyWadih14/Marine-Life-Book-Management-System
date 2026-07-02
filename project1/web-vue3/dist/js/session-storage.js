/**
 * SessionStorage 工具类
 * 封装 sessionStorage 的 get/set 方法，支持对象自动序列化与反序列化
 */
var SessionStorage = {

  /**
   * 获取存储的值
   * @param {string} key 键名
   * @returns {*} 解析后的值（若为 JSON 对象则自动反序列化）
   */
  get: function (key) {
    var value = sessionStorage.getItem(key)
    if (value === null || value === undefined) {
      return null
    }
    try {
      return JSON.parse(value)
    } catch (e) {
      return value
    }
  },

  /**
   * 设置存储的值
   * @param {string} key 键名
   * @param {*} value 值（对象自动序列化为 JSON）
   */
  set: function (key, value) {
    if (typeof value === 'object') {
      value = JSON.stringify(value)
    }
    sessionStorage.setItem(key, value)
  },

  /**
   * 移除指定键
   * @param {string} key 键名
   */
  remove: function (key) {
    sessionStorage.removeItem(key)
  },

  /**
   * 清空所有存储
   */
  clear: function () {
    sessionStorage.clear()
  }
}