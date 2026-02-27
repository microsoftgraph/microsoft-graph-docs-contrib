---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AkamaiWebApplicationFirewallProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AkamaiWebApplicationFirewallProvider();
$requestBody->setOdataType('#microsoft.graph.akamaiWebApplicationFirewallProvider');
$requestBody->setDisplayName('Akamai Provider Example');
$requestBody->setHostPrefix('akab-exampleprefix');
$requestBody->setClientSecret('akamai_example_secret_123');
$requestBody->setClientToken('akamai_example_token_456');
$requestBody->setAccessToken('akamai_example_token_789');

$result = $graphServiceClient->identity()->riskPrevention()->webApplicationFirewallProviders()->post($requestBody)->wait();

```