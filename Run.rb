#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'

忽略错误 do
  p FR如果[FR真][:foo][:bar]

  p FR如果[FR假][:foo][:bar]

  #~ 执行所有测试集
end
