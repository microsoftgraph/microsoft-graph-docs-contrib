---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EndUserNotificationsRequestBuilderGetRequestConfiguration();
$queryParameters = EndUserNotificationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "source eq 'global'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->attackSimulation()->endUserNotifications()->get($requestConfiguration)->wait();

```