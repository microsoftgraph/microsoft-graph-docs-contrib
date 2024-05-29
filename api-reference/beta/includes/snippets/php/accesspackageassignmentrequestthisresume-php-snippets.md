---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\EntitlementManagement\AccessPackageAssignmentRequests\Item\Resume\ResumePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageAssignmentRequestCallbackData;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageCustomExtensionStage;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResumePostRequestBody();
$requestBody->setSource('Contoso.SodCheckProcess');
$requestBody->setType('microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated');
$data = new AccessPackageAssignmentRequestCallbackData();
$data->setOdataType('microsoft.graph.accessPackageAssignmentRequestCallbackData');
$data->setStage(new AccessPackageCustomExtensionStage('assignmentRequestCreated'));
$data->setCustomExtensionStageInstanceId('957d0c50-466b-4840-bb5b-c92cea7141ff');
$data->setCustomExtensionStageInstanceDetail('This user is all verified');
$requestBody->setData($data);

$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->byAccessPackageAssignmentRequestId('accessPackageAssignmentRequest-id')->resume()->post($requestBody)->wait();

```