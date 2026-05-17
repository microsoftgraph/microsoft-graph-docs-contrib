---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Channel;
use Microsoft\Graph\Generated\Models\ChannelLayoutType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Channel();
$requestBody->setLayoutType(new ChannelLayoutType('post'));

$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->patch($requestBody)->wait();

```