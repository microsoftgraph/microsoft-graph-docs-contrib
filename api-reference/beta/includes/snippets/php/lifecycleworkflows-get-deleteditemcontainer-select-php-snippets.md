---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WorkflowItemRequestBuilderGetRequestConfiguration();
$queryParameters = WorkflowItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","category","displayName","description","version","executionConditions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->deletedItems()->workflows()->byWorkflowId('workflow-id')->get($requestConfiguration)->wait();

```