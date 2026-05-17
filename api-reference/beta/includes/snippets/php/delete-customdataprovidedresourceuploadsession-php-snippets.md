---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->catalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->accessPackageResources()->byAccessPackageResourceId('accessPackageResource-id')->uploadSessions()->byCustomDataProvidedResourceUploadSessionId('customDataProvidedResourceUploadSession-id')->delete()->wait();

```