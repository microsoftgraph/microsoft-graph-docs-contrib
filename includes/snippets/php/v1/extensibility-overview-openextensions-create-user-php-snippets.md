---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OpenTypeExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenTypeExtension();
$requestBody->setOdataType('#microsoft.graph.openTypeExtension');
$requestBody->setExtensionName('com.contoso.socialSettings');
$requestBody->setId('com.contoso.socialSettings');
$additionalData = [
	'skypeId' => 'skypeId.AdeleV',
	'linkedInProfile' => 'www.linkedin.com/in/testlinkedinprofile',
	'xboxGamerTag' => 'AwesomeAdele',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->users()->byUserId('user-id')->extensions()->post($requestBody)->wait();

```