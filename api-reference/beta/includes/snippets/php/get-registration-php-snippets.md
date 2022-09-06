---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RegistrationRequestBuilderGetRequestConfiguration();

$queryParameters = new RegistrationRequestBuilderGetQueryParameters();
$queryParameters->expand = ["microsoft.graph.meetingRegistration/customQuestions"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->onlineMeetingsById('onlineMeeting-id')->registration()->get($requestConfiguration);


```