---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ActivatePostRequestBody();
$subjectsUser1 = new User();
$subjectsUser1->setId('8cdf25a8-c9d2-423e-a03d-3f39f03c3e97');


$subjectsArray []= $subjectsUser1;
$subjectsUser2 = new User();
$subjectsUser2->setId('ea09ac2e-77e3-4134-85f2-25ccf3c33387');


$subjectsArray []= $subjectsUser2;
$requestBody->setSubjects($subjectsArray);




$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->identityGovernanceActivate()->post($requestBody);


```