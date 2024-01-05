---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new M365AppsInstallationOptions();
$requestBody->setUpdateChannel(new AppsUpdateChannelType('current'));

$result = $graphServiceClient->admin()->microsoft365Apps()->installationOptions()->patch($requestBody)->wait();

```