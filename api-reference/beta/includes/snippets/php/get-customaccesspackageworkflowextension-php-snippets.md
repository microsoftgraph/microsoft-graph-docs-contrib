---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->customAccessPackageWorkflowExtensions()->byCustomAccessPackageWorkflowExtensionId('customAccessPackageWorkflowExtension-id')->get()->wait();

```