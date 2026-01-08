---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ProfilePropertySetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProfilePropertySetting();
$requestBody->setOdataType('#microsoft.graph.profilePropertySetting');
$requestBody->setPrioritizedSourceUrls(['https://graph.microsoft.com/beta/admin/people/profileSources(sourceId=\'contosohr1\')', 'https://graph.microsoft.com/beta/admin/people/profileSources(sourceId=\'contosohr2\')', 	]);

$result = $graphServiceClient->admin()->people()->profilePropertySettings()->byProfilePropertySettingId('profilePropertySetting-id')->patch($requestBody)->wait();

```