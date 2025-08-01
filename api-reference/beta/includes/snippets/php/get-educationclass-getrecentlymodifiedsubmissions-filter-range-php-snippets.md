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
$queryParameters->filter = "lastModifiedDateTime gt 2024-08-25T20:45:51.3485047Z and lastModifiedDateTime lt 2024-08-28T20:45:51.3485047Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->getRecentlyModifiedSubmissions()->get($requestConfiguration)->wait();

```