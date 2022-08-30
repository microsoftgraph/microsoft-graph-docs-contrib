---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->virtualEndpoint()->onPremisesConnections()->byCloudPcOnPremisesConnectionId('cloudPcOnPremisesConnection-id')->runHealthChecks()->post()->wait();

```