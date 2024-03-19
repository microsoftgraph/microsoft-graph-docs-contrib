---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WorkflowVersionItemRequestBuilderGetRequestConfiguration();
$queryParameters = WorkflowVersionItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["category","displayName","versionNumber","executionConditions"];
$queryParameters->expand = ["tasks"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->versions()->byWorkflowVersionVersionNumber('workflowVersion-versionNumber')->get($requestConfiguration)->wait();

```