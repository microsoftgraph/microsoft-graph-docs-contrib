---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Message;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\Recipient;
use Microsoft\Graph\Generated\Models\EmailAddress;
use Microsoft\Graph\Generated\Models\InternetMessageHeader;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Message();
$requestBody->setSubject('9/8/2018: concert');
$body = new ItemBody();
$body->setContentType(new BodyType('hTML'));
$body->setContent('The group represents Washington.');
$requestBody->setBody($body);
$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setAddress('AlexW@contoso.com');
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


$result = $graphServiceClient->me()->messages()->post($requestBody)->wait();

```