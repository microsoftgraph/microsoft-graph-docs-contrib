---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UserProcessingResultsRequestBuilderGetRequestConfiguration();
$queryParameters = UserProcessingResultsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","workflowExecutionType","subject"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->userProcessingResults()->get($requestConfiguration);


```