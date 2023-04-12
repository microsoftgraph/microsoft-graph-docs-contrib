---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Contact();
$homeAddress = new PhysicalAddress();
$homeAddress->setStreet('123 Some street');

$homeAddress->setCity('Seattle');

$homeAddress->setState('WA');

$homeAddress->setPostalCode('98121');


$requestBody->setHomeAddress($homeAddress);
$requestBody->setBirthday(new DateTime('1974-07-22'));



$result = $graphServiceClient->me()->contactsById('contact-id')->patch($requestBody);


```