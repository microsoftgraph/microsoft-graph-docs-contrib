---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Conversation();
$requestBody->setTopic('Take your wellness days and rest');

$threadsConversationThread1 = new ConversationThread();
$postsPost1 = new Post();
$postsPost1Body = new ItemBody();
$postsPost1Body->setContentType(new BodyType('html'));

$postsPost1Body->setContent('Contoso cares about you: Rest and Recharge');


$postsPost1->setBody($postsPost1Body);
$newParticipantsRecipient1 = new Recipient();
$newParticipantsRecipient1EmailAddress = new EmailAddress();
$newParticipantsRecipient1EmailAddress->setName('Adele Vance');

$newParticipantsRecipient1EmailAddress->setAddress('AdeleV@contoso.onmicrosoft.com');


$newParticipantsRecipient1->setEmailAddress($newParticipantsRecipient1EmailAddress);

$newParticipantsArray []= $newParticipantsRecipient1;
$postsPost1->setNewParticipants($newParticipantsArray);



$postsArray []= $postsPost1;
$threadsConversationThread1->setPosts($postsArray);



$threadsArray []= $threadsConversationThread1;
$requestBody->setThreads($threadsArray);




$result = $graphServiceClient->groupsById('group-id')->conversations()->post($requestBody);


```