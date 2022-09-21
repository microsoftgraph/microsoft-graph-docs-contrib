---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AssignmentsRequestBuilderGetRequestConfiguration();

$queryParameters = new AssignmentsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["submissions"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->education()->usersById('educationUser-id')->assignments()->get($requestConfiguration);


```