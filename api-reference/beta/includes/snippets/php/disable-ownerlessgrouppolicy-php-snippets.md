---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OwnerlessGroupPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OwnerlessGroupPolicy();
$requestBody->setIsEnabled(false);

$result = $graphServiceClient->policies()->ownerlessGroupPolicy()->patch($requestBody)->wait();

```