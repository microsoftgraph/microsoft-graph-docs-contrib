---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AssignmentsRequestBuilderGetRequestConfiguration();

$queryParameters = new AssignmentsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["resources"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->education()->classesById('educationClass-id')->assignments()->get($requestConfiguration);


```