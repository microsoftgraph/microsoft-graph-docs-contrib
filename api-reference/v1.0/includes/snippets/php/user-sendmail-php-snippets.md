---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendMailPostRequestBody();
$message = new Message();
$message->setSubject('Meet for lunch?');
$messageBody = new ItemBody();
$messageBody->setContentType(new BodyType('text'));
$messageBody->setContent('The new cafeteria is open.');
$message->setBody($messageBody);
$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setAddress('frannis@contoso.com');
$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);
$toRecipientsArray []= $toRecipientsRecipient1;
$message->setToRecipients($toRecipientsArray);

$ccRecipientsRecipient1 = new Recipient();
$ccRecipientsRecipient1EmailAddress = new EmailAddress();
$ccRecipientsRecipient1EmailAddress->setAddress('danas@contoso.com');
$ccRecipientsRecipient1->setEmailAddress($ccRecipientsRecipient1EmailAddress);
$ccRecipientsArray []= $ccRecipientsRecipient1;
$message->setCcRecipients($ccRecipientsArray);

$requestBody->setMessage($message);
$requestBody->setSaveToSentItems(false);

$graphServiceClient->me()->sendMail()->post($requestBody)->wait();

```