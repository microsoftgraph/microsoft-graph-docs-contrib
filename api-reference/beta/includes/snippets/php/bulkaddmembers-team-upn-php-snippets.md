---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddPostRequestBody();
$valuesConversationMember1 = new ConversationMember();
$valuesConversationMember1->set@odatatype('microsoft.graph.aadUserConversationMember');

$valuesConversationMember1->setRoles([]);

$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users(\'jacob@contoso.com\')', 
];
$valuesConversationMember1->setAdditionalData($additionalData);



$valuesArray []= $valuesConversationMember1;
$valuesConversationMember2 = new ConversationMember();
$valuesConversationMember2->set@odatatype('microsoft.graph.aadUserConversationMember');

$valuesConversationMember2->setRoles(['owner', ]);

$additionalData = [
'user@odata.bind' => 'https://graph.microsoft.com/beta/users(\'alex@contoso.com\')', 
];
$valuesConversationMember2->setAdditionalData($additionalData);



$valuesArray []= $valuesConversationMember2;
$requestBody->setValues($valuesArray);




$result = $graphServiceClient->teamsById('team-id')->members()->add()->post($requestBody);


```