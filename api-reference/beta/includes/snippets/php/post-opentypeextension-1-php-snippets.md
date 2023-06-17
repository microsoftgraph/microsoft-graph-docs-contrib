---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Message();
$requestBody->setSubject('Annual review');

$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('You should be proud!');


$requestBody->setBody($body);
$toRecipientsRecipient1 = new Recipient();
$toRecipientsRecipient1EmailAddress = new EmailAddress();
$toRecipientsRecipient1EmailAddress->setAddress('rufus@contoso.com');


$toRecipientsRecipient1->setEmailAddress($toRecipientsRecipient1EmailAddress);

$toRecipientsArray []= $toRecipientsRecipient1;
$requestBody->setToRecipients($toRecipientsArray);


$extensionsExtension1 = new Extension();
$extensionsExtension1->set@odatatype('microsoft.graph.openTypeExtension');

$additionalData = [
	'extensionName' => 'Com.Contoso.Referral', 
	'companyName' => 'Wingtip Toys', 
	'expirationDate' => '2015-12-30T11:00:00.000Z', 
	'dealValue' => 10000,
];
$extensionsExtension1->setAdditionalData($additionalData);



$extensionsArray []= $extensionsExtension1;
$requestBody->setExtensions($extensionsArray);




$result = $graphServiceClient->me()->messages()->post($requestBody);


```