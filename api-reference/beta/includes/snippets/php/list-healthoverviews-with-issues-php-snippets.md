---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new HealthOverviewsRequestBuilderGetRequestConfiguration();
$queryParameters = HealthOverviewsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["issues"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->serviceAnnouncement()->healthOverviews()->get($requestConfiguration)->wait();

```