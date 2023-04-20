---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Channel();
$requestBody->setDisplayName('TestChannelModeration');

$requestBody->setDescription('Test channel moderation.');

$requestBody->setMembershipType(new ChannelMembershipType('standard'));

$moderationSettings = new ChannelModerationSettings();
$moderationSettings->setUserNewMessageRestriction(new UserNewMessageRestriction('everyoneexceptguests'));

$moderationSettings->setReplyRestriction(new ReplyRestriction('everyone'));

$moderationSettings->setAllowNewMessageFromBots(true);

$moderationSettings->setAllowNewMessageFromConnectors(true);


$requestBody->setModerationSettings($moderationSettings);


$result = $graphServiceClient->teamsById('team-id')->channels()->post($requestBody);


```