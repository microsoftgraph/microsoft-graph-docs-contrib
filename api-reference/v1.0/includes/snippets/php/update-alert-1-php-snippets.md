---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Alert;
use Microsoft\Graph\Generated\Models\SecurityVendorInformation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Alert();
$requestBody->setAssignedTo('String');
$requestBody->setClosedDateTime(new \DateTime('String (timestamp)'));
$requestBody->setComments(['String', 	]);
$requestBody->setFeedback(new AlertFeedback('alertFeedback'));
$requestBody->setStatus(new AlertStatus('alertStatus'));
$requestBody->setTags(['String', 	]);
$vendorInformation = new SecurityVendorInformation();
$vendorInformation->setProvider('String');
$vendorInformation->setVendor('String');
$requestBody->setVendorInformation($vendorInformation);

$result = $graphServiceClient->security()->alerts()->byAlertId('alert-id')->patch($requestBody)->wait();

```