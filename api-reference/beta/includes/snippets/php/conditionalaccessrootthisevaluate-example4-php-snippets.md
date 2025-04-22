---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\ConditionalAccess\Evaluate\EvaluatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EvaluatePostRequestBody();
$requestBody->setAppliedPoliciesOnly(true);
$additionalData = [
	'signInIdentity' => [
		'@odata.type' => '#microsoft.graph.servicePrincipalSignIn',
		'servicePrincipalId' => 'c65b94a5-0049-439a-a6fd-bce307077730',
	],
	'signInContext' => [
		'@odata.type' => '#microsoft.graph.applicationContext',
		'includeApplications' => [
'00000003-0000-0ff1-ce00-000000000000', ],
	],
	'signInConditions' => [
		'servicePrincipalRiskLevel' => 'high',
		'country' => 'CA',
		'ipAddress' => '40.77.182.32',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->conditionalAccess()->evaluate()->post($requestBody)->wait();

```