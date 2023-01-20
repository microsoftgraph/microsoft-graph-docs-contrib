---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new WorkflowRequestBuilderGetRequestConfiguration();

$queryParameters = new WorkflowRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","category","displayName","description","version","executionConditions"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->deletedItems()->workflowsById('workflow-id')->get($requestConfiguration);


```