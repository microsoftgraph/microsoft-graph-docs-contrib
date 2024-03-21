---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChannelItemRequestBuilderGetRequestConfiguration();
$queryParameters = ChannelItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["summary"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->get($requestConfiguration)->wait();

```