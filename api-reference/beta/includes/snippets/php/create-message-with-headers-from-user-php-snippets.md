---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Message();
$requestBody->setSubject('9/8/2018: concert');

$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('The group represents Washington.');


$requestBody->setBody($body);
$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setAddress('AlexW@contoso.OnMicrosoft.com');


$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);

$toRecipientsArray []= $toRecipientsRecipient1;
$requestBody->setToRecipients($toRecipientsArray);


$internetMessageHeadersInternetMessageHeader1 = new InternetMessageHeader();
$internetMessageHeadersInternetMessageHeader1->setName('x-custom-header-group-name');

$internetMessageHeadersInternetMessageHeader1->setValue('Washington');


$internetMessageHeadersArray []= $internetMessageHeadersInternetMessageHeader1;
$internetMessageHeadersInternetMessageHeader2 = new InternetMessageHeader();
$internetMessageHeadersInternetMessageHeader2->setName('x-custom-header-group-id');

$internetMessageHeadersInternetMessageHeader2->setValue('WA001');


$internetMessageHeadersArray []= $internetMessageHeadersInternetMessageHeader2;
$requestBody->setInternetMessageHeaders($internetMessageHeadersArray);




$result = $graphServiceClient->me()->messages()->post($requestBody);


```