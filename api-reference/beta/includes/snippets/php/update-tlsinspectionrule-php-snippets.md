---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\PolicyRule;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PolicyRule();
$requestBody->setName('Contoso TLS Rule 1 - Updated');
$additionalData = [
	'priority' => 200,
	'description' => 'My TLS rule - Updated',
	'action' => 'bypass',
	'settings' => [
		'status' => 'disabled',
	],
	'matchingConditions' => [
		'destinations' => [
				[
					'@odata.type' => '#microsoft.graph.networkaccess.tlsInspectionFqdnDestination',
					'values' => [
'www.contoso.test-updated.com', '*.contoso.org', ],
				],
			],
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->networkAccess()->tlsInspectionPolicies()->byTlsInspectionPolicyId('tlsInspectionPolicy-id')->policyRules()->byPolicyRuleId('policyRule-id')->patch($requestBody)->wait();

```