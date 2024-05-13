---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Settings\Storage\Quota\QuotaRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new QuotaRequestBuilderGetRequestConfiguration();
$queryParameters = QuotaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["services"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->settings()->storage()->quota()->get($requestConfiguration)->wait();

```