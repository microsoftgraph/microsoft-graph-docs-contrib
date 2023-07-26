---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
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




$result = $graphServiceClient->users()->byUserId('user-id')->extensions()->post($requestBody);


```