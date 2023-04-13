---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GroupsRequestBuilderGetRequestConfiguration();

$queryParameters = new GroupsRequestBuilderGetQueryParameters();
$queryParameters->filter = "graphlearn_courses/courseId eq ‘123’";
$queryParameters->select = ["displayName","id","description","graphlearn_courses"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->groups()->get($requestConfiguration);


```