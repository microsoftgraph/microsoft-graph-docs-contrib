---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RegistrationRequestBuilderGetRequestConfiguration();
$queryParameters = RegistrationRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["microsoft.graph.meetingRegistration/customQuestions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->registration()->get($requestConfiguration)->wait();

```