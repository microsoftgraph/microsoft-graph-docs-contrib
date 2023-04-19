---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new EventsRequestBuilderGetRequestConfiguration();
$queryParameters = EventsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "startsWith(subject,'All')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->calendar()->events()->get($requestConfiguration);


```