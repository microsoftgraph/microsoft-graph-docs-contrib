---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Education\Classes\Item\Assignments\Item\Resources\ResourcesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ResourcesRequestBuilderGetRequestConfiguration();
$queryParameters = ResourcesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "id eq 'bc98d7cd-7cf3-449c-b1b9-3a9683024d4e'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->resources()->get($requestConfiguration)->wait();

```