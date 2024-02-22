---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$requestBody->setPreferredSingleSignOnMode('saml');

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->patch($requestBody)->wait();

```