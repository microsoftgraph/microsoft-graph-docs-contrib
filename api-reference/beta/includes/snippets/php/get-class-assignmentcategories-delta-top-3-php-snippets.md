---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 3;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentCategories()->delta()->get($requestConfiguration)->wait();

```