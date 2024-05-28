---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\B2cUserFlows\Item\Languages\LanguagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new LanguagesRequestBuilderGetRequestConfiguration();
$queryParameters = LanguagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isEnabled eq true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->languages()->get($requestConfiguration)->wait();

```