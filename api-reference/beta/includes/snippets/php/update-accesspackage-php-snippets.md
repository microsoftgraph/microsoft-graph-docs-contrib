---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackage;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackage();
$requestBody->setDisplayName('Access Package New Name');

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->patch($requestBody)->wait();

```