---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GroupRequestBuilderGetRequestConfiguration();

$queryParameters = new GroupRequestBuilderGetQueryParameters();
$queryParameters->select = ["displayName","description","mailNickname"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->groupsById('group-id')->get($requestConfiguration);


```