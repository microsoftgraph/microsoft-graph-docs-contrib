---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReplyAllPostRequestBody();
$requestBody->setComment('comment-value');



$graphServiceClient->me()->messages()->byMessageId('message-id')->replyAll()->post($requestBody);


```