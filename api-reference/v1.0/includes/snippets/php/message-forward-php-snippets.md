---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardPostRequestBody();
$requestBody->setComment('comment-value');

$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setName('name-value');

$toRecipientsRecipient1EmailAddress->setAddress('address-value');


$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);

$toRecipientsArray []= $toRecipientsRecipient1;
$requestBody->setToRecipients($toRecipientsArray);




$graphServiceClient->me()->messages()->byMessageId('message-id')->forward()->post($requestBody);


```