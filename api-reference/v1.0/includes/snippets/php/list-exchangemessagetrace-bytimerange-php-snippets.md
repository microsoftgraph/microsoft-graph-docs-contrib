---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Admin\Exchange\Tracing\MessageTraces\MessageTracesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessageTracesRequestBuilderGetRequestConfiguration();
$queryParameters = MessageTracesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "receivedDateTime ge 2026-01-20T00:00:00Z and receivedDateTime le 2026-01-23T00:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->exchange()->tracing()->messageTraces()->get($requestConfiguration)->wait();

```