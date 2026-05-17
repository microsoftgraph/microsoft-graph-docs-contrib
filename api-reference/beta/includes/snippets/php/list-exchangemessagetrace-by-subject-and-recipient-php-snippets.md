---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Exchange\Tracing\MessageTraces\MessageTracesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessageTracesRequestBuilderGetRequestConfiguration();
$queryParameters = MessageTracesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "contains(subject, 'Weekly digest') and recipientAddress eq 'test@contoso.com'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->exchange()->tracing()->messageTraces()->get($requestConfiguration)->wait();

```