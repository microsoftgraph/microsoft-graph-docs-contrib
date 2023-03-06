---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ExecutionScopeRequestBuilderGetRequestConfiguration();

$queryParameters = new ExecutionScopeRequestBuilderGetQueryParameters();
$queryParameters->select = ["id"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->executionScope()->get($requestConfiguration);


```