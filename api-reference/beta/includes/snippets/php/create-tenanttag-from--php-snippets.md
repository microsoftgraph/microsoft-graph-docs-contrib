---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TenantTag();
$requestBody->setDisplayName('Support');

$requestBody->setDescription('Tenants that have purchased extended support');



$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantTags()->post($requestBody);


```