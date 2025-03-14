---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teams\Item\Channels\ChannelsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChannelsRequestBuilderGetRequestConfiguration();
$queryParameters = ChannelsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "membershipType eq 'private'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->get($requestConfiguration)->wait();

```