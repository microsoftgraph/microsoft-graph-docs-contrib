---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdminForms();
$requestBody->setOdataType('#microsoft.graph.adminForms');

$settings = new FormsSettings();
$settings->setOdataType('microsoft.graph.formsSettings');

$settings->setIsExternalSendFormEnabled(true);

$settings->setIsExternalShareCollaborationEnabled(false);

$settings->setIsExternalShareResultEnabled(false);

$settings->setIsExternalShareTemplateEnabled(false);

$settings->setIsRecordIdentityByDefaultEnabled(true);

$settings->setIsBingImageSearchEnabled(true);

$settings->setIsInOrgFormsPhishingScanEnabled(false);


$requestBody->setSettings($settings);


$result = $graphServiceClient->admin()->forms()->patch($requestBody);


```