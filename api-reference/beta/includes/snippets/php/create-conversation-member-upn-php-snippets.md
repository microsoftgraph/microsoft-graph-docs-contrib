---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ConversationMember();
$requestBody->set@odatatype('#microsoft.graph.aadUserConversationMember');

$requestBody->setVisibleHistoryStartDateTime(new DateTime('2019-04-18T23:51:43.255Z'));

$requestBody->setRoles(['owner', ]);

$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users/jacob@contoso.com', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->chatsById('chat-id')->members()->post($requestBody);


```