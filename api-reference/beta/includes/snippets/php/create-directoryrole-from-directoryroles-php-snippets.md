---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DirectoryRole();
$requestBody->setRoleTemplateId('fe930be7-5e62-47db-91af-98c3a49a38b1');



$result = $graphServiceClient->directoryRoles()->post($requestBody);


```