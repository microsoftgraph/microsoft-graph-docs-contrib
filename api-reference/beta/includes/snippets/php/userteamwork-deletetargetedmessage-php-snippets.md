---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\DeleteTargetedMessage\DeleteTargetedMessagePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeleteTargetedMessagePostRequestBody();
$requestBody->setTeamId('3Aeeaa4e946d674c4f8d4dded613780f45@thread.v2');
$requestBody->setChannelId('19:eeaa4e946d674c4f8d4dded613780f45@thread.v2');
$requestBody->setMessageId('1580849738240');

$graphServiceClient->users()->byUserId('user-id')->teamwork()->deleteTargetedMessage()->post($requestBody)->wait();

```