---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UsersRequestBuilderGetRequestConfiguration();

$queryParameters = new UsersRequestBuilderGetQueryParameters();
$queryParameters->count = true;
$queryParameters->select = ["id","displayName","customSecurityAttributes"];
$queryParameters->filter = "startsWith(customSecurityAttributes/Marketing/EmployeeId,'GS')";

$headers = [
'ConsistencyLevel' => 'eventual',
];

$requestConfiguration->queryParameters = $queryParameters;
$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->users()->get($requestConfiguration);


```