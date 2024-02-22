---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new HardwareOathAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.hardwareOathAuthenticationMethodConfiguration');
$requestBody->setState(new AuthenticationMethodState('disabled'));

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```