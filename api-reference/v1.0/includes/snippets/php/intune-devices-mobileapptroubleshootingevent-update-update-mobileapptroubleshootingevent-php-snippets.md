---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MobileAppTroubleshootingEvent();
$requestBody->set@odatatype('#microsoft.graph.mobileAppTroubleshootingEvent');



$result = $graphServiceClient->deviceManagement()->mobileAppTroubleshootingEvents()->byMobileAppTroubleshootingEventId('mobileAppTroubleshootingEvent-id')->patch($requestBody);


```