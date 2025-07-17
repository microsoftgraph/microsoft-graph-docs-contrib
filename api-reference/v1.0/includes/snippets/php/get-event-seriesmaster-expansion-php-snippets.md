---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Events\Item\EventItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EventItemRequestBuilderGetRequestConfiguration();
$queryParameters = EventItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["subject","start","end","occurrenceId","exceptionOccurrences","cancelledOccurrences"];
$queryParameters->expand = ["exceptionOccurrences"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->events()->byEventId('event-id')->get($requestConfiguration)->wait();

```