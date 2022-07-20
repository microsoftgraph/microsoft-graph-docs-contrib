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

$emailAddresses1 = new ();
$additionalData = [
'address' => 'pavelb@contoso.onmicrosoft.com', 
'name' => 'Pavel Bansky', 
'type' => 'personal', 
];
$emailAddresses1->setAdditionalData($additionalData);



$emailAddressesArray []= $emailAddresses1;
$emailAddresses2 = new ();
$additionalData = [
'address' => 'pavelb@fabrikam.onmicrosoft.com', 
'name' => 'Pavel Bansky', 
'type' => 'other', 
'otherLabel' => 'Volunteer work', 
];
$emailAddresses2->setAdditionalData($additionalData);



$emailAddressesArray []= $emailAddresses2;
$requestBody->setEmailAddresses($emailAddressesArray);


$phonesPhone1 = new Phone();
$phonesPhone1->setNumber('+1 732 555 0102');

$phonesPhone1->setType(new PhoneType('business'));


$phonesArray []= $phonesPhone1;
$requestBody->setPhones($phonesArray);




$requestResult = $graphServiceClient->me()->contacts()->post($requestBody);


```