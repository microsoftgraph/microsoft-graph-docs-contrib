---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UserRequestBuilderGetRequestConfiguration();

$queryParameters = new UserRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","displayName","extkmpdyld2_graphLearnCourses"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->usersById('user-id')->get($requestConfiguration);


```