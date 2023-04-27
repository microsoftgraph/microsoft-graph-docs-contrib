---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UserRequestBuilderGetRequestConfiguration();
$queryParameters = UserRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["ext55gb1l09_msLearnCourses"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->usersById('user-id')->get($requestConfiguration);


```