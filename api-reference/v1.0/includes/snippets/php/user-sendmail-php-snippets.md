---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
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
$toRecipientsRecipient1EmailAddress->setAddress('frannis@contoso.onmicrosoft.com');


$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);

$toRecipientsArray []= $toRecipientsRecipient1;
$message->setToRecipients($toRecipientsArray);


$ccRecipientsRecipient1 = new Recipient();
$ccRecipientsRecipient1EmailAddress = new EmailAddress();
$ccRecipientsRecipient1EmailAddress->setAddress('danas@contoso.onmicrosoft.com');


$ccRecipientsRecipient1->setEmailAddress($ccRecipientsRecipient1EmailAddress);

$ccRecipientsArray []= $ccRecipientsRecipient1;
$message->setCcRecipients($ccRecipientsArray);



$requestBody->setMessage($message);
$requestBody->setSaveToSentItems(false);



$graphServiceClient->me()->sendMail()->post($requestBody);


```