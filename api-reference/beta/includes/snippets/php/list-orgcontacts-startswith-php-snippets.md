---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ContactsRequestBuilderGetRequestConfiguration();

$queryParameters = new ContactsRequestBuilderGetQueryParameters();
$queryParameters->filter = "startswith(displayName,'A')";
$queryParameters->count = true;
$queryParameters->top = 1;
$queryParameters->orderby = ["displayName"];

$headers = [
'ConsistencyLevel' => 'eventual',
];

$requestConfiguration->queryParameters = $queryParameters;
$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->contacts()->get($requestConfiguration);


```