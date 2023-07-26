---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenTypeExtension();
$requestBody->setOdataType('#microsoft.graph.openTypeExtension');

$requestBody->setId('com.contoso.socialSettings');

$additionalData = [
		'@odata.context' => 'https://graph.microsoft.com/beta/$metadata#users(\'3fbd929d-8c56-4462-851e-0eb9a7b3a2a5\')/extensions/$entity', 
		'xboxGamerTag' => 'FierceAdele', 
		'linkedInProfile' => 'www.linkedin.com/in/testlinkedinprofile', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->users()->byUserId('user-id')->extensions()->byExtensionId('extension-id')->get($requestBody);


```