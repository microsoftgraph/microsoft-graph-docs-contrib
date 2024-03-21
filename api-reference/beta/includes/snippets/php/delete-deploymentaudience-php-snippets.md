---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->admin()->windows()->updates()->deploymentAudiences()->byDeploymentAudienceId('deploymentAudience-id')->delete()->wait();

```