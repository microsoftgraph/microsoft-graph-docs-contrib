---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudFlareWebApplicationFirewallProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudFlareWebApplicationFirewallProvider();
$requestBody->setOdataType('#microsoft.graph.cloudFlareWebApplicationFirewallProvider');
$requestBody->setDisplayName('cloudFlare');

$result = $graphServiceClient->identity()->riskPrevention()->webApplicationFirewallProviders()->byWebApplicationFirewallProviderId('webApplicationFirewallProvider-id')->patch($requestBody)->wait();

```