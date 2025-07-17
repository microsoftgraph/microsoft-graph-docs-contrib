---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ServiceApp;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServiceApp();

$result = $graphServiceClient->solutions()->backupRestore()->serviceApps()->post($requestBody)->wait();

```