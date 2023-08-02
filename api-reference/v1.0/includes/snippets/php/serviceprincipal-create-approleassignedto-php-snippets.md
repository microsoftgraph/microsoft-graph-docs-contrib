---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setPrincipalId('33ad69f9-da99-4bed-acd0-3f24235cb296');

$requestBody->setResourceId('9028d19c-26a9-4809-8e3f-20ff73e2d75e');

$requestBody->setAppRoleId('ef7437e6-4f94-4a0a-a110-a439eb2aa8f7');



$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->appRoleAssignedTo()->post($requestBody);


```