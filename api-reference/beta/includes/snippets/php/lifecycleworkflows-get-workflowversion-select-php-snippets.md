---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new WorkflowVersionRequestBuilderGetRequestConfiguration();

$queryParameters = new WorkflowVersionRequestBuilderGetQueryParameters();
$queryParameters->select = ["category","displayName","versionNumber","executionConditions"];
$queryParameters->expand = ["tasks"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->versionsById('workflowVersion-versionNumber')->get($requestConfiguration);


```