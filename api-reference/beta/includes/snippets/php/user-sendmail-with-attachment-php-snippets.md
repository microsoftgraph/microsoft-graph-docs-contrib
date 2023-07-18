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
$toRecipientsRecipient1EmailAddress->setAddress('meganb@contoso.onmicrosoft.com');


$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);

$toRecipientsArray []= $toRecipientsRecipient1;
$message->setToRecipients($toRecipientsArray);


$attachmentsAttachment1 = new FileAttachment();
$attachmentsAttachment1->setOdataType('#microsoft.graph.fileAttachment');

$attachmentsAttachment1->setName('attachment.txt');

$attachmentsAttachment1->setContentType('text/plain');

$attachmentsAttachment1->setContentBytes(base64_decode('SGVsbG8gV29ybGQh'));


$attachmentsArray []= $attachmentsAttachment1;
$message->setAttachments($attachmentsArray);



$requestBody->setMessage($message);


$graphServiceClient->me()->sendMail()->post($requestBody);


```