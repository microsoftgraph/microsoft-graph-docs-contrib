---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\LifecycleWorkflows\DeletedItems\Workflows\Item\WorkflowItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WorkflowItemRequestBuilderGetRequestConfiguration();
$queryParameters = WorkflowItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","category","displayName","description","version","executionConditions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->deletedItems()->workflows()->byWorkflowId('workflow-id')->get($requestConfiguration)->wait();

```