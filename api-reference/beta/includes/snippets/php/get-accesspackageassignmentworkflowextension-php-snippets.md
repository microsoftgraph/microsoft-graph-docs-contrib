---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->accessPackageCustomWorkflowExtensions()->byCustomCalloutExtensionId('customCalloutExtension-id')->get()->wait();

```