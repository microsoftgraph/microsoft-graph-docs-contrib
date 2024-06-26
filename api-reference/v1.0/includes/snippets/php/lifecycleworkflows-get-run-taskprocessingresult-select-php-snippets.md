---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\Runs\Item\UserProcessingResults\UserProcessingResultsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UserProcessingResultsRequestBuilderGetRequestConfiguration();
$queryParameters = UserProcessingResultsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","subject"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->runs()->byRunId('run-id')->userProcessingResults()->get($requestConfiguration)->wait();

```