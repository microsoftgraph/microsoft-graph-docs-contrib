---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceAppManagement();
$requestBody->setOdataType('#microsoft.graph.deviceAppManagement');

$requestBody->setMicrosoftStoreForBusinessLastSuccessfulSyncDateTime(new \DateTime('2016-12-31T23:57:45.2453148-08:00'));

$requestBody->setIsEnabledForMicrosoftStoreForBusiness(true);

$requestBody->setMicrosoftStoreForBusinessLanguage('Microsoft Store For Business Language value');

$requestBody->setMicrosoftStoreForBusinessLastCompletedApplicationSyncTime(new \DateTime('2017-01-01T00:02:00.0421137-08:00'));



$result = $graphServiceClient->deviceAppManagement()->patch($requestBody);


```