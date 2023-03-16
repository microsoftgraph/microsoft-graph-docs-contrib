---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();

$queryParameters = new DeltaRequestBuilderGetQueryParameters();
$queryParameters->filter = "isof or isof";
$queryParameters->select = ["microsoft.graph.user/surname","microsoft.graph.group/displayName"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->directoryObjects()->delta()->get($requestConfiguration);


```