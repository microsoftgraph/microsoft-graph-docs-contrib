---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\QrCodePinAuthenticationMethodConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new QrCodePinAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.qrCodePinAuthenticationMethodConfiguration');
$requestBody->setState(new AuthenticationMethodState('enabled'));
$requestBody->setStandardQRCodeLifetimeInDays(365);
$requestBody->setPinLength(8);

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```