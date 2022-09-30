 #I ligne très importante qui appelle la gem.
require 'twitter'
require 'pry'
# n'oublie pas les lignes pour Dotenv ici…

require 'dotenv'
Dotenv.load('.env')





def login_twitter
    # quelques lignes qui appellent les clés d'API de ton fichier .env
  client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end

    # ligne qui permet de tweeter sur ton compte
    client.update(' tweet en Ruby !!!!')
  return client
end




def fichier_source_journaliste
  #myfile = "listeJournaliste"
  #todo : a partir d'un fichier 
  # ma_liste = File.open(myfile)
  #   ma_liste.each_line { |line|
  #   ma_liste_content << line
  # }
  # ma_liste_content = IO.readlines("listeJournaliste", ",")
  ma_liste_content = ["@jcunniet", "@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain"]
 
return ma_liste_content
end


def fichier_source_blague
   ma_liste_blague_test = [ "a", "b", "c" , "d", "e", "f" , "g" ]
 
  ma_liste_blague = [   "Quelle mamie fait peur aux voleurs ?   Mamie Traillette. ", "J'ai une blague sur les magasins   Mais elle a pas supermarché " , "Pourquoi est-ce qu'on met tous les crocos en prison ?
  Parce que les crocos dealent."  , "Pourquoi est-ce que les mexicains mangent-ils aux toilettes ?
  Parce qu’ils aiment manger épicé " ]

 return  ma_liste_blague
end




def prepa_journaliste(liste_journaliste, liste_blague, nbre_envoi = 3)
  selected_random = []
  selected_random_journalist = []
  selected_random_blague = []
  hash_journaliste_blague = {}
 
     nbre_envoi.times do
     item = liste_journaliste[rand(liste_journaliste.length)]
     #Todo : verifier pa le meme user
     #selected_random.include?(item) ? nil : selected_random << item 
     selected_random_journalist << item
    end 

    nbre_envoi.times do
      item_blague = liste_blague[rand( liste_blague.length)]
      selected_random_blague << item_blague
      end 

   #ajouter les arrays ci dessous a un hash
   nbre_envoi.times do |i|
   hash_journaliste_blague[ "#{selected_random_journalist[i]}" ] = "#{selected_random_blague[i]}"
   end
return hash_journaliste_blague
end



def envoi_twitter( hash_liste, client)
  # affichage check a mettre ds un retour pour une autre methode
   hash_liste.each do | nom , blague|
   puts "#{nom} : #{blague}"
  

  #  client.search('#ruby').take(1).each do |tweet|
  #   client.update("@#{tweet.user} hey I am using also ruby,  what are your favorite blogs? :)")
  #client.update('Mon test 2')
  #client.update("@sophie_leveille hello!")
  client.update("@#{nom} just for fun : #{blague} #bonjour_monde")
  end
  end

  
def bonjour_like(client)
     client.search('#bonjour_monde').take(2).each do |tweet|
     client.favorite(tweet)
  end
 end

 def bonjour_follow(client)
    client.search('#bonjour_monde', result_type: "recent").take(2).each do |tweet|
    client.follow(tweet.user)
    #binding.pry # On lance PRY au milieu de la méthode
    puts "les followers #{client.followers}"
  end
end


def my_streaming(tweet_recherche)
  client1 = Twitter::Streaming::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end

  client1.filter(track: tweet_recherche) do |object|
   # puts object.text if object.is_a?(Twitter::Tweet)
   client = login_twitter
   client.favorite(object)
   client.follow(object.user)
   puts object.text 


  end

end



def perform
  liste_blague= []
  liste_journaliste= []
  myhash= {}
  #myclient =  Twitter::REST::Client.new

  liste_blague = fichier_source_blague
  liste_journaliste = fichier_source_journaliste

  myhash = prepa_journaliste(liste_journaliste, liste_blague, 2)

  myclient = login_twitter
  #envoi_twitter(myhash , myclient)
  #bonjour_like(myclient)
  #bonjour_follow(myclient)
  my_streaming("#bonjour_monde")


end

perform



