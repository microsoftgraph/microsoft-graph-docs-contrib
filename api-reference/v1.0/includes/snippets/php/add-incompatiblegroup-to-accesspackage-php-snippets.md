---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReferenceCreate();
$requestBody->set@odataid('https://graph.microsoft.com/v1.0/groups/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2');



$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackagesById('accessPackage-id')->incompatibleGroups()->ref()->post($requestBody);


```