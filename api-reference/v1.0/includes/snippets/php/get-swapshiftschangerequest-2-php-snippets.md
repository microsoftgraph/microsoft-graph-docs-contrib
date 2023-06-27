---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->deltatoken = "w0vf2jHg2mBXU-I2AK0FSWl0dopNtG8u5YoM";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->todo()->lists()->byListId('todoTaskList-id')->tasks()->delta()->get($requestConfiguration);


```