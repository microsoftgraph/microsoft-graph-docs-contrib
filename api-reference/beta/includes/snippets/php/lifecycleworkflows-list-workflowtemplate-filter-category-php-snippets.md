---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new WorkflowTemplatesRequestBuilderGetRequestConfiguration();

$queryParameters = new WorkflowTemplatesRequestBuilderGetQueryParameters();
$queryParameters->filter = "category eq 'leaver'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowTemplates()->get($requestConfiguration);


```