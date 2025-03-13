---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OutlookCategory;
use Microsoft\Graph\Beta\Generated\Models\CategoryColor;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookCategory();
$requestBody->setColor(new CategoryColor('preset15'));

$result = $graphServiceClient->me()->outlook()->masterCategories()->byOutlookCategoryId('outlookCategory-id')->patch($requestBody)->wait();

```