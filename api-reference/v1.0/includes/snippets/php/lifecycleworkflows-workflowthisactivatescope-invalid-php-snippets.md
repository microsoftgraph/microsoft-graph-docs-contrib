---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\MicrosoftGraphIdentityGovernanceActivateWithScope\ActivateWithScopePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivateWithScopePostRequestBody();
$additionalData = [
	'subjects' => [
			[
				'id' => '2ea4c363-4b85-4529-b2ec-53b64308f39f',
			],
			[
				'id' => '44fc5392-9485-4348-871e-2ea17cc0a1b8',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceActivateWithScope()->post($requestBody)->wait();

```