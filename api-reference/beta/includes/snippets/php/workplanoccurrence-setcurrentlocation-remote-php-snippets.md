---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Settings\WorkHoursAndLocations\Occurrences\SetCurrentLocation\SetCurrentLocationPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\WorkLocationUpdateScope;
use Microsoft\Graph\Beta\Generated\Models\WorkLocationType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetCurrentLocationPostRequestBody();
$requestBody->setUpdateScope(new WorkLocationUpdateScope('currentSegment'));
$requestBody->setWorkLocationType(new WorkLocationType('remote'));

$graphServiceClient->me()->settings()->workHoursAndLocations()->occurrences()->setCurrentLocation()->post($requestBody)->wait();

```