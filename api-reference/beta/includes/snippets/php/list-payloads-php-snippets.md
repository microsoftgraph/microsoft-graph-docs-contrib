---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\AttackSimulation\Payloads\PayloadsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PayloadsRequestBuilderGetRequestConfiguration();
$queryParameters = PayloadsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "source eq 'Tenant'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->attackSimulation()->payloads()->get($requestConfiguration)->wait();

```