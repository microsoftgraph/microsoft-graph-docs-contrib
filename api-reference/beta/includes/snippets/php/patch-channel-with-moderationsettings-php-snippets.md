---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Channel();
$requestBody->setDisplayName('UpdateChannelModeration');

$requestBody->setDescription('Update channel moderation.');

$moderationSettings = new ChannelModerationSettings();
$moderationSettings->setUserNewMessageRestriction(new UserNewMessageRestriction('moderators'));

$moderationSettings->setReplyRestriction(new ReplyRestriction('everyone'));

$moderationSettings->setAllowNewMessageFromBots(true);

$moderationSettings->setAllowNewMessageFromConnectors(true);


$requestBody->setModerationSettings($moderationSettings);


$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->patch($requestBody);


```