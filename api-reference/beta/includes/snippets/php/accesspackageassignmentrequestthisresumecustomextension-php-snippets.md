---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\EntitlementManagement\AccessPackageAssignmentRequests\Item\Resume\ResumePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionData;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResumePostRequestBody();
$requestBody->setSource('Contoso.CustoEXT');
$requestBody->setType('microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated');
$data = new CustomExtensionData();
$data->setOdataType('microsoft.graph.microsoft.graph.assignmentRequestApprovalStageCallbackData');
$additionalData = [
	'approvalStage' => [
		'durationBeforeAutomaticDenial' => 'P2D',
		'escalationApprovers' => [],
		'fallbackEscalationApprovers' => [],
		'fallbackPrimaryApprovers' => [],
		'isApproverJustificationRequired' => false,
		'isEscalationEnabled' => false,
		'primaryApprovers' => [
				[
					'@@odata.type' => '#microsoft.graph.singleUser',
					'description' => 'Primary approver of access package assignment.',
					'id' => '',
					'isBackup' => false,
				],
			],
	],
	'customExtensionStageInstanceDetail' => 'A approval stage from Logic Apps',
	'customExtensionStageInstanceId' => '@{triggerBody()?[\'CustomExtensionStageInstanceId\']}',
	'stage' => 'assignmentRequestDeterminingApprovalRequirements',
];
$data->setAdditionalData($additionalData);
$requestBody->setData($data);
$requestBody->setSource('LogicApps');
$requestBody->setType('microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated');

$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->byAccessPackageAssignmentRequestId('accessPackageAssignmentRequest-id')->resume()->post($requestBody)->wait();

```