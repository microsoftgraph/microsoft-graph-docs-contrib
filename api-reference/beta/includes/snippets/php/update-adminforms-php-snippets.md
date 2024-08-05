---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AdminForms;
use Microsoft\Graph\Beta\Generated\Models\FormsSettings;


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

$result = $graphServiceClient->admin()->forms()->patch($requestBody)->wait();

```