---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CustomDataProvidedResourceUploadSession;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionData;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomDataProvidedResourceUploadSession();
$requestBody->setSource('BuildingAccessData');
$requestBody->setType('#microsoft.graph.accessReviewDataUploadTriggerCallbackData');
$data = new CustomExtensionData();
$additionalData = [
	'accessReviewId' => '9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b',
	'accessReviewInstanceId' => '6a9b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b',
];
$data->setAdditionalData($additionalData);
$requestBody->setData($data);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->accessPackageResources()->byAccessPackageResourceId('accessPackageResource-id')->uploadSessions()->post($requestBody)->wait();

```