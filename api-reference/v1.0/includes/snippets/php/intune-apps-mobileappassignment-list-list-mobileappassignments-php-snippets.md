---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->assignments()->get()->wait();

```