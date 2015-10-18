#!/usr/bin/env ruby -w
# encoding: UTF-8
#Y(f(x)) 等价于 f(x)
FRY组合子 = -> f { -> x { f[x[x]] }[-> x { f[x[x]] }] }
#Y组合子 + 延迟运算
FRZ组合子 = -> f { -> x { f[-> y { x[x][y] }] }[-> x { f[-> y { x[x][y] }] }] }