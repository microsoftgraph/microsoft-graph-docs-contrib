---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SmsAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.smsAuthenticationMethodConfiguration');
$requestBody->setId('Sms');
$requestBody->setState(new AuthenticationMethodState('enabled'));

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```