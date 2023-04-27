---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ConversationMember();
$requestBody->set@odatatype('#microsoft.graph.aadUserConversationMember');

$requestBody->setVisibleHistoryStartDateTime(new DateTime('0001-01-01T00:00:00Z'));

$requestBody->setRoles(['owner', ]);

$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->chatsById('chat-id')->members()->post($requestBody);


```