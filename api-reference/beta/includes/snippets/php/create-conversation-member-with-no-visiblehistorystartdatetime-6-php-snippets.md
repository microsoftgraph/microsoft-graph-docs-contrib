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

$requestBody->setTenantId('4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1');

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/beta/users/82af01c5-f7cc-4a2e-a728-3a5df21afd9d', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->chats()->byChatId('chat-id')->members()->post($requestBody);


```