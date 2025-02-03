---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Channel;
use Microsoft\Graph\Beta\Generated\Models\ChannelMembershipType;
use Microsoft\Graph\Beta\Generated\Models\ChannelModerationSettings;
use Microsoft\Graph\Beta\Generated\Models\UserNewMessageRestriction;
use Microsoft\Graph\Beta\Generated\Models\ReplyRestriction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Channel();
$requestBody->setDisplayName('TestChannelModeration');
$requestBody->setDescription('Test channel moderation.');
$requestBody->setMembershipType(new ChannelMembershipType('standard'));
$moderationSettings = new ChannelModerationSettings();
$moderationSettings->setUserNewMessageRestriction(new UserNewMessageRestriction('everyoneExceptGuests'));
$moderationSettings->setReplyRestriction(new ReplyRestriction('everyone'));
$moderationSettings->setAllowNewMessageFromBots(true);
$moderationSettings->setAllowNewMessageFromConnectors(true);
$requestBody->setModerationSettings($moderationSettings);

$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->post($requestBody)->wait();

```