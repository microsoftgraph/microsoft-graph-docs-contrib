---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Collaboration\AnalyzedEmails\AnalyzedEmailsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AnalyzedEmailsRequestBuilderGetRequestConfiguration();
$queryParameters = AnalyzedEmailsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->startTime = "2024-02-18";
$queryParameters->endTime = "2024-02-20";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->collaboration()->analyzedEmails()->get($requestConfiguration)->wait();

```