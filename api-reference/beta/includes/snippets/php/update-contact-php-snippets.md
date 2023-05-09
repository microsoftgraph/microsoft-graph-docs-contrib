---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Contact();
$emailAddressesTypedEmailAddress1 = new TypedEmailAddress();
$emailAddressesTypedEmailAddress1->setType(new EmailType('personal'));

$emailAddressesTypedEmailAddress1->setName('Pavel Bansky');

$emailAddressesTypedEmailAddress1->setAddress('pavelb@adatum.onmicrosoft.com');


$emailAddressesArray []= $emailAddressesTypedEmailAddress1;
$emailAddressesTypedEmailAddress2 = new TypedEmailAddress();
$emailAddressesTypedEmailAddress2->setAddress('pavelb@fabrikam.onmicrosoft.com');

$emailAddressesTypedEmailAddress2->setName('Pavel Bansky');

$emailAddressesTypedEmailAddress2->setType(new EmailType('other'));

$emailAddressesTypedEmailAddress2->setOtherLabel('Volunteer work');


$emailAddressesArray []= $emailAddressesTypedEmailAddress2;
$requestBody->setEmailAddresses($emailAddressesArray);




$result = $graphServiceClient->me()->contactsById('contact-id')->patch($requestBody);


```