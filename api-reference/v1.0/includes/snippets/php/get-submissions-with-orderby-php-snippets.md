---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SubmissionsRequestBuilderGetRequestConfiguration();
$queryParameters = SubmissionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["submittedDateTime"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->get($requestConfiguration)->wait();

```