---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Channel();
$requestBody->set@odatatype('#Microsoft.Graph.channel');

$requestBody->setMembershipType(new ChannelMembershipType('private'));

$requestBody->setDisplayName('My First Private Channel');

$requestBody->setDescription('This is my first private channels');

$membersConversationMember1 = new ConversationMember();
$membersConversationMember1->set@odatatype('#microsoft.graph.aadUserConversationMember');

$membersConversationMember1->setRoles(['owner', ]);

$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users(\'62855810-484b-4823-9e01-60667f8b12ae\')', 
];
$membersConversationMember1->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember1;
$requestBody->setMembers($membersArray);




$result = $graphServiceClient->teamsById('team-id')->channels()->post($requestBody);


```