---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Settings\WorkHoursAndLocations\Occurrences\SetCurrentLocation\SetCurrentLocationPostRequestBody;
use Microsoft\Graph\Generated\Models\WorkLocationUpdateScope;
use Microsoft\Graph\Generated\Models\WorkLocationType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetCurrentLocationPostRequestBody();
$requestBody->setUpdateScope(new WorkLocationUpdateScope('currentDay'));
$requestBody->setWorkLocationType(new WorkLocationType('office'));
$requestBody->setPlaceId('12345678-1234-1234-1234-123456789012');

$graphServiceClient->me()->settings()->workHoursAndLocations()->occurrences()->setCurrentLocation()->post($requestBody)->wait();

```