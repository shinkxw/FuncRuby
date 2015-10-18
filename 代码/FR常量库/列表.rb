#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 '布尔值'
需要类 '组合子'
#将列表的首个元素作为是否为空的标记（TRUE 和 FALSE）。
FR列表节点 = -> x { -> y { -> f { f[x][y] } } }
FR左节点   = -> p { p[-> x { -> y { x } } ] }
FR右节点   = -> p { p[-> x { -> y { y } } ] }
FR空列表   = FR列表节点[FR真][FR真]
FR列表为空 = FR左节点

FR列表前插入 = -> l { -> x { FR列表节点[FR假][FR列表节点[x][l]] } }
FR范围 = FRZ组合子[-> f { -> m { -> n { FR如果[FR小于等于[m][n]][-> x { FR列表前插入[f[FR递增[m]][n]][m][x] }][FR空列表] } } }]

FR列表头   = -> l { FR左节点[FR右节点[l]] }
FR列表剩余 = -> l { FR右节点[FR右节点[l]] }

FR列表叠加 = FRZ组合子[-> f { -> l { -> x { -> g { FR如果[FR列表为空[l]][x][-> y { g[f[FR列表剩余[l]][x][g]][FR列表头[l]][y] }] } } } }]
FR列表收集 = -> k { -> f { FR列表叠加[k][FR空列表][-> l { -> x { FR列表前插入[l][f[x]] } }] } }
