---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Chat();
$requestBody->setChatType(new ChatType('group'));

$requestBody->setTopic('Group chat title');

$membersConversationMember1 = new ConversationMember();
$membersConversationMember1->set@odatatype('#microsoft.graph.aadUserConversationMember');

$membersConversationMember1->setRoles(['owner', ]);

$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca\')', 
];
$membersConversationMember1->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember1;
$membersConversationMember2 = new ConversationMember();
$membersConversationMember2->set@odatatype('#microsoft.graph.aadUserConversationMember');

$membersConversationMember2->setRoles(['owner', ]);

$additionalData = [
'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'82fe7758-5bb3-4f0d-a43f-e555fd399c6f\')', 
];
$membersConversationMember2->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember2;
$membersConversationMember3 = new ConversationMember();
$membersConversationMember3->set@odatatype('#microsoft.graph.aadUserConversationMember');

$membersConversationMember3->setRoles(['guest', ]);

$additionalData = [
'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'8ba98gf6-7fc2-4eb2-c7f2-aef9f21fd98g\')', 
];
$membersConversationMember3->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember3;
$requestBody->setMembers($membersArray);




$result = $graphServiceClient->chats()->post($requestBody);


```