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
$requestBody->setDisplayName('Test API');
$requestBody->setTargetUrl('https://someapi.com/api');
$authenticationConfiguration = new BasicAuthentication();
$authenticationConfiguration->setOdataType('#microsoft.graph.basicAuthentication');
$authenticationConfiguration->setUsername('<USERNAME>');
$authenticationConfiguration->setPassword('<PASSWORD>');
$requestBody->setAuthenticationConfiguration($authenticationConfiguration);

$result = $graphServiceClient->identity()->apiConnectors()->post($requestBody)->wait();

```