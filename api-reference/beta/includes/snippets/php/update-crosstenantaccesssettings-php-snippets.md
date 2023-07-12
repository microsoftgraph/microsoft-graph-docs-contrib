---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CrossTenantAccessSettings();
$requestBody->set@odatatype('#microsoft.graph.networkaccess.crossTenantAccessSettings');

$requestBody->setNetworkPacketTaggingStatus(new Status('enabled'));



$result = $graphServiceClient->networkAccess()->settings()->crossTenantAccess()->patch($requestBody);


```