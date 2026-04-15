---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\PolicyRule;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PolicyRule();
$additionalData = [
	'description' => 'Updated rule description',
	'priority' => 200,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->networkAccess()->cloudFirewallPolicies()->byCloudFirewallPolicyId('cloudFirewallPolicy-id')->policyRules()->byPolicyRuleId('policyRule-id')->patch($requestBody)->wait();

```