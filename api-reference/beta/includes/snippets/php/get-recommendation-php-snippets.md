---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RecommendationsRequestBuilderGetRequestConfiguration();

$queryParameters = new RecommendationsRequestBuilderGetQueryParameters();
$queryParameters->filter = "id eq '0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA'";
$queryParameters->expand = ["impactedResources"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->directory()->recommendations()->get($requestConfiguration);


```