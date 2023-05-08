---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TasksRequestBuilderGetRequestConfiguration();
$queryParameters = TasksRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "location/microsoft.graph.businessScenarioGroupTarget/groupId eq '7a339254-4b2b-4410-b295-c890a16776ee'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->businessScenariosById('businessScenario-id')->planner()->tasks()->get($requestConfiguration);


```