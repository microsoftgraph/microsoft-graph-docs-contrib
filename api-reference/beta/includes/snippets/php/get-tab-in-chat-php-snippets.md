---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TeamsTabRequestBuilderGetRequestConfiguration();

$queryParameters = new TeamsTabRequestBuilderGetQueryParameters();
$queryParameters->expand = ["teamsApp"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->chatsById('chat-id')->tabsById('teamsTab-id')->get($requestConfiguration);


```