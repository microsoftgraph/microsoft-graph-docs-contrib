---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeploymentAudience;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeploymentAudience();

$result = $graphServiceClient->admin()->windows()->updates()->deploymentAudiences()->post($requestBody)->wait();

```