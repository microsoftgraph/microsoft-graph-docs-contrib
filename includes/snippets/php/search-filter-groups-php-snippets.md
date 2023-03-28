---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GroupsRequestBuilderGetRequestConfiguration();

$queryParameters = new GroupsRequestBuilderGetQueryParameters();
$queryParameters->filter = "mailEnabled eq true";
$queryParameters->search = "\"displayName:OneVideo\"";

$headers = [
'ConsistencyLevel' => 'eventual',
];

$requestConfiguration->queryParameters = $queryParameters;
$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->groups()->get($requestConfiguration);


```