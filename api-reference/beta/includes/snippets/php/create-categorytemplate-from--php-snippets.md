---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CategoryTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CategoryTemplate();
$requestBody->setOdataType('#microsoft.graph.security.categoryTemplate');
$requestBody->setDisplayName('Accounts Payable');

$result = $graphServiceClient->security()->labels()->categories()->post($requestBody)->wait();

```