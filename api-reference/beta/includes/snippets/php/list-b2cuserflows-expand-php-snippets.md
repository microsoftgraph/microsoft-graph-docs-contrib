---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new B2cUserFlowsRequestBuilderGetRequestConfiguration();
$queryParameters = B2cUserFlowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["identityProviders"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->b2cUserFlows()->get($requestConfiguration)->wait();

```