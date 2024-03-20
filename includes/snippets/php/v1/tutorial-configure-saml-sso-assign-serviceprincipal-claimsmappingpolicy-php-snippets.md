---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/92037c7a-a875-49a0-814e-8ec30f880e2e');

$graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->claimsMappingPolicies()->ref()->post($requestBody)->wait();

```