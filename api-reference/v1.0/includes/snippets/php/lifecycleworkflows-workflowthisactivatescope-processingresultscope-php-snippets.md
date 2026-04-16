---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\MicrosoftGraphIdentityGovernanceActivateWithScope\ActivateWithScopePostRequestBody;
use Microsoft\Graph\Generated\Models\IdentityGovernance\ActivateProcessingResultScope;
use Microsoft\Graph\Generated\Models\IdentityGovernance\UserProcessingResult;
use Microsoft\Graph\Generated\Models\IdentityGovernance\ActivationTaskScopeType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivateWithScopePostRequestBody();
$scope = new ActivateProcessingResultScope();
$scope->setOdataType('microsoft.graph.identityGovernance.activateProcessingResultScope');
$processingResultsUserProcessingResult1 = new UserProcessingResult();
$processingResultsUserProcessingResult1->setId('abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459371237_0cdd8963-aaaa-4632-a1f2-aaaa7230aaaa');
$processingResultsArray []= $processingResultsUserProcessingResult1;
$processingResultsUserProcessingResult2 = new UserProcessingResult();
$processingResultsUserProcessingResult2->setId('abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_388131231459357126_aaaa8963-1c30-4632-aaaa-ac96723069cb');
$processingResultsArray []= $processingResultsUserProcessingResult2;
$scope->setProcessingResults($processingResultsArray);

$scope->setTaskScope(new ActivationTaskScopeType('allTasks'));
$requestBody->setScope($scope);

$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceActivateWithScope()->post($requestBody)->wait();

```