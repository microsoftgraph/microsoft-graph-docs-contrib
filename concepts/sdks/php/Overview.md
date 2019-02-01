# Getting started

## Installation
The PHP SDK can be installed with Composer:
```
{
    "require": {
        "Microsoft/Graph": "^1.0"
    }
}
```

## Register your application

Register your application to use Microsoft Graph API using one of the following
supported authentication portals:

* [Microsoft Application Registration Portal](https://apps.dev.microsoft.com) (**Recommended**):
  Register a new application that authenticates using the v2.0 authentication endpoint. This endpoint authenticates both personal (Microsoft) and work or school (Azure Active Directory) accounts.
* [Microsoft Azure Active Directory](https://manage.windowsazure.com): Register
  a new application in your tenant's Active Directory to support work or school
  users for your tenant, or multiple tenants.

## Authenticate with the Microsoft Graph service

The Microsoft Graph SDK for PHP does not include any default authentication implementations.
Instead, the user will want to authenticate with the library of their choice, or against the OAuth
endpoint directly.

See the [PHP Connect Sample](https://github.com/microsoftgraph/php-connect-sample) for connecting with OAuth2.

## Usage example

```php
use Microsoft\Graph\Graph;

class UsageExample
{
    $accessToken = 'xxx';

    $graph = new Graph();
    $graph->setAccessToken($accessToken);

    $user = $graph->createRequest("GET", "/me")
                  ->setReturnType("User")
                  ->execute();

    echo "Hello, I am $user->getGivenName() ";
}
```

