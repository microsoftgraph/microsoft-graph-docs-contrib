---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Groups\Item\Threads\Item\Posts\Item\Reply\ReplyPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Post;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;
use Microsoft\Graph\Beta\Generated\Models\Extension;
use Microsoft\Graph\Beta\Generated\Models\OpenTypeExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReplyPostRequestBody();
$post = new Post();
$postBody = new ItemBody();
$postBody->setContentType(new BodyType('html'));
$postBody->setContent('<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>');
$post->setBody($postBody);
$extensionsExtension1 = new OpenTypeExtension();
$extensionsExtension1->setOdataType('microsoft.graph.openTypeExtension');
$extensionsExtension1->setExtensionName('Com.Contoso.HR');
$additionalData = [
	'companyName' => 'Contoso',
	'expirationDate' => '2015-07-03T13:04:00.000Z',
	'topPicks' => [
'Employees only', 'Add spouse or guest', 'Add family', ],
];
$extensionsExtension1->setAdditionalData($additionalData);
$extensionsArray []= $extensionsExtension1;
$post->setExtensions($extensionsArray);

$requestBody->setPost($post);

$graphServiceClient->groups()->byGroupId('group-id')->threads()->byConversationThreadId('conversationThread-id')->posts()->byPostId('post-id')->reply()->post($requestBody)->wait();

```