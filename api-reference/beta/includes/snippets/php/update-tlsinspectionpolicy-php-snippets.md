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
$requestBody->setName('New name TLS Inspection Policy');
$requestBody->setDescription('New description policy for inspecting TLS traffic');
$settings = new TlsInspectionPolicySettings();
$additionalData = [
	'defaultAction' => 'inspect',
];
$settings->setAdditionalData($additionalData);
$requestBody->setSettings($settings);

$result = $graphServiceClient->networkAccess()->tlsInspectionPolicies()->byTlsInspectionPolicyId('tlsInspectionPolicy-id')->patch($requestBody)->wait();

```