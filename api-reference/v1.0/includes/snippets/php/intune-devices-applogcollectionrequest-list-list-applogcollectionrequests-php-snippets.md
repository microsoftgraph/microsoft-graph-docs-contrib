---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->mobileAppTroubleshootingEvents()->byMobileAppTroubleshootingEventId('mobileAppTroubleshootingEvent-id')->appLogCollectionRequests()->get()->wait();

```