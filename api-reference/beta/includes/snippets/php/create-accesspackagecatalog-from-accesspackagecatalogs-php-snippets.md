---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageCatalog;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageCatalog();
$requestBody->setDisplayName('sales');
$requestBody->setDescription('for employees working with sales and outside sales partners');
$requestBody->setIsExternallyVisible(true);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->post($requestBody)->wait();

```