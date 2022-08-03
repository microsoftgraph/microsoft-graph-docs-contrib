---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RiskDetectionsRequestBuilderGetRequestConfiguration();

$queryParameters = new RiskDetectionsRequestBuilderGetQueryParameters();
$queryParameters->filter = "riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityProtection()->riskDetections()->get($requestConfiguration);


```