---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new NotificationMessageTemplate();
$requestBody->setOdataType('#microsoft.graph.notificationMessageTemplate');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDefaultLocale('Default Locale value');

$requestBody->setBrandingOptions(new NotificationTemplateBrandingOptions('includeCompanyLogo'));

$requestBody->setRoleScopeTagIds(['Role Scope Tag Ids value', 	]);



$result = $graphServiceClient->deviceManagement()->notificationMessageTemplates()->byNotificationMessageTemplateId('notificationMessageTemplate-id')->patch($requestBody);


```