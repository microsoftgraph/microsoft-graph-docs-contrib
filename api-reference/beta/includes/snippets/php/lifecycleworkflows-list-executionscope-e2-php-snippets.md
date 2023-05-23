---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ExecutionScopeRequestBuilderGetRequestConfiguration();
$queryParameters = ExecutionScopeRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->executionScope()->get($requestConfiguration);


```