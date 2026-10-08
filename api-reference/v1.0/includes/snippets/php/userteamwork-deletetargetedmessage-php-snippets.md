---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Teamwork\DeleteTargetedMessage\DeleteTargetedMessagePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeleteTargetedMessagePostRequestBody();
$requestBody->setTeamId('9dda0ae1-e007-4a1d-81ec-2cf4b1274610');
$requestBody->setChannelId('19:eeaa4e946d674c4f8d4dded613780f45@thread.v2');
$requestBody->setMessageId('1580849738240');

$graphServiceClient->users()->byUserId('user-id')->teamwork()->deleteTargetedMessage()->post($requestBody)->wait();

```