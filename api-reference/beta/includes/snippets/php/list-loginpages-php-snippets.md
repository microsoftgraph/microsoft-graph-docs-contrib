---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\AttackSimulation\LoginPages\LoginPagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new LoginPagesRequestBuilderGetRequestConfiguration();
$queryParameters = LoginPagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "source eq 'tenant'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->attackSimulation()->loginPages()->get($requestConfiguration)->wait();

```