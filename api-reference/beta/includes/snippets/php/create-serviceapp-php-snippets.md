---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ServiceApp;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServiceApp();

$result = $graphServiceClient->solutions()->backupRestore()->serviceApps()->post($requestBody)->wait();

```