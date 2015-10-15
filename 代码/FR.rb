#!/usr/bin/env ruby -w
# encoding: UTF-8
module FR
  def self.真?(布尔值);布尔值[true][false] end
  def self.假?(布尔值);布尔值[false][true] end
  def self.数值(丘奇数);丘奇数[-> x { x + 1 }][0] end
  def self.丘奇数化(数值)
    case 数值
    when 0 then FR0
    else#1..939
      丘奇数 = FR0
      数值.次{丘奇数 = FR递增[丘奇数]}
      丘奇数
    end
  end
  def self.丘奇串化(字符串)
    #待完成
  end
end