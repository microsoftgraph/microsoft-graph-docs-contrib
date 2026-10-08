---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WorkHoursAndLocationsSetting;
use Microsoft\Graph\Generated\Models\MaxWorkLocationDetails;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkHoursAndLocationsSetting();
$requestBody->setMaxSharedWorkLocationDetails(new MaxWorkLocationDetails('approximate'));

$result = $graphServiceClient->me()->settings()->workHoursAndLocations()->patch($requestBody)->wait();

```