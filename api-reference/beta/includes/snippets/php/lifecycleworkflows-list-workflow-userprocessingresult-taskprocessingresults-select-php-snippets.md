---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TaskProcessingResultsRequestBuilderGetRequestConfiguration();
$queryParameters = TaskProcessingResultsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","failureReason","processingStatus","subject","task"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->runsById('run-id')->userProcessingResultsById('userProcessingResult-id')->taskProcessingResults()->get($requestConfiguration);


```