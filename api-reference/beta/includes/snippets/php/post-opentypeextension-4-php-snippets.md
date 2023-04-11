---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReplyPostRequestBody();
$post = new Post();
$postBody = new ItemBody();
$postBody->setContentType(new BodyType('html'));

$postBody->setContent('<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>');


$post->setBody($postBody);
$extensionsExtension1 = new Extension();
$extensionsExtension1->set@odatatype('microsoft.graph.openTypeExtension');

$additionalData = [
		'extensionName' => 'Com.Contoso.HR', 
		'companyName' => 'Contoso', 
		'expirationDate' => '2015-07-03T13:04:00.000Z', 
		'topPicks' => ['Employees only', 'Add spouse or guest', 'Add family', ],
];
$extensionsExtension1->setAdditionalData($additionalData);



$extensionsArray []= $extensionsExtension1;
$post->setExtensions($extensionsArray);



$requestBody->setPost($post);


$graphServiceClient->groupsById('group-id')->threadsById('conversationThread-id')->postsById('post-id')->reply()->post($requestBody);


```