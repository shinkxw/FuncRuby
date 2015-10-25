#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'
需要 'C间隔'

忽略错误 do
  C间隔.间隔
  结果集 = FR列表收集[FR范围[FRN_1][FRN_50]][-> n {
    FR如果[FR为零[FR取余[n][FRN_15]]][
      FRS_FizzBuzz
    ][FR如果[FR为零[FR取余[n][FRN_3]]][
      FRS_Fizz
    ][FR如果[FR为零[FR取余[n][FRN_5]]][
      FRS_Buzz
    ][
      FR数值转字符串[n]
    ]]]
  }]
  FR.数组(结果集).每个{|结果| 输出 FR.字符串(结果)}
  输出 C间隔.间隔
end
