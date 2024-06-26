---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\Channels\Item\Tabs\TabsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TabsRequestBuilderGetRequestConfiguration();
$queryParameters = TabsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["teamsApp"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->tabs()->get($requestConfiguration)->wait();

```