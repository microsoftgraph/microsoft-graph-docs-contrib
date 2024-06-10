---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\Tasks\Item\TaskProcessingResults\Item\MicrosoftGraphIdentityGovernanceResume\ResumePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\CustomTaskExtensionCallbackData;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\CustomTaskExtensionOperationStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResumePostRequestBody();
$data = new CustomTaskExtensionCallbackData();
$data->setOperationStatus(new CustomTaskExtensionOperationStatus('completed'));
$requestBody->setData($data);
$requestBody->setSource('sample');
$requestBody->setType('lifecycleEvent');

$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->tasks()->byTaskId('task-id')->taskProcessingResults()->byTaskProcessingResultId('taskProcessingResult-id')->microsoftGraphIdentityGovernanceResume()->post($requestBody)->wait();

```