---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new InstancesRequestBuilderGetRequestConfiguration();
$queryParameters = InstancesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->startDateTime = "2019-04-08T09:00:00.0000000";
$queryParameters->endDateTime = "2019-04-30T09:00:00.0000000";
$queryParameters->select = ["subject","bodyPreview","seriesMasterId","type","recurrence","start","end"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->eventsById('event-id')->instances()->get($requestConfiguration);


```