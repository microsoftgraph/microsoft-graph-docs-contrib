---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ConversationMember();
$requestBody->set@odatatype('#microsoft.graph.aadUserConversationMember');

$requestBody->setRoles([]);

$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users/24b3819b-4e1d-4f3e-86bd-e42b54d0b2b4', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->members()->post($requestBody);


```