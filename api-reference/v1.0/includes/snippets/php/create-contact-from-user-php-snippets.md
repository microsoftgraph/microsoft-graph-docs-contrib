---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Contact;
use Microsoft\Graph\Generated\Models\EmailAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Contact();
$requestBody->setGivenName('Pavel');
$requestBody->setSurname('Bansky');
$emailAddressesEmailAddress1 = new EmailAddress();
$emailAddressesEmailAddress1->setAddress('pavelb@contoso.com');
$emailAddressesEmailAddress1->setName('Pavel Bansky');
$emailAddressesArray []= $emailAddressesEmailAddress1;
$requestBody->setEmailAddresses($emailAddressesArray);

$requestBody->setBusinessPhones(['+1 732 555 0102', ]);

$result = $graphServiceClient->me()->contacts()->post($requestBody)->wait();

```