---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Education\Classes\Item\Assignments\Item\Resources\Item\EducationAssignmentResourceItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EducationAssignmentResourceItemRequestBuilderGetRequestConfiguration();
$queryParameters = EducationAssignmentResourceItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["dependentResources"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->resources()->byEducationAssignmentResourceId('educationAssignmentResource-id')->get($requestConfiguration)->wait();

```