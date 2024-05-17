---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AdminReportSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdminReportSettings();
$requestBody->setDisplayConcealedNames(true);

$result = $graphServiceClient->admin()->reportSettings()->patch($requestBody)->wait();

```