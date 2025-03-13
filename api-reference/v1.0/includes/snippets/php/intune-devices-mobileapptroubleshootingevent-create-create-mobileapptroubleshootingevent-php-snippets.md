---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MobileAppTroubleshootingEvent;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MobileAppTroubleshootingEvent();
$requestBody->setOdataType('#microsoft.graph.mobileAppTroubleshootingEvent');

$result = $graphServiceClient->deviceManagement()->mobileAppTroubleshootingEvents()->post($requestBody)->wait();

```