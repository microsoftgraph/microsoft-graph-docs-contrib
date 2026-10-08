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
$queryParameters->filter = "id eq 'a3f6d2c1-5c3b-4f7a-9d1e-2c8f1b0a6e45'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->exchange()->tracing()->messageTraces()->get($requestConfiguration)->wait();

```