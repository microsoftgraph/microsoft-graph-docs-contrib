---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Team();
$memberSettings = new TeamMemberSettings();
$memberSettings->setAllowCreateUpdateChannels(true);


$requestBody->setMemberSettings($memberSettings);
$messagingSettings = new TeamMessagingSettings();
$messagingSettings->setAllowUserEditMessages(true);

$messagingSettings->setAllowUserDeleteMessages(true);


$requestBody->setMessagingSettings($messagingSettings);
$funSettings = new TeamFunSettings();
$funSettings->setAllowGiphy(true);

$funSettings->setGiphyContentRating(new GiphyRatingType('strict'));


$requestBody->setFunSettings($funSettings);


$result = $graphServiceClient->teams()->byTeamId('team-id')->patch($requestBody);


```