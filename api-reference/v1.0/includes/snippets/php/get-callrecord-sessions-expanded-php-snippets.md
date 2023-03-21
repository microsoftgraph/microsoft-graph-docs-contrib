---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new SessionsRequestBuilderGetRequestConfiguration();

$queryParameters = new SessionsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["segments"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->communications()->callRecordsById('callRecord-id')->sessions()->get($requestConfiguration);


```