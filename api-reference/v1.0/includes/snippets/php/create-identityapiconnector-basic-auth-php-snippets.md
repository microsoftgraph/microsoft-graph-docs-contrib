---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityApiConnector();
$requestBody->setDisplayName('Test API');

$requestBody->setTargetUrl('https://someapi.com/api');

$authenticationConfiguration = new BasicAuthentication();
$authenticationConfiguration->set@odatatype('#microsoft.graph.basicAuthentication');

$authenticationConfiguration->setUsername('MyUsername');

$authenticationConfiguration->setPassword('MyPassword');


$requestBody->setAuthenticationConfiguration($authenticationConfiguration);


$result = $graphServiceClient->identity()->apiConnectors()->post($requestBody);


```