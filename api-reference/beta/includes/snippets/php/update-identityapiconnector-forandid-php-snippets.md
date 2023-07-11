---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityApiConnector();
$requestBody->setDisplayName('New Test API');

$requestBody->setTargetUrl('https://otherapi.com/api/endpoint');

$authenticationConfiguration = new BasicAuthentication();
$authenticationConfiguration->set@odatatype('microsoft.graph.basicAuthentication');

$authenticationConfiguration->setUsername('<NEW_USERNAME>');

$authenticationConfiguration->setPassword('<NEW_PASSWORD>');


$requestBody->setAuthenticationConfiguration($authenticationConfiguration);


$result = $graphServiceClient->identity()->apiConnectors()->byApiConnectorId('identityApiConnector-id')->patch($requestBody);


```