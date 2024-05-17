---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GetCachedReportPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetCachedReportPostRequestBody();
$requestBody->setId('Id value');
$requestBody->setSelect(['Select value', 	]);
$requestBody->setSearch('Search value');
$requestBody->setGroupBy(['Group By value', 	]);
$requestBody->setOrderBy(['Order By value', 	]);
$requestBody->setSkip(4);
$requestBody->setTop(3);

$graphServiceClient->deviceManagement()->reports()->getCachedReport()->post($requestBody)->wait();

```