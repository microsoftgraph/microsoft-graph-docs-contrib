---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Contact;
use Microsoft\Graph\Generated\Models\TypedEmailAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Contact();
$emailAddressesTypedEmailAddress1 = new TypedEmailAddress();
$emailAddressesTypedEmailAddress1->setType(new EmailType('personal'));
$emailAddressesTypedEmailAddress1->setName('Pavel Bansky');
$emailAddressesTypedEmailAddress1->setAddress('pavelb@contoso.com');
$emailAddressesArray []= $emailAddressesTypedEmailAddress1;
$emailAddressesTypedEmailAddress2 = new TypedEmailAddress();
$emailAddressesTypedEmailAddress2->setAddress('pavelb@contoso.com');
$emailAddressesTypedEmailAddress2->setName('Pavel Bansky');
$emailAddressesTypedEmailAddress2->setType(new EmailType('other'));
$emailAddressesTypedEmailAddress2->setOtherLabel('Volunteer work');
$emailAddressesArray []= $emailAddressesTypedEmailAddress2;
$requestBody->setEmailAddresses($emailAddressesArray);


$result = $graphServiceClient->me()->contacts()->byContactId('contact-id')->patch($requestBody)->wait();

```