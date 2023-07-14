---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UserProcessingResultRequestBuilderGetRequestConfiguration();
$queryParameters = UserProcessingResultRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","subject"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->runs()->byRunId('run-id')->userProcessingResults()->byUserProcessingResultId('userProcessingResult-id')->get($requestConfiguration);


```