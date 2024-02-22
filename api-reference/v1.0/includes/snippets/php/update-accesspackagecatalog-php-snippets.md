---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageCatalog();
$requestBody->setDisplayName('Catalog One');

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->catalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->patch($requestBody)->wait();

```