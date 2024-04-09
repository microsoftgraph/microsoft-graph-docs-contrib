---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OutlookCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookCategory();
$requestBody->setDisplayName('Project expenses');
$requestBody->setColor(new CategoryColor('preset9'));

$result = $graphServiceClient->me()->outlook()->masterCategories()->post($requestBody)->wait();

```