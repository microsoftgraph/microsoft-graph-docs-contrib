---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\EntitlementManagement\AccessPackageAssignmentRequests\Item\Resume\ResumePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageRequestApprovalStageCallbackConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResumePostRequestBody();
$requestBody->setSource('Contoso.AADProcess');
$requestBody->setType('microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated');
$data = new AccessPackageRequestApprovalStageCallbackConfiguration();
$data->setOdataType('microsoft.graph.accessPackageRequestApprovalStageCallbackConfiguration');
$additionalData = [
	'stage' => 'assignmentRequestCreated',
	'customExtensionStageInstanceId' => '7bf58d34-b3f9-4bae-8deb-abcd25cddea1',
	'customExtensionStageInstanceDetail' => 'Completed.',
];
$data->setAdditionalData($additionalData);
$requestBody->setData($data);

$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->byAccessPackageAssignmentRequestId('accessPackageAssignmentRequest-id')->resume()->post($requestBody)->wait();

```