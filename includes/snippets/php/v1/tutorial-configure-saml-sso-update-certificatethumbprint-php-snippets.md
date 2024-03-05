---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$requestBody->setPreferredTokenSigningKeyThumbprint('5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A');

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->patch($requestBody)->wait();

```