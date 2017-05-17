#!/usr/bin/ruby -w

require './lib/embossed_lilly'
require './lib/item'
require './lib/standard_item'
require './lib/maturing_item'
require './lib/sulfuras'
require './lib/backstage'
require './lib/conjured'

puts "OMGHAI!"
items = [
  StandardItem.new(name:"+5 Dexterity Vest", sell_in: 10, quality: 20),
  MaturingItem.new(name:"Aged Brie", sell_in:2, quality:0),
  StandardItem.new(name:"Elixir of the Mongoose", sell_in:5, quality:7),
  Sulfuras.new(name:"Sulfuras, Hand of Ragnaros", sell_in:0, quality:80),
  Sulfuras.new(name:"Sulfuras, Hand of Ragnaros", sell_in:-1, quality:80),
  Backstage.new(name:"Backstage passes to a TAFKAL80ETC concert", sell_in:15, quality:20),
  Backstage.new(name:"Backstage passes to a TAFKAL80ETC concert", sell_in:10, quality:49),
  Backstage.new(name:"Backstage passes to a TAFKAL80ETC concert", sell_in:5, quality:49),
  # This Conjured item does not work properly yet
  Conjured.new(name:"Conjured Mana Cake", sell_in: 3, quality: 6), # <-- :O
]

days = 7
if ARGV.size > 0
  days = ARGV[0].to_i + 1
end

embossed_lilly = EmbossedLilly.new items
(0...days).each do |day|
  puts "-------- day #{day} --------"
  puts "name, sellIn, quality"
  items.each do |item|
    puts item
  end
  puts ""
  embossed_lilly.update_status
end
