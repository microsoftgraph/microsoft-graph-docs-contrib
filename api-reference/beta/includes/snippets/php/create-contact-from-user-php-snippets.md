---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Contact();
$requestBody->setGivenName('Pavel');

$requestBody->setSurname('Bansky');

$emailAddressesTypedEmailAddress1 = new TypedEmailAddress();
$emailAddressesTypedEmailAddress1->setAddress('pavelb@contoso.onmicrosoft.com');

$emailAddressesTypedEmailAddress1->setName('Pavel Bansky');

$emailAddressesTypedEmailAddress1->setType(new EmailType('personal'));


$emailAddressesArray []= $emailAddressesTypedEmailAddress1;
$emailAddressesTypedEmailAddress2 = new TypedEmailAddress();
$emailAddressesTypedEmailAddress2->setAddress('pavelb@fabrikam.onmicrosoft.com');

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




$result = $graphServiceClient->me()->contacts()->post($requestBody);


```