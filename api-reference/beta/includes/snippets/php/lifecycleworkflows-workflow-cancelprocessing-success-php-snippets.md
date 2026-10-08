---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\MicrosoftGraphIdentityGovernanceCancelProcessing\CancelProcessingPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\CancelRunsScope;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\Run;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CancelProcessingPostRequestBody();
$scope = new CancelRunsScope();
$scope->setOdataType('#microsoft.graph.identityGovernance.cancelRunsScope');
$runsRun1 = new Run();
$runsRun1->setId('8cdf25a8-c9d2-423e-a03d-3f39f03c3e97');
$runsArray []= $runsRun1;
$scope->setRuns($runsArray);

$requestBody->setScope($scope);

$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceCancelProcessing()->post($requestBody)->wait();

```