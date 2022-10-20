---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new EventsRequestBuilderGetRequestConfiguration();

$queryParameters = new EventsRequestBuilderGetQueryParameters();
$queryParameters->filter = "startsWith(subject,'All')";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->calendar()->events()->get($requestConfiguration);


```