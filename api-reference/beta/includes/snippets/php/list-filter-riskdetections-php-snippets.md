---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RiskDetectionsRequestBuilderGetRequestConfiguration();
$queryParameters = RiskDetectionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityProtection()->riskDetections()->get($requestConfiguration)->wait();

```