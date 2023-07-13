---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ResumePostRequestBody();
$data = new CustomTaskExtensionCallbackData();
$data->setOperationStatus(new CustomTaskExtensionOperationStatus('completed'));


$requestBody->setData($data);
$requestBody->setSource('sample');

$requestBody->setType('lifecycleEvent');



$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->tasks()->byTaskId('task-id')->taskProcessingResults()->byTaskProcessingResultId('taskProcessingResult-id')->microsoftGraphIdentityGovernanceResume()->post($requestBody);


```