---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\AppCatalogs\TeamsApps\TeamsAppsRequestBuilderPostRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsAppsRequestBuilderPostRequestConfiguration();
$queryParameters = TeamsAppsRequestBuilderPostRequestConfiguration::createQueryParameters();
$queryParameters->requiresReview = "true";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->appCatalogs()->teamsApps()->post($requestConfiguration)->wait();

```