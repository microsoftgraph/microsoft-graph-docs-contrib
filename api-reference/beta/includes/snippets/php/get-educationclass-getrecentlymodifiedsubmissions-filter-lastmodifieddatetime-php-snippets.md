---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Education\Classes\Item\GetRecentlyModifiedSubmissions\GetRecentlyModifiedSubmissionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetRecentlyModifiedSubmissionsRequestBuilderGetRequestConfiguration();
$queryParameters = GetRecentlyModifiedSubmissionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "lastModifiedDateTime lt 2025-04-29T15:48:31.3785886Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->getRecentlyModifiedSubmissions()->get($requestConfiguration)->wait();

```