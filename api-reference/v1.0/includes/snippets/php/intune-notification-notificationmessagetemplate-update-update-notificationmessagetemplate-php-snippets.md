---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new NotificationMessageTemplate();
$requestBody->set@odatatype('#microsoft.graph.notificationMessageTemplate');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDefaultLocale('Default Locale value');

$requestBody->setBrandingOptions(new NotificationTemplateBrandingOptions('includecompanylogo'));

$requestBody->setRoleScopeTagIds(['Role Scope Tag Ids value', ]);



$result = $graphServiceClient->deviceManagement()->notificationMessageTemplates()->byNotificationMessageTemplateId('notificationMessageTemplate-id')->patch($requestBody);


```