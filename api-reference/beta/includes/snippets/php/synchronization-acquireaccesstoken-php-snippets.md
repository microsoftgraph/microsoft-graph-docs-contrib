---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AcquireAccessTokenPostRequestBody;
use Microsoft\Graph\Generated\Models\SynchronizationSecretKeyStringValuePair;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AcquireAccessTokenPostRequestBody();
$credentialsSynchronizationSecretKeyStringValuePair1 = new SynchronizationSecretKeyStringValuePair();
$credentialsSynchronizationSecretKeyStringValuePair1->setOdataType('microsoft.graph.synchronizationSecretKeyStringValuePair');
$credentialsArray []= $credentialsSynchronizationSecretKeyStringValuePair1;
$requestBody->setCredentials($credentialsArray);


$graphServiceClient->applications()->byApplicationId('application-id')->synchronization()->acquireAccessToken()->post($requestBody)->wait();

```