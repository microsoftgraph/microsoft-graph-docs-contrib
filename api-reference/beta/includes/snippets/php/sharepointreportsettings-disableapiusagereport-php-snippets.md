---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\ReportSettings\SharePoint\DisableApiUsageReport\DisableApiUsageReportPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DisableApiUsageReportPostRequestBody();
$requestBody->setMetric('EgressReport');

$result = $graphServiceClient->admin()->reportSettings()->sharePoint()->disableApiUsageReport()->post($requestBody)->wait();

```