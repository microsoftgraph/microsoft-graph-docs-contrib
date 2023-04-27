---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MarkChatUnreadForUserPostRequestBody();
$user = new TeamworkUserIdentity();
$user->setId('d864e79f-a516-4d0f-9fee-0eeb4d61fdc2');

$additionalData = [
		'tenantId' => '2a690434-97d9-4eed-83a6-f5f13600199a', 
];
$user->setAdditionalData($additionalData);



$requestBody->setUser($user);
$requestBody->setLastMessageReadDateTime(new DateTime('2021-05-27T22:13:01.577Z'));



$graphServiceClient->chatsById('chat-id')->markChatUnreadForUser()->post($requestBody);


```