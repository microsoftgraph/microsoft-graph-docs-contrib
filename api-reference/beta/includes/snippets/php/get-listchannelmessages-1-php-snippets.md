---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();

$queryParameters = new MessagesRequestBuilderGetQueryParameters();
$queryParameters->top = 3;

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messages()->get($requestConfiguration);


```