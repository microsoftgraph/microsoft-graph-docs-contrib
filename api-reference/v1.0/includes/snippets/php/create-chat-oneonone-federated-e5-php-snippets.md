---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Chat();
$requestBody->setChatType(new ChatType('oneOnOne'));

$membersConversationMember1 = new AadUserConversationMember();
$membersConversationMember1->setOdataType('#microsoft.graph.aadUserConversationMember');

$membersConversationMember1->setRoles(['owner', 	]);

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'8b081ef6-4792-4def-b2c9-c363a1bf41d5\')', 
];
$membersConversationMember1->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember1;
$membersConversationMember2 = new AadUserConversationMember();
$membersConversationMember2->setOdataType('#microsoft.graph.aadUserConversationMember');

$membersConversationMember2->setRoles(['owner', 	]);

$membersConversationMember2->setTenantId('4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1');

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'82af01c5-f7cc-4a2e-a728-3a5df21afd9d\')', 
];
$membersConversationMember2->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember2;
$requestBody->setMembers($membersArray);




$result = $graphServiceClient->chats()->post($requestBody);


```