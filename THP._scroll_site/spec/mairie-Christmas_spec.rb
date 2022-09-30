require_relative '../lib/mairie-Christmas'
 

describe "test methode mail" do
  it "check not null" do
    expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).not_to be_nil
  end




  it "check string" do
    expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).to be_a_kind_of(String)

  end



  it "have a return" do
    expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).to be_truthy

  end
end
