require 'pry'
require 'nokogiri'
require 'rubygems'
require 'open-uri'

#copie brute du mail : 
# /html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]

def get_townhall_email(mysite)
  
   
    page = Nokogiri::HTML(URI.open(mysite))
    
    mail_string  = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]")
    puts mail_string.text
    return mail_string.text
end

def get_townhall_urls
 
  list_url = []
  liste_site = []
  liste_mail = []
  list_ville = []
  page_urls = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
ville = []


 #list_ville = page_urls.xpath("//tr/td[1]/p/*")
 list_ville = page_urls.xpath("//a[contains(@class, 'lientxt')]/text()").map {|x| x.to_s.downcase.gsub(" ", "-") }
    list_ville.each do |item|
      ville << item
      # todo nettoyer jeu de donne
   # puts item.content


          begin
                        ville.each do |ville_i|
                          siteV = "https://www.annuaire-des-mairies.com/95/#{ville_i}.html"

                          liste_site << siteV
                          page = Nokogiri::HTML(URI.open(siteV))
                          liste_mail <<  page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").to_s


                        end

          rescue => e
            puts "boucle recuperartion des sites ou des mails erronés "
          end

   
    end
    puts liste_site
    puts  liste_mail
    myhash = [ liste_site  =>  liste_mail  ]
    #puts myhash
  end

def perform
  site= "https://www.annuaire-des-mairies.com/95/avernes.html"
  mymail = get_townhall_email(site)
  # #binding.pry # On lance PRY au milieu de la méthode
  # puts "voici : #{mymail} "

  get_townhall_urls


end

perform
