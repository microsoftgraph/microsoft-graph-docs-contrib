---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->complianceManagementPartners()->byComplianceManagementPartnerId('complianceManagementPartner-id')->get()->wait();

```