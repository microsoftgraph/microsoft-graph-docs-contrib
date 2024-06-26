---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Contact;
use Microsoft\Graph\Generated\Models\PhysicalAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Contact();
$homeAddress = new PhysicalAddress();
$homeAddress->setStreet('123 Some street');
$homeAddress->setCity('Seattle');
$homeAddress->setState('WA');
$homeAddress->setPostalCode('98121');
$requestBody->setHomeAddress($homeAddress);
$requestBody->setBirthday(new \DateTime('1974-07-22'));

$result = $graphServiceClient->me()->contacts()->byContactId('contact-id')->patch($requestBody)->wait();

```