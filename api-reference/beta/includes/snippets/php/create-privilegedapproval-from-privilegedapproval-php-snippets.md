---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PrivilegedApproval();
$requestBody->setUserId('userId-value');

$requestBody->setRoleId('roleId-value');

$requestBody->setApprovalType('approvalType-value');

$requestBody->setApprovalState(new ApprovalState('approvalstate-value'));

$requestBody->setApprovalDuration(new \DateInterval('datetime-value'));



$result = $graphServiceClient->privilegedApproval()->post($requestBody);


```