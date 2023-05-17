---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Message();
$requestBody->setSubject('Party planning');

$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setName('Samantha Booth');

$toRecipientsRecipient1EmailAddress->setAddress('samanthab@contoso.onmicrosoft.com');


$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);

$toRecipientsArray []= $toRecipientsRecipient1;
$requestBody->setToRecipients($toRecipientsArray);


$mentionsMention1 = new Mention();
$mentionsMention1Mentioned = new EmailAddress();
$mentionsMention1Mentioned->setName('Dana Swope');

$mentionsMention1Mentioned->setAddress('danas@contoso.onmicrosoft.com');


$mentionsMention1->setMentioned($mentionsMention1Mentioned);

$mentionsArray []= $mentionsMention1;
$requestBody->setMentions($mentionsArray);




$result = $graphServiceClient->me()->messages()->post($requestBody);


```