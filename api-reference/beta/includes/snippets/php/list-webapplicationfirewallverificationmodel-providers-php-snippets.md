---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\RiskPrevention\WebApplicationFirewallVerifications\WebApplicationFirewallVerificationsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WebApplicationFirewallVerificationsRequestBuilderGetRequestConfiguration();
$queryParameters = WebApplicationFirewallVerificationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["provider"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->riskPrevention()->webApplicationFirewallVerifications()->get($requestConfiguration)->wait();

```