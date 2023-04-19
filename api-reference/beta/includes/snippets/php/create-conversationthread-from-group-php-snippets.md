---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ConversationThread();
$requestBody->setTopic('New Conversation Thread Topic');

$postsPost1 = new Post();
$postsPost1Body = new ItemBody();
$postsPost1Body->setContentType(new BodyType('html'));

$postsPost1Body->setContent('this is body content');


$postsPost1->setBody($postsPost1Body);
$newParticipantsRecipient1 = new Recipient();
$newParticipantsRecipient1EmailAddress = new EmailAddress();
$newParticipantsRecipient1EmailAddress->setName('Alex Darrow');

$newParticipantsRecipient1EmailAddress->setAddress('alexd@contoso.com');


$newParticipantsRecipient1->setEmailAddress($newParticipantsRecipient1EmailAddress);

$newParticipantsArray []= $newParticipantsRecipient1;
$postsPost1->setNewParticipants($newParticipantsArray);



$postsArray []= $postsPost1;
$requestBody->setPosts($postsArray);




$result = $graphServiceClient->groupsById('group-id')->threads()->post($requestBody);


```