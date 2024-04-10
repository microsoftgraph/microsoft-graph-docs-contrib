---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentityApiConnector;
use Microsoft\Graph\Generated\Models\BasicAuthentication;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityApiConnector();
$requestBody->setDisplayName('Test API');
$requestBody->setTargetUrl('https://someapi.com/api');
$authenticationConfiguration = new BasicAuthentication();
$authenticationConfiguration->setOdataType('#microsoft.graph.basicAuthentication');
$authenticationConfiguration->setUsername('MyUsername');
$authenticationConfiguration->setPassword('MyPassword');
$requestBody->setAuthenticationConfiguration($authenticationConfiguration);

$result = $graphServiceClient->identity()->apiConnectors()->post($requestBody)->wait();

```