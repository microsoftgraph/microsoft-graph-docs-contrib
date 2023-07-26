---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AadUserConversationMember();
$requestBody->setOdataType('#microsoft.graph.aadUserConversationMember');

$requestBody->setRoles(['owner', 	]);

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'jacob@contoso.com\')', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teams()->byTeamId('team-id')->members()->post($requestBody);


```