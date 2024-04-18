---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Education\Classes\Item\AssignmentCategories\AssignmentCategoriesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AssignmentCategoriesRequestBuilderGetRequestConfiguration();
$queryParameters = AssignmentCategoriesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "id eq 'd4cb4f68-9136-48d3-9054-c1208ea274f0'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentCategories()->get($requestConfiguration)->wait();

```