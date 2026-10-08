---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\QualityUpdateRing;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new QualityUpdateRing();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.qualityUpdateRing');
$requestBody->setDisplayName('Test Policy 123');
$requestBody->setDescription('Pre-production test policy');
$requestBody->setDeferralInDays(5);
$requestBody->setIsPaused(true);
$requestBody->setIsHotpatchEnabled(true);

$result = $graphServiceClient->admin()->windows()->updates()->policies()->byPolicyId('policy-id')->rings()->byRingId('ring-id')->patch($requestBody)->wait();

```