---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Chat();
$requestBody->setChatType(new ChatType('group'));

$membersConversationMember1 = new AadUserConversationMember();
$membersConversationMember1->setOdataType('#microsoft.graph.aadUserConversationMember');

$membersConversationMember1->setRoles(['owner', 	]);

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'adams@contoso.com\')', 
];
$membersConversationMember1->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember1;
$membersConversationMember2 = new AadUserConversationMember();
$membersConversationMember2->setOdataType('#microsoft.graph.aadUserConversationMember');

$membersConversationMember2->setRoles(['owner', 	]);

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'gradyA@contoso.com\')', 
];
$membersConversationMember2->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember2;
$membersConversationMember3 = new AadUserConversationMember();
$membersConversationMember3->setOdataType('#microsoft.graph.aadUserConversationMember');

$membersConversationMember3->setRoles(['owner', 	]);

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'4562bcc8-c436-4f95-b7c0-4f8ce89dca5e\')', 
];
$membersConversationMember3->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember3;
$requestBody->setMembers($membersArray);




$result = $graphServiceClient->chats()->post($requestBody);


```