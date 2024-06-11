---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PermissionGrantPreApprovalPolicy;
use Microsoft\Graph\Beta\Generated\Models\PreApprovalDetail;
use Microsoft\Graph\Beta\Generated\Models\ResourceScopeType;
use Microsoft\Graph\Beta\Generated\Models\AllScopeSensitivityLabels;
use Microsoft\Graph\Beta\Generated\Models\LabelKind;
use Microsoft\Graph\Beta\Generated\Models\PreApprovedPermissions;
use Microsoft\Graph\Beta\Generated\Models\PermissionKind;
use Microsoft\Graph\Beta\Generated\Models\PermissionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PermissionGrantPreApprovalPolicy();
$conditionsPreApprovalDetail1 = new PreApprovalDetail();
$conditionsPreApprovalDetail1->setScopeType(new ResourceScopeType('group'));
$conditionsPreApprovalDetail1SensitivityLabels = new AllScopeSensitivityLabels();
$conditionsPreApprovalDetail1SensitivityLabels->setOdataType('#microsoft.graph.allScopeSensitivityLabels');
$conditionsPreApprovalDetail1SensitivityLabels->setLabelKind(new LabelKind('all'));
$conditionsPreApprovalDetail1->setSensitivityLabels($conditionsPreApprovalDetail1SensitivityLabels);
$conditionsPreApprovalDetail1Permissions = new PreApprovedPermissions();
$conditionsPreApprovalDetail1Permissions->setOdataType('#microsoft.graph.allPermissionsOnResourceApp');
$conditionsPreApprovalDetail1Permissions->setPermissionKind(new PermissionKind('allPermissionsOnResourceApp'));
$conditionsPreApprovalDetail1Permissions->setPermissionType(new PermissionType('application'));
$additionalData = [
	'resourceApplicationId' => '00000003-0000-0000-c000-000000000000',
];
$conditionsPreApprovalDetail1Permissions->setAdditionalData($additionalData);
$conditionsPreApprovalDetail1->setPermissions($conditionsPreApprovalDetail1Permissions);
$conditionsArray []= $conditionsPreApprovalDetail1;
$requestBody->setConditions($conditionsArray);


$result = $graphServiceClient->policies()->permissionGrantPreApprovalPolicies()->post($requestBody)->wait();

```