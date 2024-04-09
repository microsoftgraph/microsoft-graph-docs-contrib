---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Education\Classes\Item\Assignments\Item\Submissions\Item\Resources\ResourcesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ResourcesRequestBuilderGetRequestConfiguration();
$queryParameters = ResourcesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = " id eq 'c4682401-6866-4962-94d9-7499782a13e9'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->resources()->get($requestConfiguration)->wait();

```