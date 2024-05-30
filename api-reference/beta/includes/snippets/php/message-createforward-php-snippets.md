---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Messages\Item\CreateForward\CreateForwardPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Message;
use Microsoft\Graph\Beta\Generated\Models\Recipient;
use Microsoft\Graph\Beta\Generated\Models\EmailAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateForwardPostRequestBody();
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
$requestBody->setComment('Dana, just want to make sure you get this; you\'ll need this if the project gets approved.');

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->createForward()->post($requestBody)->wait();

```