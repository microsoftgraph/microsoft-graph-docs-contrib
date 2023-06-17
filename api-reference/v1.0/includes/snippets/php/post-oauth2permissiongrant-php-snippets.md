---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OAuth2PermissionGrant();
$requestBody->setClientId('ef969797-201d-4f6b-960c-e9ed5f31dab5');

$requestBody->setConsentType('AllPrincipals');

$requestBody->setResourceId('943603e4-e787-4fe9-93d1-e30f749aae39');

$requestBody->setScope('DelegatedPermissionGrant.ReadWrite.All');



$result = $graphServiceClient->oauth2PermissionGrants()->post($requestBody);


```