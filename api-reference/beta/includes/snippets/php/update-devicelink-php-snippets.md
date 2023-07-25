---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceLink();
$requestBody->setName('Backup Link');



$result = $graphServiceClient->networkAccess()->connectivity()->branches()->byBrancheId('branchSite-id')->deviceLinks()->byDeviceLinkId('deviceLink-id')->patch($requestBody);


```