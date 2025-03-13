---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TemporaryAccessPassAuthenticationMethodConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TemporaryAccessPassAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration');
$requestBody->setIsUsableOnce(true);

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```