---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new EventsRequestBuilderGetRequestConfiguration();
$queryParameters = EventsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["createdDateTime"];
$queryParameters->skip = 20;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->events()->get($requestConfiguration);


```