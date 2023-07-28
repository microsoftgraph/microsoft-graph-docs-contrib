---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardPostRequestBody();
$message = new Message();
$message->setIsDeliveryReceiptRequested(true);

$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setAddress('danas@contoso.onmicrosoft.com');

$toRecipientsRecipient1EmailAddress->setName('Dana Swope');


$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);

$toRecipientsArray []= $toRecipientsRecipient1;
$message->setToRecipients($toRecipientsArray);



$requestBody->setMessage($message);
$requestBody->setComment('Dana, just want to make sure you get this.');



$graphServiceClient->me()->messages()->byMessageId('message-id')->forward()->post($requestBody);


```