---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new EventsRequestBuilderGetRequestConfiguration();

$queryParameters = new EventsRequestBuilderGetQueryParameters();
$queryParameters->orderby = ["createdDateTime"];
$queryParameters->skip = 20;

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->events()->get($requestConfiguration);


```