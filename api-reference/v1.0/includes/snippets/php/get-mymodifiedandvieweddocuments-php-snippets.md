---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UsedRequestBuilderGetRequestConfiguration();
$queryParameters = UsedRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["LastUsed/LastAccessedDateTime desc"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->insights()->used()->get($requestConfiguration);


```