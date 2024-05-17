---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ResumePostRequestBody;
use Microsoft\Graph\Generated\Models\CustomTaskExtensionCallbackData;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResumePostRequestBody();
$data = new CustomTaskExtensionCallbackData();
$data->setOperationStatus(new CustomTaskExtensionOperationStatus('completed'));
$requestBody->setData($data);
$requestBody->setSource('sample');
$requestBody->setType('lifecycleEvent');

$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->tasks()->byTaskId('task-id')->taskProcessingResults()->byTaskProcessingResultId('taskProcessingResult-id')->microsoftGraphIdentityGovernanceResume()->post($requestBody)->wait();

```