---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->mobileAppTroubleshootingEvents()->byMobileAppTroubleshootingEventId('mobileAppTroubleshootingEvent-id')->appLogCollectionRequests()->byAppLogCollectionRequestId('appLogCollectionRequest-id')->get()->wait();

```