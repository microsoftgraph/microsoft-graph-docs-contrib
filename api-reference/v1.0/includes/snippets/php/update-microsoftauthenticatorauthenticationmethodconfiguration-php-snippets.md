---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MicrosoftAuthenticatorAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration');
$requestBody->setState(new AuthenticationMethodState('string'));

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```