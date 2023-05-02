---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Chat();
$requestBody->setChatType(new ChatType('group'));

$membersConversationMember1 = new ConversationMember();
$membersConversationMember1->set@odatatype('#microsoft.graph.aadUserConversationMember');

$membersConversationMember1->setRoles(['owner', ]);

$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'adams@contoso.com\')', 
];
$membersConversationMember1->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember1;
$membersConversationMember2 = new ConversationMember();
$membersConversationMember2->set@odatatype('#microsoft.graph.aadUserConversationMember');

$membersConversationMember2->setRoles(['owner', ]);

$additionalData = [
'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'gradyA@contoso.com\')', 
];
$membersConversationMember2->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember2;
$membersConversationMember3 = new ConversationMember();
$membersConversationMember3->set@odatatype('#microsoft.graph.aadUserConversationMember');

$membersConversationMember3->setRoles(['owner', ]);

$additionalData = [
'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'4562bcc8-c436-4f95-b7c0-4f8ce89dca5e\')', 
];
$membersConversationMember3->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember3;
$requestBody->setMembers($membersArray);




$result = $graphServiceClient->chats()->post($requestBody);


```