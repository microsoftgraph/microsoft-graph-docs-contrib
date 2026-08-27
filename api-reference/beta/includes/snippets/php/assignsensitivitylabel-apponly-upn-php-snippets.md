---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\AssignSensitivityLabel\AssignSensitivityLabelPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\SensitivityLabelAssignmentMethod;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignSensitivityLabelPostRequestBody();
$requestBody->setSensitivityLabelId('5feba255-812e-446a-ac59-a7044ef827b5');
$requestBody->setAssignmentMethod(new SensitivityLabelAssignmentMethod('standard'));
$requestBody->setJustificationText('test_justification');
$additionalData = [
	'appliedByUser' => [
		'userPrincipalName' => 'adelev@contoso.com',
	],
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->assignSensitivityLabel()->post($requestBody)->wait();

```