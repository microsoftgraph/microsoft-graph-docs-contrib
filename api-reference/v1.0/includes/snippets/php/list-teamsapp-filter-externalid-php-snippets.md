---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsAppsRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsAppsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->appCatalogs()->teamsApps()->get($requestConfiguration)->wait();

```