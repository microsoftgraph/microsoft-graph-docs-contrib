---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PrivilegedApproval();
$requestBody->setApprovalState(new ApprovalState('approvalstate-value'));

$requestBody->setApproverReason('approverReason-value');



$result = $graphServiceClient->privilegedApprovalById('privilegedApproval-id')->patch($requestBody);


```