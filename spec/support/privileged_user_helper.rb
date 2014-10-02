def create_privileged_user
  ::AgileVentures::PRIVILEGED.each do |email|
    FactoryGirl.create(:user, email: email)
  end
end

def get_privileged_user
  create_privileged_user
  user = User.where(email: ::AgileVentures::PRIVILEGED[0]).take
end
