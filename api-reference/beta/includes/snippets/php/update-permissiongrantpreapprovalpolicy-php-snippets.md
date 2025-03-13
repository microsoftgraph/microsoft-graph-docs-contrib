---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PermissionGrantPreApprovalPolicy;
use Microsoft\Graph\Beta\Generated\Models\PreApprovalDetail;
use Microsoft\Graph\Beta\Generated\Models\ResourceScopeType;
use Microsoft\Graph\Beta\Generated\Models\EnumeratedScopeSensitivityLabels;
use Microsoft\Graph\Beta\Generated\Models\LabelKind;
use Microsoft\Graph\Beta\Generated\Models\AllPreApprovedPermissions;
use Microsoft\Graph\Beta\Generated\Models\PermissionKind;
use Microsoft\Graph\Beta\Generated\Models\PermissionType;
use Microsoft\Graph\Beta\Generated\Models\AllScopeSensitivityLabels;
use Microsoft\Graph\Beta\Generated\Models\EnumeratedPreApprovedPermissions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PermissionGrantPreApprovalPolicy();
$requestBody->setId('71ba13dc-5947-4e59-bcc5-0ad5c339a853');
$requestBody->setDeletedDateTime(null);
$conditionsPreApprovalDetail1 = new PreApprovalDetail();
$conditionsPreApprovalDetail1->setScopeType(new ResourceScopeType('chat'));
$conditionsPreApprovalDetail1SensitivityLabels = new EnumeratedScopeSensitivityLabels();
$conditionsPreApprovalDetail1SensitivityLabels->setOdataType('#microsoft.graph.enumeratedScopeSensitivityLabels');
$conditionsPreApprovalDetail1SensitivityLabels->setLabelKind(new LabelKind('enumerated'));
$conditionsPreApprovalDetail1SensitivityLabels->setSensitivityLabels(['d9c43deb-f3e1-4422-9fd6-ccf22a3206b8', 	]);
$conditionsPreApprovalDetail1->setSensitivityLabels($conditionsPreApprovalDetail1SensitivityLabels);
$conditionsPreApprovalDetail1Permissions = new AllPreApprovedPermissions();
$conditionsPreApprovalDetail1Permissions->setOdataType('#microsoft.graph.allPreApprovedPermissions');
$conditionsPreApprovalDetail1Permissions->setPermissionKind(new PermissionKind('all'));
$conditionsPreApprovalDetail1Permissions->setPermissionType(new PermissionType('application'));
$conditionsPreApprovalDetail1->setPermissions($conditionsPreApprovalDetail1Permissions);
$conditionsArray []= $conditionsPreApprovalDetail1;
$conditionsPreApprovalDetail2 = new PreApprovalDetail();
$conditionsPreApprovalDetail2->setScopeType(new ResourceScopeType('group'));
$conditionsPreApprovalDetail2SensitivityLabels = new AllScopeSensitivityLabels();
$conditionsPreApprovalDetail2SensitivityLabels->setOdataType('#microsoft.graph.allScopeSensitivityLabels');
$conditionsPreApprovalDetail2SensitivityLabels->setLabelKind(new LabelKind('all'));
$conditionsPreApprovalDetail2->setSensitivityLabels($conditionsPreApprovalDetail2SensitivityLabels);
$conditionsPreApprovalDetail2Permissions = new EnumeratedPreApprovedPermissions();
$conditionsPreApprovalDetail2Permissions->setOdataType('#microsoft.graph.enumeratedPreApprovedPermissions');
$conditionsPreApprovalDetail2Permissions->setPermissionKind(new PermissionKind('enumerated'));
$conditionsPreApprovalDetail2Permissions->setResourceApplicationId('00000003-0000-0000-c000-000000000000');
$conditionsPreApprovalDetail2Permissions->setPermissionIds(['134483aa-3dda-4d65-ac91-b8dda1417875', '9d33613d-f855-483b-bca7-ea63ac9f5485', 	]);
$conditionsPreApprovalDetail2Permissions->setPermissionType(new PermissionType('application'));
$conditionsPreApprovalDetail2->setPermissions($conditionsPreApprovalDetail2Permissions);
$conditionsArray []= $conditionsPreApprovalDetail2;
$requestBody->setConditions($conditionsArray);

$additionalData = [
'@odata.context' => 'https://graph.microsoft.com/beta/$metadata#policies/permissionGrantPreApprovalPolicies/$entity',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->policies()->permissionGrantPreApprovalPolicies()->byPermissionGrantPreApprovalPolicyId('permissionGrantPreApprovalPolicy-id')->patch($requestBody)->wait();

```