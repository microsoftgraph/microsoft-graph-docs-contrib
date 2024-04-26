---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CategoryTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CategoryTemplate();
$requestBody->setOdataType('#microsoft.graph.security.categoryTemplate');
$requestBody->setDisplayName('Accounts Payable');

$result = $graphServiceClient->security()->labels()->categories()->post($requestBody)->wait();

```