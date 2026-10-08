---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\FileStorageContainerType;
use Microsoft\Graph\Generated\Models\FileStorageContainerBillingClassification;
use Microsoft\Graph\Generated\Models\FileStorageContainerTypeSettings;
use Microsoft\Graph\Generated\Models\FileStorageContainerTypeSettingsOverride;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileStorageContainerType();
$requestBody->setName('Test Trial Container');
$requestBody->setOwningAppId('11335700-9a00-4c00-84dd-0c210f203f00');
$requestBody->setBillingClassification(new FileStorageContainerBillingClassification('trial'));
$settings = new FileStorageContainerTypeSettings();
$settings->setIsItemVersioningEnabled(true);
$settings->setIsSharingRestricted(false);
$settings->setConsumingTenantOverridables(new FileStorageContainerTypeSettingsOverride('isSearchEnabled,itemMajorVersionLimit'));
$additionalData = [
	'agent' => [
		'chatEmbedAllowedHosts' => [
'https://localhost:3000', ],
	],
];
$settings->setAdditionalData($additionalData);
$requestBody->setSettings($settings);

$result = $graphServiceClient->storage()->fileStorage()->containerTypes()->post($requestBody)->wait();

```