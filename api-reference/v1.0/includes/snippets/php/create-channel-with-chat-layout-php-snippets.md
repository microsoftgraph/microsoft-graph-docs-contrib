---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Channel;
use Microsoft\Graph\Generated\Models\ChannelMembershipType;
use Microsoft\Graph\Generated\Models\ChannelLayoutType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Channel();
$requestBody->setDisplayName('Project Collaboration');
$requestBody->setDescription('Discussion space for project team collaboration');
$requestBody->setMembershipType(new ChannelMembershipType('standard'));
$requestBody->setLayoutType(new ChannelLayoutType('chat'));

$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->post($requestBody)->wait();

```