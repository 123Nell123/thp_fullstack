require 'pry'
require 'nokogiri'
require 'open-uri'




def myxpath
    site = "https://coinmarketcap.com/all/views/all/"



    price1 = '//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[1]/td[5]/div/a'
    name1 = '//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[1]/td[2]/div/a[2]'
    
    price6 = '//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[6]/td[5]/div/a'
    name6 = '//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[6]/td[2]/div/a[2]'
    
    
    racine_price = '//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/'
    
    myhash = {}
    array =[]
    array_price =[]
    array_name =[]
    doc = Nokogiri::HTML(URI.open(site))

    pattern_price =""
    pattern_name = ""
    # Search for nodes by xpath
    # Find all "a" tags with a parent tag whose name is "h3"
   pattern_price = "#{racine_price}*/td[5]/div/a"
   pattern_name = "#{racine_price}*/td[2]/div/a[2]"


    puts " pattern_price : #{pattern_price} "
    puts " pattern_name : #{pattern_name} "

     doc.xpath(pattern_price).each do |link|
       puts link.content
       array_price << link.content
     end

     doc.xpath(pattern_name).each do |link|
        puts link.content
        array_name << link.content
      end

      array_price.length.times do |i|
      myhash["#{array_name[i]}"] = "#{array_price[i]}"
      end

#TODO mettre sur format [ {,} => {,} ]

      # myhash.each do  |key, value |
      # puts " key #{key}, value #{value} "
      # end
puts myhash
return myhash
  end

  myxpath