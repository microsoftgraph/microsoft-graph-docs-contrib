---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnassignTagPostRequestBody();
$requestBody->setTenantIds(['String', ]);



$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantTagsById('tenantTag-id')->managedTenantsUnassignTag()->post($requestBody);


```