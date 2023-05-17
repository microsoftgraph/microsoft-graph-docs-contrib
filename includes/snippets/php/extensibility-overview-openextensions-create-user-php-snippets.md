---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Extension();
$requestBody->set@odatatype('#microsoft.graph.openTypeExtension');

$requestBody->setId('com.contoso.socialSettings');

$additionalData = [
		'extensionName' => 'com.contoso.socialSettings', 
		'skypeId' => 'skypeId.AdeleV', 
		'linkedInProfile' => 'www.linkedin.com/in/testlinkedinprofile', 
		'xboxGamerTag' => 'AwesomeAdele', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->usersById('user-id')->extensions()->post($requestBody);


```