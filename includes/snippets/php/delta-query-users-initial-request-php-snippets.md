---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();

$queryParameters = new DeltaRequestBuilderGetQueryParameters();
$queryParameters->select = ["displayName","givenName","surname"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->users()->delta()->get($requestConfiguration);


```