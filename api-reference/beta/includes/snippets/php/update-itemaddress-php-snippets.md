---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ItemAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemAddress();
$requestBody->setAllowedAudiences(new AllowedAudiences('me'));
$requestBody->setDisplayName('Secret Hideout');

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->addresses()->byItemAddressId('itemAddress-id')->patch($requestBody)->wait();

```