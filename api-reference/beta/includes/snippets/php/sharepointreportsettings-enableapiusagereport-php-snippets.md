---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\ReportSettings\SharePoint\EnableApiUsageReport\EnableApiUsageReportPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EnableApiUsageReportPostRequestBody();
$requestBody->setMetric('egressReport');

$result = $graphServiceClient->admin()->reportSettings()->sharePoint()->enableApiUsageReport()->post($requestBody)->wait();

```