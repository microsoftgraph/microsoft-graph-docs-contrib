---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApprovalStage();
$requestBody->setReviewResult('Approve');

$requestBody->setJustification('OK');



$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentApprovals()->byApprovalId('approval-id')->stages()->byApprovalStageId('approvalStage-id')->patch($requestBody);


```