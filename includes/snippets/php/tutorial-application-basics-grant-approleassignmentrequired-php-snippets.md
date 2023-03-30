---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ServicePrincipal();
$requestBody->setAppRoleAssignmentRequired(true);



$requestResult = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->patch($requestBody);


```