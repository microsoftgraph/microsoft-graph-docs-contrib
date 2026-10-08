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
				'id' => 'abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459371237_0cdd8963-aaaa-4632-a1f2-aaaa7230aaaa',
			],
			[
				'id' => 'abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_388131231459357126_aaaa8963-1c30-4632-aaaa-ac96723069cb',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceActivateWithScope()->post($requestBody)->wait();

```