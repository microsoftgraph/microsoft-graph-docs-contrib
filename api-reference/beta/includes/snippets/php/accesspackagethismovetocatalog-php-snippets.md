---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MoveToCatalogPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MoveToCatalogPostRequestBody();
$requestBody->setCatalogId('3301434b-99bd-46be-923b-d762c30c8e8b');

$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->moveToCatalog()->post($requestBody)->wait();

```