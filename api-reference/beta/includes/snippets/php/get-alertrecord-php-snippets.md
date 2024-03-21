---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->monitoring()->alertRecords()->byAlertRecordId('alertRecord-id')->get()->wait();

```