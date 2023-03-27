---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GroupRequestBuilderGetRequestConfiguration();

$queryParameters = new GroupRequestBuilderGetQueryParameters();
$queryParameters->count = true;
$queryParameters->orderby = ["deletedDateTime asc"];
$queryParameters->select = ["id","DisplayName","deletedDateTime"];

$headers = [
'ConsistencyLevel' => 'eventual',
];

$requestConfiguration->queryParameters = $queryParameters;
$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->directory()->deletedItems()->graphGroup()->get($requestConfiguration);


```