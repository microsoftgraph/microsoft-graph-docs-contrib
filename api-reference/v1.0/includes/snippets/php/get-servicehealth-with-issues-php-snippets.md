---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Admin\ServiceAnnouncement\HealthOverviews\Item\ServiceHealthItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ServiceHealthItemRequestBuilderGetRequestConfiguration();
$queryParameters = ServiceHealthItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["issues"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->serviceAnnouncement()->healthOverviews()->byServiceHealthId('serviceHealth-id')->get($requestConfiguration)->wait();

```