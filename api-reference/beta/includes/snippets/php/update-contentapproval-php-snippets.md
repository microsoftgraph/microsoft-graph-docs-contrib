---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ComplianceChange();
$requestBody->set@odatatype('#microsoft.graph.windowsUpdates.contentApproval');

$requestBody->setIsRevoked(true);



$result = $graphServiceClient->admin()->windows()->updates()->updatePoliciesById('updatePolicy-id')->complianceChangesById('complianceChange-id')->patch($requestBody);


```