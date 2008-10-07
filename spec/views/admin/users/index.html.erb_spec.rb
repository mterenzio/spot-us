require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

describe "/users/index.html.erb" do
  include UsersHelper
  
  before(:each) do
    user_98 = mock_model(User)
    user_98.should_receive(:email).and_return("MyString")
    user_98.should_receive(:first_name).and_return("MyString")
    user_98.should_receive(:last_name).and_return("MyString")
    user_98.should_receive(:type).and_return("MyString")
    user_98.should_receive(:photo_file_name).and_return("MyString")
    user_98.should_receive(:photo_content_type).and_return("MyString")
    user_98.should_receive(:photo_file_size).and_return("1")
    user_98.should_receive(:location).and_return("MyString")
    user_98.should_receive(:about_you).and_return("MyText")
    user_98.should_receive(:website).and_return("MyString")
    user_98.should_receive(:address1).and_return("MyString")
    user_98.should_receive(:address2).and_return("MyString")
    user_98.should_receive(:city).and_return("MyString")
    user_98.should_receive(:state).and_return("MyString")
    user_98.should_receive(:zip).and_return("MyString")
    user_98.should_receive(:phone).and_return("MyString")
    user_98.should_receive(:country).and_return("MyString")
    user_98.should_receive(:notify_tips).and_return(false)
    user_98.should_receive(:notify_pitches).and_return(false)
    user_98.should_receive(:notify_stories).and_return(false)
    user_98.should_receive(:notify_spotus_news).and_return(false)
    user_98.should_receive(:fact_check_interest).and_return(false)
    user_99 = mock_model(User)
    user_99.should_receive(:email).and_return("MyString")
    user_99.should_receive(:first_name).and_return("MyString")
    user_99.should_receive(:last_name).and_return("MyString")
    user_99.should_receive(:type).and_return("MyString")
    user_99.should_receive(:photo_file_name).and_return("MyString")
    user_99.should_receive(:photo_content_type).and_return("MyString")
    user_99.should_receive(:photo_file_size).and_return("1")
    user_99.should_receive(:location).and_return("MyString")
    user_99.should_receive(:about_you).and_return("MyText")
    user_99.should_receive(:website).and_return("MyString")
    user_99.should_receive(:address1).and_return("MyString")
    user_99.should_receive(:address2).and_return("MyString")
    user_99.should_receive(:city).and_return("MyString")
    user_99.should_receive(:state).and_return("MyString")
    user_99.should_receive(:zip).and_return("MyString")
    user_99.should_receive(:phone).and_return("MyString")
    user_99.should_receive(:country).and_return("MyString")
    user_99.should_receive(:notify_tips).and_return(false)
    user_99.should_receive(:notify_pitches).and_return(false)
    user_99.should_receive(:notify_stories).and_return(false)
    user_99.should_receive(:notify_spotus_news).and_return(false)
    user_99.should_receive(:fact_check_interest).and_return(false)

    assigns[:users] = [user_98, user_99]
  end

  it "should render list of users" do
    render "/admin/users/index.html.erb"
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "1", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyText", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "false", 2)
    response.should have_tag("tr>td", "false", 2)
    response.should have_tag("tr>td", "false", 2)
    response.should have_tag("tr>td", "false", 2)
    response.should have_tag("tr>td", "false", 2)
  end
end
