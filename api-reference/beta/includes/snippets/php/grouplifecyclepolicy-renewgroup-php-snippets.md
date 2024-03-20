---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RenewGroupPostRequestBody();
$requestBody->setGroupId('ffffffff-ffff-ffff-ffff-ffffffffffff');

$result = $graphServiceClient->groupLifecyclePolicies()->renewGroup()->post($requestBody)->wait();

```