#!/usr/bin/env ruby -w
# encoding: UTF-8
module FR
  def self.真?(布尔值);布尔值[true][false] end
  def self.假?(布尔值);布尔值[false][true] end
  def self.数值(丘奇数);丘奇数[-> x { x + 1 }][0] end
  def self.数组(λ列表)
    当前节点 = λ列表
    节点数组 = []
    while 假?(FR列表为空[当前节点])
      节点数组 << FR列表头[当前节点]
      当前节点 = FR列表剩余[当前节点]
    end
    节点数组
  end
  def self.字符串(λ字符串);数组(λ字符串).收集{|λ字符| 字符(λ字符)}.连接 end
  def self.字符(λ字符)
    (数值(FR高位数[λ字符]) * 256 + 数值(FR低位数[λ字符])).字符化(R编码::UTF_8)
  end
  
  def self.丘奇数化(数值);数值.次.注入(FR0){|丘奇数| 丘奇数 = FR递增[丘奇数]} end#1..939
  def self.λ字符串化(字符串)
    字符串.逆序.每个字符.收集{|字符| λ字符化(字符)}.注入(FR空列表) do |λ字符串, λ字符|
      FR列表前插入[λ字符串][λ字符]
    end
  end
  def self.λ字符化(字符)
    数值 = 字符.数值化
    输出 "#{字符}   #{数值}   超过限定范围" if 数值 >= 65535
    FR字符[丘奇数化(数值 / 256)][丘奇数化(数值 % 256)]
  end
end