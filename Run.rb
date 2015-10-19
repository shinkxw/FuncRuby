#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'

忽略错误 do
  结果集 = FR列表收集[FR范围[FRN_1][FRN_100]][-> n {
    FR如果[FR为零[FR取余[n][FRN_15]]][
      FRS_FizzBuzz
    ][FR如果[FR为零[FR取余[n][FRN_3]]][
      FRS_Fizz
    ][FR如果[FR为零[FR取余[n][FRN_5]]][
      FRS_Buzz
    ][
      n.to_s
    ]]]
  }]
  输出 FR.字符串(FR列表头[FR列表剩余[FR列表剩余[结果集]]])
  输出 FR.字符串(FRS_我爱你)
  #~ 执行所有测试集
end
