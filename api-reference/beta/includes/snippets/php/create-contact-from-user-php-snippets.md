---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Contact;
use Microsoft\Graph\Generated\Models\TypedEmailAddress;
use Microsoft\Graph\Generated\Models\Phone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Contact();
$requestBody->setGivenName('Pavel');
$requestBody->setSurname('Bansky');
$emailAddressesTypedEmailAddress1 = new TypedEmailAddress();
$emailAddressesTypedEmailAddress1->setAddress('pavelb@contoso.com');
$emailAddressesTypedEmailAddress1->setName('Pavel Bansky');
$emailAddressesTypedEmailAddress1->setType(new EmailType('personal'));
$emailAddressesArray []= $emailAddressesTypedEmailAddress1;
$emailAddressesTypedEmailAddress2 = new TypedEmailAddress();
$emailAddressesTypedEmailAddress2->setAddress('pavelb@contoso.com');
$emailAddressesTypedEmailAddress2->setName('Pavel Bansky');
$emailAddressesTypedEmailAddress2->setType(new EmailType('other'));
$emailAddressesTypedEmailAddress2->setOtherLabel('Volunteer work');
$emailAddressesArray []= $emailAddressesTypedEmailAddress2;
$requestBody->setEmailAddresses($emailAddressesArray);

$phonesPhone1 = new Phone();
$phonesPhone1->setNumber('+1 732 555 0102');
$phonesPhone1->setType(new PhoneType('business'));
$phonesArray []= $phonesPhone1;
$requestBody->setPhones($phonesArray);


$result = $graphServiceClient->me()->contacts()->post($requestBody)->wait();

```