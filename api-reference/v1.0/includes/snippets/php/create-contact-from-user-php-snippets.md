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

$emailAddressesEmailAddress1 = new EmailAddress();
$emailAddressesEmailAddress1->setAddress('pavelb@fabrikam.onmicrosoft.com');

$emailAddressesEmailAddress1->setName('Pavel Bansky');


$emailAddressesArray []= $emailAddressesEmailAddress1;
$requestBody->setEmailAddresses($emailAddressesArray);


$requestBody->setBusinessPhones(['+1 732 555 0102', ]);



$result = $graphServiceClient->me()->contacts()->post($requestBody);


```