---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MobileAppTroubleshootingEvent();
$requestBody->setOdataType('#microsoft.graph.mobileAppTroubleshootingEvent');

$result = $graphServiceClient->deviceManagement()->mobileAppTroubleshootingEvents()->post($requestBody)->wait();

```