---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TelecomExpenseManagementPartner;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TelecomExpenseManagementPartner();
$requestBody->setOdataType('#microsoft.graph.telecomExpenseManagementPartner');
$requestBody->setDisplayName('Display Name value');
$requestBody->setUrl('Url value');
$requestBody->setAppAuthorized(true);
$requestBody->setEnabled(true);
$requestBody->setLastConnectionDateTime(new \DateTime('2016-12-31T23:58:36.6670033-08:00'));

$result = $graphServiceClient->deviceManagement()->telecomExpenseManagementPartners()->byTelecomExpenseManagementPartnerId('telecomExpenseManagementPartner-id')->patch($requestBody)->wait();

```