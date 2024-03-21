---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceLink();
$requestBody->setName('Backup Link');

$result = $graphServiceClient->networkAccess()->connectivity()->branches()->byBranchSiteId('branchSite-id')->deviceLinks()->byDeviceLinkId('deviceLink-id')->patch($requestBody)->wait();

```