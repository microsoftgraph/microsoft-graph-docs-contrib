---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Extension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Extension();
$additionalData = [
	'xboxGamerTag' => 'FierceAdele',
	'linkedInProfile' => 'www.linkedin.com/in/testlinkedinprofile',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->users()->byUserId('user-id')->extensions()->byExtensionId('extension-id')->patch($requestBody)->wait();

```