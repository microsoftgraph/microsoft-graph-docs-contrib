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
$requestBody->setName('Profile priority config');
$requestBody->setPrioritizedSourceUrls(['https://graph.microsoft.com/beta/admin/people/profileSources(sourceId=\'contosohr1\')', 	]);
$additionalData = [
	'displayName' => 'Profile priority config',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->admin()->people()->profilePropertySettings()->post($requestBody)->wait();

```