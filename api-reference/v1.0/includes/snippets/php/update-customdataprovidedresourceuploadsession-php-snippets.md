---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CustomDataProvidedResourceUploadSession;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomDataProvidedResourceUploadSession();
$requestBody->setIsUploadDone(true);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->catalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->resources()->byAccessPackageResourceId('accessPackageResource-id')->uploadSessions()->byCustomDataProvidedResourceUploadSessionId('customDataProvidedResourceUploadSession-id')->patch($requestBody)->wait();

```