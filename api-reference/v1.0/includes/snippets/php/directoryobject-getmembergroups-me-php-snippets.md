---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\GetMemberGroups\GetMemberGroupsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetMemberGroupsPostRequestBody();
$requestBody->setSecurityEnabledOnly(true);

$result = $graphServiceClient->me()->getMemberGroups()->post($requestBody)->wait();

```