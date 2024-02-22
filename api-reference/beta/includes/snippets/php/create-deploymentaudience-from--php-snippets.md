---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeploymentAudience();

$result = $graphServiceClient->admin()->windows()->updates()->deploymentAudiences()->post($requestBody)->wait();

```