---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RenewGroupPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RenewGroupPostRequestBody();
$requestBody->setGroupId('ffffffff-ffff-ffff-ffff-ffffffffffff');

$result = $graphServiceClient->groupLifecyclePolicies()->renewGroup()->post($requestBody)->wait();

```