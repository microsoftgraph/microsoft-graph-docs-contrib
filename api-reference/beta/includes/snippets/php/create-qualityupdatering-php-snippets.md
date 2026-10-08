---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\QualityUpdateRing;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\IncludedGroupAssignment;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ExcludedGroupAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new QualityUpdateRing();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.qualityUpdateRing');
$requestBody->setDisplayName('Ring0 - IT devices');
$requestBody->setDescription('First deployment ring to test updates before going to prod.');
$includedGroupAssignment = new IncludedGroupAssignment();
$includedGroupAssignment->setOdataType('microsoft.graph.windowsUpdates.includedGroupAssignment');
$requestBody->setIncludedGroupAssignment($includedGroupAssignment);
$excludedGroupAssignment = new ExcludedGroupAssignment();
$excludedGroupAssignment->setOdataType('microsoft.graph.windowsUpdates.excludedGroupAssignment');
$requestBody->setExcludedGroupAssignment($excludedGroupAssignment);
$requestBody->setDeferralInDays(5);
$requestBody->setIsPaused(false);

$result = $graphServiceClient->admin()->windows()->updates()->policies()->byPolicyId('policy-id')->rings()->post($requestBody)->wait();

```