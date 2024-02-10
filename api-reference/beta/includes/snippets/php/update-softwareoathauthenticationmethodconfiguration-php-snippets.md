---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SoftwareOathAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.softwareOathAuthenticationMethodConfiguration');
$requestBody->setState(new AuthenticationMethodState('disabled'));

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```