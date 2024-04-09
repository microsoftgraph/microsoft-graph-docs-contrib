---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OutlookCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookCategory();
$requestBody->setColor(new CategoryColor('preset15'));

$result = $graphServiceClient->me()->outlook()->masterCategories()->byOutlookCategoryId('outlookCategory-id')->patch($requestBody)->wait();

```