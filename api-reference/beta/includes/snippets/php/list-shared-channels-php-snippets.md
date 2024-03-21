---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChannelsRequestBuilderGetRequestConfiguration();
$queryParameters = ChannelsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "membershipType eq 'shared'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->get($requestConfiguration)->wait();

```