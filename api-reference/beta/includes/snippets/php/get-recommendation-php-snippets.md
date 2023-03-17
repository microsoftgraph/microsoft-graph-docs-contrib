---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RecommendationsRequestBuilderGetRequestConfiguration();

$queryParameters = new RecommendationsRequestBuilderGetQueryParameters();
$queryParameters->filter = "recommendationType eq 'turnOffPerUserMFA'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->directory()->recommendations()->get($requestConfiguration);


```