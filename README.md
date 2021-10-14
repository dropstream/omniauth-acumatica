# OmniAuth::Acumatica

OmniAuth strategy for Acumatica OAuth2

## Usage

Authorization Code Flow
https://help-2020r2.acumatica.com/(W(23))/Help?ScreenId=ShowWiki&pageid=ff780860-09c2-46c9-bdd7-c6c3b1fc442c

You must first register your application with Acumatica:
https://help-2020r2.acumatica.com/(W(24))/Wiki/ShowWiki.aspx?pageid=5e30ec61-7b02-495f-9e6c-1f3bfce4ad45

When you register the application, you will get an 'Client ID' and 'shared secret'. These need to be provided when you configure the strategy (this example assumes the values are available in environment variables):

```
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :acumatica, ENV['CLIENT_ID'], ENV['CLIENT_SECRET']
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-acumatica'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-acumatica

## Response Example

Expected from Acumatica (as noted in their documentation at https://developers.acumatica.com/api-documentation#complete-oauth-flow):

```
{
  "access_token":"secret_secretihaveasecret",
  "token_type":"bearer",
  "scope":"read_store_profile update_catalog",
  "store_id":1003,
  "public_token":"public_qKDUqKkNXzcj9DejkMUqEkYLq2E6BXM9"
}
```

Strategy Output (`auth_hash`):

```
{
  "provider"=>"acumatica",
  "uid"=>1003,
  "info"=>{},
  "credentials"=>{"token"=>"secret_secretihaveasecret", "expires"=>false},
  "extra"=>{}
}
```

## Contributing

1. Fork it ( https://github.com/ShippingEasy/omniauth-acumatica/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
