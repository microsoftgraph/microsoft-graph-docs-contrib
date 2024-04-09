---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\NotificationMessageTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new NotificationMessageTemplate();
$requestBody->setOdataType('#microsoft.graph.notificationMessageTemplate');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDefaultLocale('Default Locale value');
$requestBody->setBrandingOptions(new NotificationTemplateBrandingOptions('includeCompanyLogo'));
$requestBody->setRoleScopeTagIds(['Role Scope Tag Ids value', 	]);

$result = $graphServiceClient->deviceManagement()->notificationMessageTemplates()->post($requestBody)->wait();

```