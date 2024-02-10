---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AllChannelsRequestBuilderGetRequestConfiguration();
$queryParameters = AllChannelsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "membershipType eq 'shared'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->allChannels()->get($requestConfiguration)->wait();

```