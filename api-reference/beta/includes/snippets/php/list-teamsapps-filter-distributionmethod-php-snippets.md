---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsAppsRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsAppsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "distributionMethod eq 'organization'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->appCatalogs()->teamsApps()->get($requestConfiguration)->wait();

```