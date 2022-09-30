namespace :affiche_heure do

    desc "Petite description de ma task !"
    task my_time_min: :environment do
        # ici mettre le code que l'on veut run
        # madate = Date.strptime(
        #     "2009-04-24 18:33:41 UTC",
        #     "%Y-%m-%d %H:%M:%S %Z"
        #   ).strftime("%m/%d/%Y")

monheure = Time.zone.now.strftime("%H:%M ")


puts monheure
    end

end
