---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EventItemRequestBuilderGetRequestConfiguration();
$queryParameters = EventItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["subject","body","bodyPreview","organizer","attendees","start","end","location","locations"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->events()->byEventId('event-id')->get($requestConfiguration)->wait();

```