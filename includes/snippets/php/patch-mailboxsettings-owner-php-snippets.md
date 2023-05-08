---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MailboxSettings();
$requestBody->setDelegateMeetingMessageDeliveryOptions(new DelegateMeetingMessageDeliveryOptions('sendtodelegateandprincipal'));



$result = $graphServiceClient->usersById('user-id')->mailboxSettings()->patch($requestBody);


```