---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new WorkflowsRequestBuilderGetRequestConfiguration();
$queryParameters = WorkflowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "category eq 'leaver'";
$queryParameters->select = ["id","category","displayName","isEnabled","isSchedulingEnabled"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->get($requestConfiguration);


```