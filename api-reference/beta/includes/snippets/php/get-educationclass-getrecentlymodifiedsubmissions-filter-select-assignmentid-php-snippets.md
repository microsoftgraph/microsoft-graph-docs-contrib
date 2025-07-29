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
$queryParameters->filter = "assignmentId eq 'b20d6737-f88e-4892-8174-73aa26d18784'";
$queryParameters->select = ["LastModifiedDateTime","status"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->getRecentlyModifiedSubmissions()->get($requestConfiguration)->wait();

```