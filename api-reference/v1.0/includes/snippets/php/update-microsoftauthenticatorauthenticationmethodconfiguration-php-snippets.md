---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MicrosoftAuthenticatorAuthenticationMethodConfiguration;
use Microsoft\Graph\Generated\Models\AuthenticationMethodState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MicrosoftAuthenticatorAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration');
$requestBody->setState(new AuthenticationMethodState('string'));

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```