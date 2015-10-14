#!/usr/bin/env ruby -w
# encoding: UTF-8
class Object
  def self.常量缺失(常量名)
    输出 常量名
    #丘奇数
    
    #字符串
    
    引发 NameError, "undefined constant #{常量名}"
  end
end
