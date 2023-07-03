---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TelecomExpenseManagementPartner();
$requestBody->set@odatatype('#microsoft.graph.telecomExpenseManagementPartner');

$requestBody->setDisplayName('Display Name value');

$requestBody->setUrl('Url value');

$requestBody->setAppAuthorized(true);

$requestBody->setEnabled(true);

$requestBody->setLastConnectionDateTime(new DateTime('2016-12-31T23:58:36.6670033-08:00'));



$result = $graphServiceClient->deviceManagement()->telecomExpenseManagementPartners()->post($requestBody);


```