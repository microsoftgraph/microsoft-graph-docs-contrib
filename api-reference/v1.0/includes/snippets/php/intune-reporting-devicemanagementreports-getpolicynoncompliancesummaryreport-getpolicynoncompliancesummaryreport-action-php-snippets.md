---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GetPolicyNonComplianceSummaryReportPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetPolicyNonComplianceSummaryReportPostRequestBody();
$requestBody->setName('Name value');
$requestBody->setSelect(['Select value', 	]);
$requestBody->setSearch('Search value');
$requestBody->setGroupBy(['Group By value', 	]);
$requestBody->setOrderBy(['Order By value', 	]);
$requestBody->setSkip(4);
$requestBody->setTop(3);
$requestBody->setSessionId('Session Id value');
$requestBody->setFilter('Filter value');

$graphServiceClient->deviceManagement()->reports()->getPolicyNonComplianceSummaryReport()->post($requestBody)->wait();

```