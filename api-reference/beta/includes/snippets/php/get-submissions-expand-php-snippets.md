---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new SubmissionsRequestBuilderGetRequestConfiguration();
$queryParameters = SubmissionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["outcomes"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classesById('educationClass-id')->assignmentsById('educationAssignment-id')->submissions()->get($requestConfiguration);


```