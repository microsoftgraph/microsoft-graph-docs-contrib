---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsAppsRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsAppsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["appDefinitions(\$expand=dashboardCards)"];
$queryParameters->filter = "appDefinitions/any(a:a/dashboardCards/\$count ne 0)";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->appCatalogs()->teamsApps()->get($requestConfiguration)->wait();

```