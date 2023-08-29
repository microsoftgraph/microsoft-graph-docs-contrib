---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TaskReportsRequestBuilderGetRequestConfiguration();
$queryParameters = TaskReportsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","failedUsersCount","processingStatus","successfulUsersCount","totalUsersCount","unprocessedUsersCount","taskDefinition","taskProcessingResults"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->taskReports()->get($requestConfiguration)->wait();

```