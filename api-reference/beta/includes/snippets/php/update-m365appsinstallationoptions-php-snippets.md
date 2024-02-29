---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new M365AppsInstallationOptions();
$requestBody->setUpdateChannel(new AppsUpdateChannelType('current'));

$result = $graphServiceClient->admin()->microsoft365Apps()->installationOptions()->patch($requestBody)->wait();

```