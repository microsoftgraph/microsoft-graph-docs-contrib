---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ActivatePostRequestBody();
$subjectsUser1 = new User();
$subjectsUser1->setId('8930f0c7-cdd7-4885-9260-3b4a8111de5c');


$subjectsArray []= $subjectsUser1;
$requestBody->setSubjects($subjectsArray);




$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->identityGovernanceActivate()->post($requestBody);


```