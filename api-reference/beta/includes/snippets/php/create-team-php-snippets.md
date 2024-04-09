---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Team;
use Microsoft\Graph\Generated\Models\TeamMemberSettings;
use Microsoft\Graph\Generated\Models\TeamMessagingSettings;
use Microsoft\Graph\Generated\Models\TeamFunSettings;
use Microsoft\Graph\Generated\Models\TeamDiscoverySettings;


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
$discoverySettings = new TeamDiscoverySettings();
$discoverySettings->setShowInTeamsSearchAndSuggestions(true);
$requestBody->setDiscoverySettings($discoverySettings);

$result = $graphServiceClient->groups()->byGroupId('group-id')->team()->put($requestBody)->wait();

```