---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new SecureScoresRequestBuilderGetRequestConfiguration();

$queryParameters = new SecureScoresRequestBuilderGetQueryParameters();
$queryParameters->top = 1;

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->security()->secureScores()->get($requestConfiguration);


```