---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ApiConnectorConfigurationRequestBuilderGetRequestConfiguration();
$queryParameters = ApiConnectorConfigurationRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["postFederationSignup","postAttributeCollection"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->b2xUserFlows()->byB2xIdentityUserFlowId('b2xIdentityUserFlow-id')->apiConnectorConfiguration()->get($requestConfiguration)->wait();

```