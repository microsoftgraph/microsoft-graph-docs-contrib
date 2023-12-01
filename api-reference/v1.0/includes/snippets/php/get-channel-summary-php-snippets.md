---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChannelItemRequestBuilderGetRequestConfiguration();
$queryParameters = ChannelItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["summary"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->get($requestConfiguration)->wait();

```