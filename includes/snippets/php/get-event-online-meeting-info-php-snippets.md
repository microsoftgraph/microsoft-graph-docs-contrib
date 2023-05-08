---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new EventRequestBuilderGetRequestConfiguration();
$queryParameters = EventRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["isOnlineMeeting","onlineMeetingProvider","onlineMeeting"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->eventsById('event-id')->get($requestConfiguration);


```