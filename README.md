# reggora-ruby

Ruby wrapper for the [Reggora.com](https://reggora.io) API. This gem gives you an ActiveRecord-style syntax to use the Reggora.com API.

Supports Ruby 2.0.0 and greater.

## Table of Contents

- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Usage](#usage)
- [Examples](#examples)
- [API Documentation](#api-documentation)
- [Contributing](#contributing)

## Getting Started

Here's a general overview of the Reggora services available, click through to read more.

- [Lender API](https://sandbox.reggora.io/#lender-api)

Please read through the official [API Documentation](#api-documentation) to get a complete sense of what to expect from each endpoint.

### Installation

Add this line to your application's `Gemfile`:

    gem 'reggora'

And then execute:

    $ bundle

Or manually install it yourself:

    $ gem install reggora

### Usage

The library uses an ActiveRecord-style interface. You'll feel right at home.

For optional parameters and other details, refer to the docs [here](https://sandbox.reggora.io/).

#### Initialization and Configuration

There are two different ways to initialize the Reggora Client with correct credentials

```ruby
# To initialize a Reggora object
reggora = Reggora::Client.new()

# To initialize a Reggora object with an older API version
reggora = Reggora::Client.new(token: "token", api_integration_key: "api-integration-key")
```

```ruby
Reggora::Client.environment = 'sandbox'
Reggora::Client.token = 'token'
Reggora::Client.api_integration_key = 'api-integration-key'
```

#### Authorization

First we need to authorize the lender with Reggora before making requests to receive a token. We need the environment set as the subdomain used in the request (sandbox or not)

```ruby
  Reggora::Client.environment = 'sandbox'
  Reggora::Client.authorize(username: 'regora-username', password: 'regora-password')
```

#### Accessing Response Headers

You can access response headers via a hidden `headers` method on the response hash.

You can also access headers from `Reggora::InvalidRequestError`s.

```ruby
begin
  # some api endpoint executed
rescue Reggora::InvalidRequestError => e
  e._response.headers[:content_type]
  # => "application/json; charset=utf-8"
end
```

## Contributing

To contribute, please see the [CONTRIBUTING.md](CONTRIBUTING.md) file.

=======================

Copyright &copy; 2020 Reggora.com

Released under the MIT License, which can be found in the repository in `LICENSE.txt`.
