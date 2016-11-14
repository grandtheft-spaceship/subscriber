Channel.delete_all
Subscription.delete_all

channels = ["Telemundo", "Unimas ", "Azteca 13", "Mexiquense",
 "ESPN", "Fox Sports", "NBC Sports", "Big Ten Network", "Nickelodeon"].map do |name|
  Channel.create!(:name            => name,
                  :callsign        => name[0..2].upcase,
                  :price_per_month => Faker::Commerce.price)
end

channels.each do |channel|
  channel.subscriptions.create!
end