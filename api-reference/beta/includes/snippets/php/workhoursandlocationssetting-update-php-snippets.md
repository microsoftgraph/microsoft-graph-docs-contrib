---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WorkHoursAndLocationsSetting;
use Microsoft\Graph\Beta\Generated\Models\MaxWorkLocationDetails;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkHoursAndLocationsSetting();
$requestBody->setMaxSharedWorkLocationDetails(new MaxWorkLocationDetails('approximate'));

$result = $graphServiceClient->me()->settings()->workHoursAndLocations()->patch($requestBody)->wait();

```