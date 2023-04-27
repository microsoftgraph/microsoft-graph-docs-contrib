---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TenantTag();
$requestBody->setDisplayName('Onboarding');

$requestBody->setDescription('Tenants that we are currently onboarding');



$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantTagsById('tenantTag-id')->patch($requestBody);


```