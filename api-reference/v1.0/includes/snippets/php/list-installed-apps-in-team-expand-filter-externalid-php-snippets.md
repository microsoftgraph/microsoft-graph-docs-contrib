---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\InstalledApps\InstalledAppsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new InstalledAppsRequestBuilderGetRequestConfiguration();
$queryParameters = InstalledAppsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["teamsApp","teamsAppDefinition"];
$queryParameters->filter = "teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->installedApps()->get($requestConfiguration)->wait();

```