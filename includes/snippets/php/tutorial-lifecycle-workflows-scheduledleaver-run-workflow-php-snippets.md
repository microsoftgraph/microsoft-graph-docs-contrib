---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ActivatePostRequestBody();
$subjectsUser1 = new User();
$subjectsUser1->setId('df744d9e-2148-4922-88a8-633896c1e929');


$subjectsArray []= $subjectsUser1;
$requestBody->setSubjects($subjectsArray);




$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->identityGovernanceActivate()->post($requestBody);


```