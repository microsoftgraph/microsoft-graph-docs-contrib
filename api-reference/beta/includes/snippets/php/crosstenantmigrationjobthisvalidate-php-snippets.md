---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\Migrations\CrossTenantMigrationJobs\Validate\ValidatePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ExchangeOnlineCrossTenantMigrationSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ValidatePostRequestBody();
$requestBody->setDisplayName('Contoso_migration_validation_job');
$requestBody->setCompleteAfterDateTime('2025-05-22T17:14:52Z');
$requestBody->setSourceTenantId('12345678-1234-1234-1234-123456789012');
$exchangeSettings = new ExchangeOnlineCrossTenantMigrationSettings();
$exchangeSettings->setTargetDeliveryDomain('fabrikam.com');
$exchangeSettings->setSourceEndpoint('EXOHandler');
$requestBody->setExchangeSettings($exchangeSettings);
$requestBody->setResources(['b5b8bc4f-0e36-4ad3-8ddf-248b68260b89', 'ac87d040-a081-426c-a73b-81133f458a29', 	]);
$requestBody->setWorkloads(['Teams', 	]);
$requestBody->setResourceType('Users');

$result = $graphServiceClient->solutions()->migrations()->crossTenantMigrationJobs()->validate()->post($requestBody)->wait();

```