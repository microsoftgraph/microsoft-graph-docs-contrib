---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ThreatAssessmentRequestItemRequestBuilderGetRequestConfiguration();
$queryParameters = ThreatAssessmentRequestItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["results"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->byThreatAssessmentRequestId('threatAssessmentRequest-id')->get($requestConfiguration)->wait();

```