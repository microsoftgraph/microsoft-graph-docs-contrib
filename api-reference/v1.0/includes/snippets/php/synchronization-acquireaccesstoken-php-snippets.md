---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AcquireAccessTokenPostRequestBody();
$credentialsSynchronizationSecretKeyStringValuePair1 = new SynchronizationSecretKeyStringValuePair();
$credentialsSynchronizationSecretKeyStringValuePair1->setOdataType('microsoft.graph.synchronizationSecretKeyStringValuePair');


$credentialsArray []= $credentialsSynchronizationSecretKeyStringValuePair1;
$requestBody->setCredentials($credentialsArray);




$graphServiceClient->applications()->byApplicationId('application-id')->synchronization()->acquireAccessToken()->post($requestBody);


```