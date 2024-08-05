---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityProtection\ServicePrincipalRiskDetections\ServicePrincipalRiskDetectionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ServicePrincipalRiskDetectionsRequestBuilderGetRequestConfiguration();
$queryParameters = ServicePrincipalRiskDetectionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityProtection()->servicePrincipalRiskDetections()->get($requestConfiguration)->wait();

```