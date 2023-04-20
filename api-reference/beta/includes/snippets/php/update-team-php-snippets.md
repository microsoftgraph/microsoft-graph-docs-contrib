---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Team();
$requestBody->setIsMembershipLimitedToOwners(true);

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
$discoverySettings = new TeamDiscoverySettings();
$discoverySettings->setShowInTeamsSearchAndSuggestions(true);


$requestBody->setDiscoverySettings($discoverySettings);


$result = $graphServiceClient->teamsById('team-id')->patch($requestBody);


```