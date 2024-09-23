---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\OnlineMeetings\Item\Recordings\RecordingsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RecordingsRequestBuilderGetRequestConfiguration();
$queryParameters = RecordingsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "contentCorrelationId eq 'e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->recordings()->get($requestConfiguration)->wait();

```