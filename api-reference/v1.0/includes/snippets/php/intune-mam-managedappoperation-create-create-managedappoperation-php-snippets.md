---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ManagedAppOperation();
$requestBody->set@odatatype('#microsoft.graph.managedAppOperation');

$requestBody->setDisplayName('Display Name value');

$requestBody->setState('State value');

$requestBody->setVersion('Version value');



$result = $graphServiceClient->deviceAppManagement()->managedAppRegistrations()->byManagedAppRegistrationId('managedAppRegistration-id')->operations()->post($requestBody);


```