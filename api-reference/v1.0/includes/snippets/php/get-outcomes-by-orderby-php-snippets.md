---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new OutcomesRequestBuilderGetRequestConfiguration();
$queryParameters = OutcomesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["id"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->outcomes()->get($requestConfiguration)->wait();

```