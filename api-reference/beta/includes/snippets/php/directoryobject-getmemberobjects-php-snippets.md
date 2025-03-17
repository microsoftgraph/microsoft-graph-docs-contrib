---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\GetMemberObjects\GetMemberObjectsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetMemberObjectsPostRequestBody();
$requestBody->setSecurityEnabledOnly(true);

$result = $graphServiceClient->me()->getMemberObjects()->post($requestBody)->wait();

```