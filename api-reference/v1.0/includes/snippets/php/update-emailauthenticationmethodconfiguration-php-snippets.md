---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.emailAuthenticationMethodConfiguration');
$requestBody->setAllowExternalIdToUseEmailOtp(new ExternalEmailOtpState('enabled'));

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```