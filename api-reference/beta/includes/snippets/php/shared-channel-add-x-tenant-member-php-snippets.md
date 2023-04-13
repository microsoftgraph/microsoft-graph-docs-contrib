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
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users/bc3598dd-cce4-4742-ae15-173429951408', 
	'tenantId' => 'a18103d1-a6ef-4f66-ac64-e4ef42ea8681', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->members()->post($requestBody);


```