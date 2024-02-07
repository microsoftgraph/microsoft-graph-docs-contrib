---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EndUserNotificationsRequestBuilderGetRequestConfiguration();
$queryParameters = EndUserNotificationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "source eq 'global'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->attackSimulation()->endUserNotifications()->get($requestConfiguration)->wait();

```