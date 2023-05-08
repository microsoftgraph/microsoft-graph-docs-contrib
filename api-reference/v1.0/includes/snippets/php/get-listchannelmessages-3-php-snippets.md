---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();
$queryParameters = MessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 1;
$queryParameters->expand = ["replies"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messages()->get($requestConfiguration);


```