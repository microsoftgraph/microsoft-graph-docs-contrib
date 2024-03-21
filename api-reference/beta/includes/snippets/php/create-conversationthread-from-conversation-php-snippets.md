---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConversationThread();
$requestBody->setTopic('Take your wellness days and rest');
$postsPost1 = new Post();
$postsPost1Body = new ItemBody();
$postsPost1Body->setContentType(new BodyType('html'));
$postsPost1Body->setContent('Waiting for the summer holidays.');
$postsPost1->setBody($postsPost1Body);
$postsArray []= $postsPost1;
$requestBody->setPosts($postsArray);


$result = $graphServiceClient->groups()->byGroupId('group-id')->conversations()->byConversationId('conversation-id')->threads()->post($requestBody)->wait();

```