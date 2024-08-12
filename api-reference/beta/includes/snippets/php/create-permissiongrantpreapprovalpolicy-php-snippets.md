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
use Microsoft\Graph\Beta\Generated\Models\AllPreApprovedPermissions;
use Microsoft\Graph\Beta\Generated\Models\PermissionKind;
use Microsoft\Graph\Beta\Generated\Models\PermissionType;
use Microsoft\Graph\Beta\Generated\Models\EnumeratedPreApprovedPermissions;
use Microsoft\Graph\Beta\Generated\Models\EnumeratedScopeSensitivityLabels;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PermissionGrantPreApprovalPolicy();
$conditionsPreApprovalDetail1 = new PreApprovalDetail();
$conditionsPreApprovalDetail1->setScopeType(new ResourceScopeType('chat'));
$conditionsPreApprovalDetail1SensitivityLabels = new AllScopeSensitivityLabels();
$conditionsPreApprovalDetail1SensitivityLabels->setOdataType('#microsoft.graph.allScopeSensitivityLabels');
$conditionsPreApprovalDetail1SensitivityLabels->setLabelKind(new LabelKind('all'));
$conditionsPreApprovalDetail1->setSensitivityLabels($conditionsPreApprovalDetail1SensitivityLabels);
$conditionsPreApprovalDetail1Permissions = new AllPreApprovedPermissions();
$conditionsPreApprovalDetail1Permissions->setOdataType('#microsoft.graph.allPreApprovedPermissions');
$conditionsPreApprovalDetail1Permissions->setPermissionKind(new PermissionKind('all'));
$conditionsPreApprovalDetail1Permissions->setPermissionType(new PermissionType('application'));
$conditionsPreApprovalDetail1->setPermissions($conditionsPreApprovalDetail1Permissions);
$conditionsArray []= $conditionsPreApprovalDetail1;
$conditionsPreApprovalDetail2 = new PreApprovalDetail();
$conditionsPreApprovalDetail2->setScopeType(new ResourceScopeType('group'));
$conditionsPreApprovalDetail2Permissions = new EnumeratedPreApprovedPermissions();
$conditionsPreApprovalDetail2Permissions->setOdataType('#microsoft.graph.enumeratedPreApprovedPermissions');
$conditionsPreApprovalDetail2Permissions->setPermissionKind(new PermissionKind('enumerated'));
$conditionsPreApprovalDetail2Permissions->setPermissionType(new PermissionType('application'));
$conditionsPreApprovalDetail2Permissions->setResourceApplicationId('00000003-0000-0000-c000-000000000000');
$conditionsPreApprovalDetail2Permissions->setPermissionIds(['134483aa-3dda-4d65-ac91-b8dda1417875', '9d33613d-f855-483b-bca7-ea63ac9f5485', 	]);
$conditionsPreApprovalDetail2->setPermissions($conditionsPreApprovalDetail2Permissions);
$additionalData = [
	'scopeSensitivityLabels' => [
		'@odata.type' => 'microsoft.graph.enumeratedScopeSensitivityLabels',
		'labelKind' => new LabelKind('enumerated'),
		'sensitivityLabels' => [
'd9c43deb-f3e1-4422-9fd6-ccf22a3206b8', 'c99dade2-aa54-4890-ac1c-a146fa26bd1e', ],
	],
];
$conditionsPreApprovalDetail2->setAdditionalData($additionalData);
$conditionsArray []= $conditionsPreApprovalDetail2;
$requestBody->setConditions($conditionsArray);


$result = $graphServiceClient->policies()->permissionGrantPreApprovalPolicies()->post($requestBody)->wait();

```