---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\Channels\Item\Tabs\Item\TeamsTabItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsTabItemRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsTabItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["teamsApp"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->tabs()->byTeamsTabId('teamsTab-id')->get($requestConfiguration)->wait();

```