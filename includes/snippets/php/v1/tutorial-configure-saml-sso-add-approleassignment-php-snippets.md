---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setPrincipalId('040f9599-7c0f-4f94-aa75-8394c4c6ea9b');

$requestBody->setPrincipalType('User');

$requestBody->setAppRoleId('3a84e31e-bffa-470f-b9e6-754a61e4dc63');

$requestBody->setResourceId('a750f6cf-2319-464a-bcc3-456926736a91');



$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->appRoleAssignments()->post($requestBody);


```