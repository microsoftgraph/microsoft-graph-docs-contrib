---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Contact();
$emailAddresses1 = new ();
$additionalData = [
'type' => 'personal', 
'name' => 'Pavel Bansky', 
'address' => 'pavelb@adatum.onmicrosoft.com', 
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




$graphServiceClient->me()->contactsById('contact-id')->patch($requestBody);


```