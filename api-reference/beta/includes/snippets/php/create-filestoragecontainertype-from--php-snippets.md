---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerType;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerBillingClassification;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeSettings;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeSettingsOverride;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeAgentSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileStorageContainerType();
$requestBody->setName('Test Trial Container');
$requestBody->setOwningAppId('11335700-9a00-4c00-84dd-0c210f203f00');
$requestBody->setBillingClassification(new FileStorageContainerBillingClassification('trial'));
$settings = new FileStorageContainerTypeSettings();
$settings->setIsItemVersioningEnabled(true);
$settings->setIsSharingRestricted(false);
$settings->setConsumingTenantOverridables(new FileStorageContainerTypeSettingsOverride('isSearchEnabled,itemMajorVersionLimit'));
$settingsAgent = new FileStorageContainerTypeAgentSettings();
$settingsAgent->setChatEmbedAllowedHosts(['https://localhost:3000', 	]);
$settings->setAgent($settingsAgent);
$requestBody->setSettings($settings);

$result = $graphServiceClient->storage()->fileStorage()->containerTypes()->post($requestBody)->wait();

```