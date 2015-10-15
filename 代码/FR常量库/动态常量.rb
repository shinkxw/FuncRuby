#!/usr/bin/env ruby -w
# encoding: UTF-8
class Object
  def self.常量缺失(常量名)
    常量字符串 = 常量名.字符串化
    #丘奇数
    输出 'num' if 常量字符串.开始于?('FRN_')
    #字符串
    输出 'str' if 常量字符串.开始于?('FRS_')
    引发 NameError, "undefined constant #{常量名}"
  end
end
