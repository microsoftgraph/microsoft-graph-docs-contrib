---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\TlsInspectionPolicy;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\TlsInspectionPolicySettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TlsInspectionPolicy();
$requestBody->setName('Default TLS Inspection Policy');
$requestBody->setDescription('Policy for inspecting TLS traffic');
$settings = new TlsInspectionPolicySettings();
$additionalData = [
	'defaultAction' => 'bypass',
];
$settings->setAdditionalData($additionalData);
$requestBody->setSettings($settings);

$result = $graphServiceClient->networkAccess()->tlsInspectionPolicies()->post($requestBody)->wait();

```