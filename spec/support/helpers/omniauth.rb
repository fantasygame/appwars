module Omniauth
  module Mock
    def auth_mock
      OmniAuth.config.mock_auth[:github] = {
        'provider' => 'github',
        'uid' => '123545',
        'info' => {
          'nickname' => 'mock_nickname',
          'name' => 'mock_name',
          'email' => 'mock@example.com',
          'image' => 'https://avatars.githubusercontent.com/u/mock_number?v=3'
        },
        'credentials' => {
          'token' => 'mock_token',
          'expires' => false
        }
      }
    end
  end

  module SessionHelpers
    def signin
      visit root_path
      expect(page).to have_content("Sign in")
      auth_mock
      click_link "Sign in"
    end
  end
end
