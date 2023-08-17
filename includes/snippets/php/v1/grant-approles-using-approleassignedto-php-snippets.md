---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setPrincipalId('b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94');

$requestBody->setResourceId('7ea9e944-71ce-443d-811c-71e8047b557a');

$requestBody->setAppRoleId('df021288-bdef-4463-88db-98f22de89214');



$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->appRoleAssignedTo()->post($requestBody);


```