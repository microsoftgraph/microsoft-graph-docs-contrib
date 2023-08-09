---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignLicensePostRequestBody();
$requestBody->setAddLicenses([	]);

$requestBody->setRemoveLicenses(['f30db892-07e9-47e9-837c-80727f46fd3d', '84a661c4-e949-4bd2-a560-ed7766fcaf2b', 	]);



$result = $graphServiceClient->me()->assignLicense()->post($requestBody);


```