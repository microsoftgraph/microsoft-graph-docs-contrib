---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CloudFlareWebApplicationFirewallProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudFlareWebApplicationFirewallProvider();
$requestBody->setOdataType('#microsoft.graph.cloudFlareWebApplicationFirewallProvider');
$requestBody->setDisplayName('Cloudflare Provider Example');
$requestBody->setZoneId('11111111111111111111111111111111');
$requestBody->setApiToken('cf_example_token_123');

$result = $graphServiceClient->identity()->riskPrevention()->webApplicationFirewallProviders()->post($requestBody)->wait();

```