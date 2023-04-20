---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Extension();
$additionalData = [
		'xboxGamerTag' => 'FierceAdele', 
		'linkedInProfile' => 'www.linkedin.com/in/testlinkedinprofile', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->usersById('user-id')->extensionsById('extension-id')->patch($requestBody);


```