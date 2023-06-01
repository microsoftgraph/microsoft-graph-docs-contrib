---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new OnlineMeetingsRequestBuilderGetRequestConfiguration();
$queryParameters = OnlineMeetingsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "VideoTeleconferenceId eq '123456789'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->communications()->onlineMeetings()->get($requestConfiguration);


```