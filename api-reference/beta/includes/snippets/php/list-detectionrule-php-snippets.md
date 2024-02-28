---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DetectionRulesRequestBuilderGetRequestConfiguration();
$queryParameters = DetectionRulesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 3;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->rules()->detectionRules()->get($requestConfiguration)->wait();

```