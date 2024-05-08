---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\OnlineMeetings\Item\OnlineMeetingItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new OnlineMeetingItemRequestBuilderGetRequestConfiguration();
$queryParameters = OnlineMeetingItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "meetingOrganizerId eq '8b081ef6-4792-4def-b2c9-c363a1bf41d5'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->get($requestConfiguration)->wait();

```