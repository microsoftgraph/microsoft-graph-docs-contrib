---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OAuth2PermissionGrant();
$requestBody->setClientId('b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94');

$requestBody->setConsentType('AllPrincipal');

$requestBody->setResourceId('7ea9e944-71ce-443d-811c-71e8047b557a');

$requestBody->setScope('User.Read.All Group.Read.All');



$requestResult = $graphServiceClient->oauth2PermissionGrants()->post($requestBody);


```