---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OwnerlessGroupPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OwnerlessGroupPolicy();
$requestBody->setIsEnabled(false);

$result = $graphServiceClient->policies()->ownerlessGroupPolicy()->patch($requestBody)->wait();

```