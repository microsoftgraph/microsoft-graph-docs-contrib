---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


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