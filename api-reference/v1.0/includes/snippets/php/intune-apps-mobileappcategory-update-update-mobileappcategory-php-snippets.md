---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MobileAppCategory();
$requestBody->setOdataType('#microsoft.graph.mobileAppCategory');
$requestBody->setDisplayName('Display Name value');

$result = $graphServiceClient->deviceAppManagement()->mobileAppCategories()->byMobileAppCategoryId('mobileAppCategory-id')->patch($requestBody)->wait();

```