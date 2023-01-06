---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ServicePrincipalRiskDetectionsRequestBuilderGetRequestConfiguration();

$queryParameters = new ServicePrincipalRiskDetectionsRequestBuilderGetQueryParameters();
$queryParameters->filter = "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityProtection()->servicePrincipalRiskDetections()->get($requestConfiguration);


```