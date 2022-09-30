def aemail(townhall_url)
    avernes_hash = []
    page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))
    
    avernes_name_array = page.xpath("/html/body/div/main/section[1]/div/div/div/p[1]/strong[1]/a")
    avernes_email_array = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]")

    puts avernes_hash << Hash[avernes_name_array.text, avernes_email_array.text]
end
