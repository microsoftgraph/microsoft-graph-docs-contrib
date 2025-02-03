---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\B2xUserFlows\Item\ApiConnectorConfiguration\ApiConnectorConfigurationRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ApiConnectorConfigurationRequestBuilderGetRequestConfiguration();
$queryParameters = ApiConnectorConfigurationRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["postFederationSignup","postAttributeCollection"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->b2xUserFlows()->byB2xIdentityUserFlowId('b2xIdentityUserFlow-id')->apiConnectorConfiguration()->get($requestConfiguration)->wait();

```