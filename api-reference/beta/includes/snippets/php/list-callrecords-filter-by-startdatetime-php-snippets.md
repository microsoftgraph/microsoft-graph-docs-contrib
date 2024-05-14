---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Communications\CallRecords\CallRecordsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CallRecordsRequestBuilderGetRequestConfiguration();
$queryParameters = CallRecordsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "startDateTime ge 2023-09-25T09:25:00Z and startDateTime lt 2023-09-25T09:30:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->communications()->callRecords()->get($requestConfiguration)->wait();

```