---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CheckInClaim;
use Microsoft\Graph\Beta\Generated\Models\CheckInMethod;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CheckInClaim();
$requestBody->setOdataType('#microsoft.graph.checkInClaim');
$requestBody->setCalendarEventId('040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978');
$requestBody->setCheckInMethod(new CheckInMethod('verified'));

$result = $graphServiceClient->places()->byPlaceId('place-id')->checkIns()->post($requestBody)->wait();

```