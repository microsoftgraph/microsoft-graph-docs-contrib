---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->admin()->configurationManagement()->configurationMonitors()->byConfigurationMonitorId('configurationMonitor-id')->delete()->wait();

```