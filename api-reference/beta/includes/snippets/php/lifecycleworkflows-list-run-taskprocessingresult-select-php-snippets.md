---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TaskProcessingResultsRequestBuilderGetRequestConfiguration();

$queryParameters = new TaskProcessingResultsRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","failureReason","processingStatus","subject"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->runsById('run-id')->taskProcessingResults()->get($requestConfiguration);


```