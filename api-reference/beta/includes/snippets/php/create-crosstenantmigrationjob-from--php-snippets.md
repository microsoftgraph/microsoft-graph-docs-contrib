---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CrossTenantMigrationJob;
use Microsoft\Graph\Beta\Generated\Models\ExchangeOnlineCrossTenantMigrationSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantMigrationJob();
$requestBody->setDisplayName('xtmigration_user_req_1');
$requestBody->setCompleteAfterDateTime(new \DateTime('2024-12-09T22:48:03.092Z'));
$requestBody->setSourceTenantId('12345678-1234-1234-1234-123456789012');
$exchangeSettings = new ExchangeOnlineCrossTenantMigrationSettings();
$exchangeSettings->setTargetDeliveryDomain('xtmigration.onmicrosoft.com');
$exchangeSettings->setSourceEndpoint('sampleEndpointText');
$requestBody->setExchangeSettings($exchangeSettings);
$requestBody->setResources(['4dd550d9-9ea2-4e71-a16b-60b1d1c4f506', '63f15b55-f61a-49cb-a599-2e3d233afb2c', '41d94bac-3a53-47d6-a89e-583830104e15', 	]);
$requestBody->setResourceType('Users');
$requestBody->setWorkloads(['Teams', 'Exchange', 'ODSP', 	]);

$result = $graphServiceClient->solutions()->migrations()->crossTenantMigrationJobs()->post($requestBody)->wait();

```