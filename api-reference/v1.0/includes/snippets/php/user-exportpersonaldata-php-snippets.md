---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\ExportPersonalData\ExportPersonalDataPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportPersonalDataPostRequestBody();
$requestBody->setStorageLocation('storageLocation-value');

$graphServiceClient->users()->byUserId('user-id')->exportPersonalData()->post($requestBody)->wait();

```