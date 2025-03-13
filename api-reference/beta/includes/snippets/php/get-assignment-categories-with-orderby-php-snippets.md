---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Education\Classes\Item\Assignments\Item\Categories\CategoriesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CategoriesRequestBuilderGetRequestConfiguration();
$queryParameters = CategoriesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["id"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->categories()->get($requestConfiguration)->wait();

```