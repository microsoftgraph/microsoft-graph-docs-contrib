---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPostRequestBody();
$valuesConversationMember1 = new AadUserConversationMember();
$valuesConversationMember1->setOdataType('microsoft.graph.aadUserConversationMember');

$valuesConversationMember1->setRoles([	]);

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/beta/users(\'18a80140-b0fb-4489-b360-2f6efaf225a0\')', 
];
$valuesConversationMember1->setAdditionalData($additionalData);



$valuesArray []= $valuesConversationMember1;
$valuesConversationMember2 = new AadUserConversationMember();
$valuesConversationMember2->setOdataType('microsoft.graph.aadUserConversationMember');

$valuesConversationMember2->setRoles(['owner', 	]);

$additionalData = [
		'user@odata.bind' => 'https://graph.microsoft.com/beta/users(\'86503198-b81b-43fe-81ee-ad45b8848ac9\')', 
];
$valuesConversationMember2->setAdditionalData($additionalData);



$valuesArray []= $valuesConversationMember2;
$requestBody->setValues($valuesArray);




$result = $graphServiceClient->teams()->byTeamId('team-id')->members()->add()->post($requestBody);


```