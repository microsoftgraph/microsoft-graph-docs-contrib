---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new B2xUserFlowsRequestBuilderGetRequestConfiguration();
$queryParameters = B2xUserFlowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["identityProviders"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->b2xUserFlows()->get($requestConfiguration)->wait();

```