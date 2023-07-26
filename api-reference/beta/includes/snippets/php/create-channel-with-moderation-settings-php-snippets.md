---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
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


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->post($requestBody);


```