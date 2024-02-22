---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->telecomExpenseManagementPartners()->byTelecomExpenseManagementPartnerId('telecomExpenseManagementPartner-id')->get()->wait();

```