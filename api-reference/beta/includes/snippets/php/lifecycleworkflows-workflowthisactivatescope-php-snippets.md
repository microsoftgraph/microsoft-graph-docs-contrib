---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\MicrosoftGraphIdentityGovernanceActivateWithScope\ActivateWithScopePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivateWithScopePostRequestBody();
$additionalData = [
	'subjects' => [
			[
				'id' => '8cdf25a8-c9d2-423e-a03d-3f39f03c3e97',
			],
			[
				'id' => 'ea09ac2e-77e3-4134-85f2-25ccf3c33387',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceActivateWithScope()->post($requestBody)->wait();

```