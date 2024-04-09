---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GetFrontlineReportPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetFrontlineReportPostRequestBody();
$requestBody->setReportName(new CloudPcReportName('frontlineLicenseUsageReport'));
$requestBody->setFilter('ServicePlanId eq \'2d1d344e-d10c-41bb-953b-b3a47521dca0\' and DateTimeUTC gt datetime\'2022-11-30\'');
$requestBody->setSelect(['ServicePlanId', 'LicenseCount', 'ClaimedLicenseCount', 'DateTimeUTC', 	]);
$requestBody->setSkip(0);
$requestBody->setTop(100);

$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getFrontlineReport()->post($requestBody)->wait();

```