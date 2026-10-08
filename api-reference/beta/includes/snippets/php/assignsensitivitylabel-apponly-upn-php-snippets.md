---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\AssignSensitivityLabel\AssignSensitivityLabelPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\SensitivityLabelAssignmentMethod;
use Microsoft\Graph\Beta\Generated\Models\UserIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignSensitivityLabelPostRequestBody();
$requestBody->setSensitivityLabelId('5feba255-812e-446a-ac59-a7044ef827b5');
$requestBody->setAssignmentMethod(new SensitivityLabelAssignmentMethod('standard'));
$requestBody->setJustificationText('test_justification');
$appliedByUser = new UserIdentity();
$appliedByUser->setUserPrincipalName('adelev@contoso.com');
$requestBody->setAppliedByUser($appliedByUser);

$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->assignSensitivityLabel()->post($requestBody)->wait();

```