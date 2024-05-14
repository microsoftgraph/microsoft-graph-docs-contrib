---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GetMemberObjectsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetMemberObjectsPostRequestBody();
$requestBody->setSecurityEnabledOnly(true);

$result = $graphServiceClient->me()->getMemberObjects()->post($requestBody)->wait();

```