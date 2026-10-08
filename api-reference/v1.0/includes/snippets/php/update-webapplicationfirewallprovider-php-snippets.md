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
$requestBody->setDisplayName('String');

$result = $graphServiceClient->identity()->riskPrevention()->webApplicationFirewallProviders()->byWebApplicationFirewallProviderId('webApplicationFirewallProvider-id')->patch($requestBody)->wait();

```