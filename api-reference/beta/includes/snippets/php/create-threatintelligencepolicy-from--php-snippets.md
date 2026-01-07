---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\ThreatIntelligencePolicy;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\ThreatIntelligencePolicySettings;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\ThreatIntelligenceAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ThreatIntelligencePolicy();
$requestBody->setOdataType('#microsoft.graph.networkaccess.threatIntelligencePolicy');
$requestBody->setName('Malicious Domains Policy');
$requestBody->setDescription('Policy to block traffic to known malicious domains based on threat intelligence');
$requestBody->setVersion('1.0');
$settings = new ThreatIntelligencePolicySettings();
$settings->setOdataType('microsoft.graph.networkaccess.threatIntelligencePolicySettings');
$settings->setDefaultAction(new ThreatIntelligenceAction('block'));
$requestBody->setSettings($settings);

$result = $graphServiceClient->networkAccess()->threatIntelligencePolicies()->post($requestBody)->wait();

```