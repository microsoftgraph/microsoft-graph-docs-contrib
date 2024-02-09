---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TimeCardsRequestBuilderGetRequestConfiguration();
$queryParameters = TimeCardsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 2;
$queryParameters->filter = "state eq 'clockedOut'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->get($requestConfiguration)->wait();

```