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
$requestBody->setOdataType('#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession');
$data = new CustomExtensionData();
$data->setOdataType('#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData');
$additionalData = [
	'reviewDefinitionId' => '9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b',
	'reviewInstanceId' => '15eeb4df-8a4d-4f8e-9b7a-6b3e1c7f5a9d',
];
$data->setAdditionalData($additionalData);
$requestBody->setData($data);

$result = $graphServiceClient->identityGovernance()->catalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->accessPackageResources()->byAccessPackageResourceId('accessPackageResource-id')->uploadSessions()->post($requestBody)->wait();

```