---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsTabRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsTabRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["teamsApp"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->tabs()->byTeamsTabId('teamsTab-id')->get($requestConfiguration);


```