---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Team;
use Microsoft\Graph\Beta\Generated\Models\TeamMemberSettings;
use Microsoft\Graph\Beta\Generated\Models\TeamMessagingSettings;
use Microsoft\Graph\Beta\Generated\Models\TeamFunSettings;
use Microsoft\Graph\Beta\Generated\Models\GiphyRatingType;
use Microsoft\Graph\Beta\Generated\Models\TeamDiscoverySettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

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

$result = $graphServiceClient->teams()->byTeamId('team-id')->patch($requestBody)->wait();

```