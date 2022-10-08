---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TaskDefinitionsRequestBuilderGetRequestConfiguration();

$queryParameters = new TaskDefinitionsRequestBuilderGetQueryParameters();
$queryParameters->filter = "category eq 'joiner,leaver' OR category eq 'joiner'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->taskDefinitions()->get($requestConfiguration);


```