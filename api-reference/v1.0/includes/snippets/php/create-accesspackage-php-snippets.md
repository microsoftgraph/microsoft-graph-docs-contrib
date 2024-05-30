---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackage;
use Microsoft\Graph\Generated\Models\AccessPackageCatalog;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackage();
$requestBody->setDisplayName('sales reps');
$requestBody->setDescription('outside sales representatives');
$requestBody->setIsHidden(false);
$catalog = new AccessPackageCatalog();
$catalog->setId('66584aae-98bb-48cc-9458-7bee5d2a6577');
$requestBody->setCatalog($catalog);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->post($requestBody)->wait();

```