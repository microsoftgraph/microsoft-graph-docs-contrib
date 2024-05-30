---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ItemAddress;
use Microsoft\Graph\Beta\Generated\Models\AllowedAudiences;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemAddress();
$requestBody->setAllowedAudiences(new AllowedAudiences('me'));
$requestBody->setDisplayName('Secret Hideout');

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->addresses()->byItemAddressId('itemAddress-id')->patch($requestBody)->wait();

```