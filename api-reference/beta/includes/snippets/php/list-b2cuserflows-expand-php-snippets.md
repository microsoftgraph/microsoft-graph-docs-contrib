---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\B2cUserFlows\B2cUserFlowsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new B2cUserFlowsRequestBuilderGetRequestConfiguration();
$queryParameters = B2cUserFlowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["identityProviders"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->b2cUserFlows()->get($requestConfiguration)->wait();

```