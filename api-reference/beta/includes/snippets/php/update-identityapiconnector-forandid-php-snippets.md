---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IdentityApiConnector;
use Microsoft\Graph\Beta\Generated\Models\BasicAuthentication;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityApiConnector();
$requestBody->setDisplayName('New Test API');
$requestBody->setTargetUrl('https://otherapi.com/api/endpoint');
$authenticationConfiguration = new BasicAuthentication();
$authenticationConfiguration->setOdataType('microsoft.graph.basicAuthentication');
$authenticationConfiguration->setUsername('<NEW_USERNAME>');
$authenticationConfiguration->setPassword('<NEW_PASSWORD>');
$requestBody->setAuthenticationConfiguration($authenticationConfiguration);

$result = $graphServiceClient->identity()->apiConnectors()->byIdentityApiConnectorId('identityApiConnector-id')->patch($requestBody)->wait();

```