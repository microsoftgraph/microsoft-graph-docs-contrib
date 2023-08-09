---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WorkflowsRequestBuilderGetRequestConfiguration();
$queryParameters = WorkflowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","category","displayName","description","version"];
$queryParameters->filter = "category eq 'leaver'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->deletedItems()->workflows()->get($requestConfiguration);


```