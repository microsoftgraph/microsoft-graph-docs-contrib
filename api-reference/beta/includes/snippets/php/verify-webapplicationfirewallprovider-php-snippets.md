---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\RiskPrevention\WebApplicationFirewallProviders\Item\Verify\VerifyRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Identity\RiskPrevention\WebApplicationFirewallProviders\Item\Verify\VerifyPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VerifyPostRequestBody();
$requestBody->setHostName('www.contoso.com');
$requestConfiguration = new VerifyRequestBuilderPostRequestConfiguration();
$queryParameters = VerifyRequestBuilderPostRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["provider"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->riskPrevention()->webApplicationFirewallProviders()->byWebApplicationFirewallProviderId('webApplicationFirewallProvider-id')->verify()->post($requestBody, $requestConfiguration)->wait();

```