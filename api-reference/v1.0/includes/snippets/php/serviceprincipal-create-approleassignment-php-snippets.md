---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setPrincipalId('9028d19c-26a9-4809-8e3f-20ff73e2d75e');

$requestBody->setResourceId('8fce32da-1246-437b-99cd-76d1d4677bd5');

$requestBody->setAppRoleId('498476ce-e0fe-48b0-b801-37ba7e2685c6');



$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->appRoleAssignments()->post($requestBody);


```