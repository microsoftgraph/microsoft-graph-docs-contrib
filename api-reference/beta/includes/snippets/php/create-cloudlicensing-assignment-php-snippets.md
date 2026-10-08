---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudLicensing\Assignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Assignment();
$requestBody->setOdataType('#microsoft.graph.cloudLicensing.assignment');
$requestBody->setDisabledServicePlanIds(['bed136c6-b799-4462-824d-fc045d3a9d25', 	]);
$additionalData = [
	'allotment@odata.bind' => 'https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi',
	'assignedTo@odata.bind' => 'https://graph.microsoft.com/beta/users/6d645c5f-089f-40d8-b0e7-136fb5c56d5b',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->admin()->cloudLicensing()->assignments()->post($requestBody)->wait();

```