desc ";jklasdfjkl;"
task :populate_karma => :environment do
  users = User.all
  users.each do |user|
    user.karma = user.karma_points.sum(:value)
    user.save(:validate => false)
    puts "saved user #{user.id}"
  end
end
