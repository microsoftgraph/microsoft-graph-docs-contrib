---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackage;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackage();
$requestBody->setCatalogId('aa2f6514-3232-46e7-a08a-2411ad8d7128');
$requestBody->setDisplayName('sales reps');
$requestBody->setDescription('outside sales representatives');

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->post($requestBody)->wait();

```