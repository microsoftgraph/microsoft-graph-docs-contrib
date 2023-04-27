---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Channel();
$requestBody->setDisplayName('My First Shared Channel');

$requestBody->setDescription('This is my first shared channel');

$requestBody->setMembershipType(new ChannelMembershipType('shared'));

$membersConversationMember1 = new ConversationMember();
$membersConversationMember1->set@odatatype('#microsoft.graph.aadUserConversationMember');

$membersConversationMember1->setRoles(['owner', ]);

$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users(\'7640023f-fe43-gv3f-9gg4-84a9efe4acd6\')', 
];
$membersConversationMember1->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember1;
$requestBody->setMembers($membersArray);




$result = $graphServiceClient->teamsById('team-id')->channels()->post($requestBody);


```