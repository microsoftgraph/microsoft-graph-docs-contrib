---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OAuth2PermissionGrant();
$requestBody->setClientId('b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94');

$requestBody->setConsentType('Principal');

$requestBody->setResourceId('7ea9e944-71ce-443d-811c-71e8047b557a');

$requestBody->setPrincipalId('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5');

$requestBody->setScope('User.Read.All Group.Read.All');



$result = $graphServiceClient->oauth2PermissionGrants()->post($requestBody);


```