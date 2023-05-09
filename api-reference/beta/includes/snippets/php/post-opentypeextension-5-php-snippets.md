---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Conversation();
$requestBody->setTopic('Does anyone have a second?');

$threadsConversationThread1 = new ConversationThread();
$postsPost1 = new Post();
$postsPost1Body = new ItemBody();
$postsPost1Body->setContentType(new BodyType('html'));

$postsPost1Body->setContent('This is urgent!');


$postsPost1->setBody($postsPost1Body);
$extensionsExtension1 = new Extension();
$extensionsExtension1->set@odatatype('microsoft.graph.openTypeExtension');

$additionalData = [
		'extensionName' => 'Com.Contoso.Benefits', 
		'companyName' => 'Contoso', 
		'expirationDate' => '2016-08-03T11:00:00.000Z', 
		'topPicks' => ['Employees only', 'Add spouse or guest', 'Add family', ],
];
$extensionsExtension1->setAdditionalData($additionalData);



$extensionsArray []= $extensionsExtension1;
$postsPost1->setExtensions($extensionsArray);



$postsArray []= $postsPost1;
$threadsConversationThread1->setPosts($postsArray);



$threadsArray []= $threadsConversationThread1;
$requestBody->setThreads($threadsArray);




$result = $graphServiceClient->groupsById('group-id')->conversations()->post($requestBody);


```