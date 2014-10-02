def create_privileged_users
  ::AgileVentures::PRIVILEGED.each do |email|
    FactoryGirl.create(:user, email: email)
  end
end

def get_privileged_user
  create_privileged_users
  user = User.where(email: ::AgileVentures::PRIVILEGED[0]).take
end
