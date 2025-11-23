---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\RiskPrevention\WebApplicationFirewallVerifications\Item\WebApplicationFirewallVerificationModelItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WebApplicationFirewallVerificationModelItemRequestBuilderGetRequestConfiguration();
$queryParameters = WebApplicationFirewallVerificationModelItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["provider"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->riskPrevention()->webApplicationFirewallVerifications()->byWebApplicationFirewallVerificationModelId('webApplicationFirewallVerificationModel-id')->get($requestConfiguration)->wait();

```