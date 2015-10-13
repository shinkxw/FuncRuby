#!/usr/bin/env ruby -w
# encoding: UTF-8
FR0 = -> 调用 { -> 原始值 { 原始值 } }
FR1 = -> 调用 { -> 原始值 { 调用[原始值] } }
module FR
  def self.常量缺失(常量名)
    输出 常量名
    引发 NameError, "undefined constant #{名称}::#{常量名}"
  end
end