#!/usr/bin/env ruby -w
# encoding: UTF-8
FR0 = -> 调用 { -> 原始值 { 原始值 } }
FR1 = -> 调用 { -> 原始值 { 调用[原始值] } }
