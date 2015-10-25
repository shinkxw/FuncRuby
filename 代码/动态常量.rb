#!/usr/bin/env ruby -w
# encoding: UTF-8
class Object
  def self.常量缺失(常量名)
    常量字符串 = 常量名.字符串化
    if /^FR(?<类型>.)_(?<值>.+)$/ =~ 常量字符串
      常量值 = case 类型
               when 'N' then FR.丘奇数化(值.整数化)
               when 'C' then FR.λ字符化(值)
               when 'S' then FR.λ字符串化(值)
               else 引发 NameError, "undefined constant #{常量名}"
               end
      定义常量(常量名, 常量值)
      return 常量值
    end
    引发 NameError, "undefined constant #{常量名}"
  end
end
