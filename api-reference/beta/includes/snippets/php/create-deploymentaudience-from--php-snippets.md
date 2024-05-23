---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Microsoft\Graph\WindowsUpdates\DeploymentAudience


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeploymentAudience();

$result = $graphServiceClient->admin()->windows()->updates()->deploymentAudiences()->post($requestBody)->wait();

```