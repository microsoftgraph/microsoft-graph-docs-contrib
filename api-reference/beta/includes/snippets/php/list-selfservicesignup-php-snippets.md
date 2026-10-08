---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\AuditLogs\SignUps\SignUpsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SignUpsRequestBuilderGetRequestConfiguration();
$queryParameters = SignUpsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "createdDateTime ge 2024-07-01T00:00:00Z and createdDateTime le 2024-07-14T23:59:59Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->auditLogs()->signUps()->get($requestConfiguration)->wait();

```