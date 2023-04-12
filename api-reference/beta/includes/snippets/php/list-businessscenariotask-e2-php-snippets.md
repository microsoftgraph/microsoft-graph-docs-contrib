---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TasksRequestBuilderGetRequestConfiguration();
$queryParameters = TasksRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "businessScenarioProperties/externalContextId eq 'Warehouse-CA-36'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->businessScenariosById('businessScenario-id')->planner()->tasks()->get($requestConfiguration);


```