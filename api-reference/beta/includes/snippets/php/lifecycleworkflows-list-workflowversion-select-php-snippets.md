---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new VersionsRequestBuilderGetRequestConfiguration();

$queryParameters = new VersionsRequestBuilderGetQueryParameters();
$queryParameters->select = ["category","displayName","versionNumber"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->versions()->get($requestConfiguration);


```