---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new WorkflowTemplatesRequestBuilderGetRequestConfiguration();
$queryParameters = WorkflowTemplatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "category eq 'leaver'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowTemplates()->get($requestConfiguration);


```