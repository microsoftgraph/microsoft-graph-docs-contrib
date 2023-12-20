---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MobileAppTroubleshootingEvent();
$requestBody->setOdataType('#microsoft.graph.mobileAppTroubleshootingEvent');

$result = $graphServiceClient->deviceManagement()->mobileAppTroubleshootingEvents()->byMobileAppTroubleshootingEventId('mobileAppTroubleshootingEvent-id')->patch($requestBody)->wait();

```