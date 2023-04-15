---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MovePostRequestBody();
$requestBody->setDestinationId('deleteditems');



$result = $graphServiceClient->me()->messagesById('message-id')->move()->post($requestBody);


```