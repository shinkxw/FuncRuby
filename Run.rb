#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'

忽略错误 do
  结果集 = FR列表收集[FR范围[FRN_1][FRN_100]][-> n {
    FR如果[FR为零[FR取余[n][FRN_15]]][
      'FizzBuzz'
    ][FR如果[FR为零[FR取余[n][FRN_3]]][
      'Fizz'
    ][FR如果[FR为零[FR取余[n][FRN_5]]][
      'Buzz'
    ][
      n.to_s
    ]]]
  }]
  FR列表叠加[结果集][FR空列表][-> l { -> 结果 { 输出 结果 } }]
  #~ 输出 FR.数值(FR列表头[结果集])
  输出 FR列表头[FR列表剩余[FR列表剩余[结果集]]]
  #~ 执行所有测试集
end
