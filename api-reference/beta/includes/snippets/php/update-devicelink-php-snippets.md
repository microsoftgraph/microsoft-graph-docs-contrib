---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceLink;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceLink();
$requestBody->setName('Backup Link');

$result = $graphServiceClient->networkAccess()->connectivity()->branches()->byBranchSiteId('branchSite-id')->deviceLinks()->byDeviceLinkId('deviceLink-id')->patch($requestBody)->wait();

```