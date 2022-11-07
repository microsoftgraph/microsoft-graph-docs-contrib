---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GroupsRequestBuilderGetRequestConfiguration();

$queryParameters = new GroupsRequestBuilderGetQueryParameters();
$queryParameters->search = "\"displayName:OneVideo OR mail:onevideo\"";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->groups()->get($requestConfiguration);


```