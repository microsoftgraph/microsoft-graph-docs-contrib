---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendMailPostRequestBody();
$message = new Message();
$message->setSubject('9/9/2018: concert');

$messageBody = new ItemBody();
$messageBody->setContentType(new BodyType('hTML'));

$messageBody->setContent('The group represents Nevada.');


$message->setBody($messageBody);
$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setAddress('AlexW@contoso.OnMicrosoft.com');


$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);

$toRecipientsArray []= $toRecipientsRecipient1;
$message->setToRecipients($toRecipientsArray);


$internetMessageHeadersInternetMessageHeader1 = new InternetMessageHeader();
$internetMessageHeadersInternetMessageHeader1->setName('x-custom-header-group-name');

$internetMessageHeadersInternetMessageHeader1->setValue('Nevada');


$internetMessageHeadersArray []= $internetMessageHeadersInternetMessageHeader1;
$internetMessageHeadersInternetMessageHeader2 = new InternetMessageHeader();
$internetMessageHeadersInternetMessageHeader2->setName('x-custom-header-group-id');

$internetMessageHeadersInternetMessageHeader2->setValue('NV001');


$internetMessageHeadersArray []= $internetMessageHeadersInternetMessageHeader2;
$message->setInternetMessageHeaders($internetMessageHeadersArray);



$requestBody->setMessage($message);


$graphServiceClient->me()->sendMail()->post($requestBody);


```