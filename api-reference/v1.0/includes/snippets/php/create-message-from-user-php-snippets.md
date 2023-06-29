---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Message();
$requestBody->setSubject('Did you see last night\'s game?');

$requestBody->setImportance(new Importance('low'));

$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('They were <b>awesome</b>!');


$requestBody->setBody($body);
$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setAddress('AdeleV@contoso.onmicrosoft.com');


$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);

$toRecipientsArray []= $toRecipientsRecipient1;
$requestBody->setToRecipients($toRecipientsArray);




$result = $graphServiceClient->me()->messages()->post($requestBody);


```