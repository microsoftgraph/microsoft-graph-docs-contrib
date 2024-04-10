---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\OnlineMeetings\GetAllTranscripts\GetAllTranscriptsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetAllTranscriptsRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllTranscriptsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "meetingOrganizerId eq '8b081ef6-4792-4def-b2c9-c363a1bf41d5'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->onlineMeetings()->getAllTranscripts()->get($requestConfiguration)->wait();

```