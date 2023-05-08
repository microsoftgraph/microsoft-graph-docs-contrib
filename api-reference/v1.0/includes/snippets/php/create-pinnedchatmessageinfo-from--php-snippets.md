---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PinnedChatMessageInfo();
$additionalData = [
		'message@odata.bind' => 'https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->chatsById('chat-id')->pinnedMessages()->post($requestBody);


```