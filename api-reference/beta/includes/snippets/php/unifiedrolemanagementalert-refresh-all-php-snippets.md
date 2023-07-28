---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RefreshPostRequestBody();
$requestBody->setScopeId('/');

$requestBody->setScopeType('DirectoryRole');



$graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->refresh()->post($requestBody);


```