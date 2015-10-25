#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'

忽略错误 do
  字符串 = "FR列表收集[FR范围[FRN_1][FRN_50]][-> n {
    FR如果[FR为零[FR取余[n][FRN_15]]][
      FRS_FizzBuzz
    ][FR如果[FR为零[FR取余[n][FRN_3]]][
      FRS_Fizz
    ][FR如果[FR为零[FR取余[n][FRN_5]]][
      FRS_Buzz
    ][
      FR数值转字符串[n]
    ]]]
  }]"
  表达式 = FR转换工具.字符串转换(字符串)
  输出 表达式
  FR.数组(执行(表达式, 表达式.长度)).每个{|结果| 输出 FR.字符串(结果)}
end
