---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new EducationAssignmentRequestBuilderGetRequestConfiguration();

$queryParameters = new EducationAssignmentRequestBuilderGetQueryParameters();
$queryParameters->top = 2;

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->education()->classesById('educationClass-id')->assignmentsById('educationAssignment-id')->get($requestConfiguration);


```