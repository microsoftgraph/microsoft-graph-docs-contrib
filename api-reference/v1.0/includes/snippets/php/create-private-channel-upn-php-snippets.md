---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Channel();
$requestBody->setOdataType('#Microsoft.Graph.channel');

$requestBody->setMembershipType(new ChannelMembershipType('private'));

$requestBody->setDisplayName('My First Private Channel');

$requestBody->setDescription('This is my first private channels');

$membersConversationMember1 = new AadUserConversationMember();
$membersConversationMember1->setOdataType('#microsoft.graph.aadUserConversationMember');

$membersConversationMember1->setRoles(['owner', 	]);

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'jacob@contoso.com\')', 
];
$membersConversationMember1->setAdditionalData($additionalData);



$membersArray []= $membersConversationMember1;
$requestBody->setMembers($membersArray);




$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->post($requestBody);


```