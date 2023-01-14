---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new OnlineMeetingsRequestBuilderGetRequestConfiguration();

$queryParameters = new OnlineMeetingsRequestBuilderGetQueryParameters();
$queryParameters->filter = "joinMeetingIdSettings/joinMeetingId eq '1234567890'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->onlineMeetings()->get($requestConfiguration);


```