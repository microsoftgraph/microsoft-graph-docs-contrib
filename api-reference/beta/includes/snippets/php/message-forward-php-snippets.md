---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ForwardPostRequestBody;
use Microsoft\Graph\Generated\Models\Message;
use Microsoft\Graph\Generated\Models\Recipient;
use Microsoft\Graph\Generated\Models\EmailAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardPostRequestBody();
$message = new Message();
$message->setIsDeliveryReceiptRequested(true);
$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setAddress('danas@contoso.com');
$toRecipientsRecipient1EmailAddress->setName('Dana Swope');
$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);
$toRecipientsArray []= $toRecipientsRecipient1;
$message->setToRecipients($toRecipientsArray);

$requestBody->setMessage($message);
$requestBody->setComment('Dana, just want to make sure you get this.');

$graphServiceClient->me()->messages()->byMessageId('message-id')->forward()->post($requestBody)->wait();

```