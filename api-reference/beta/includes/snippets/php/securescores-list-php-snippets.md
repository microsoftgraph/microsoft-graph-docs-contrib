---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\SecureScores\SecureScoresRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SecureScoresRequestBuilderGetRequestConfiguration();
$queryParameters = SecureScoresRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 1;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->secureScores()->get($requestConfiguration)->wait();

```