---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CategoriesRequestBuilderGetRequestConfiguration();
$queryParameters = CategoriesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "id eq '74b03ab5-5832-4f99-89f5-d52da13d93f7'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->categories()->get($requestConfiguration)->wait();

```