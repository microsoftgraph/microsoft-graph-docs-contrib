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
$requestBody->setId('a8352c78-90c6-4edd-aaca-9dc4292e7750');
$requestBody->setName('Threat Intel Policy');
$requestBody->setDescription('');
$requestBody->setVersion('1.0.0');
$requestBody->setLastModifiedDateTime(new \DateTime('2025-06-18T17:34:25.8207682Z'));
$settings = new ThreatIntelligencePolicySettings();
$settings->setDefaultAction(new ThreatIntelligenceAction('allow'));
$requestBody->setSettings($settings);

$result = $graphServiceClient->networkAccess()->threatIntelligencePolicies()->byThreatIntelligencePolicyId('threatIntelligencePolicy-id')->patch($requestBody)->wait();

```