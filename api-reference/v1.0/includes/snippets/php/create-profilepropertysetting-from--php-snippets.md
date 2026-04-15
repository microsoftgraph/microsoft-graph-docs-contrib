---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ProfilePropertySetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProfilePropertySetting();
$requestBody->setOdataType('#microsoft.graph.profilePropertySetting');
$requestBody->setDisplayName('Profile priority config');
$requestBody->setName('Profile priority config');
$requestBody->setPrioritizedSourceUrls(['https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId=\'contosohr1\')', 	]);

$result = $graphServiceClient->admin()->people()->profilePropertySettings()->post($requestBody)->wait();

```