---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ThreatAssessmentRequestRequestBuilderGetRequestConfiguration();
$queryParameters = ThreatAssessmentRequestRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["results"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->informationProtection()->threatAssessmentRequestsById('threatAssessmentRequest-id')->get($requestConfiguration);


```