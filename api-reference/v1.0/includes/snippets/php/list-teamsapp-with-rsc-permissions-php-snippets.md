---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\AppCatalogs\TeamsApps\TeamsAppsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsAppsRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsAppsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "id eq 'a5228c26-a9ae-4702-90e0-79a5246d2f7d'";
$queryParameters->expand = ["appDefinitions(\$select=id,authorization)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->appCatalogs()->teamsApps()->get($requestConfiguration)->wait();

```