---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessReviewPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewPolicy();
$requestBody->setIsGroupOwnerManagementEnabled(true);

$result = $graphServiceClient->policies()->accessReviewPolicy()->patch($requestBody)->wait();

```