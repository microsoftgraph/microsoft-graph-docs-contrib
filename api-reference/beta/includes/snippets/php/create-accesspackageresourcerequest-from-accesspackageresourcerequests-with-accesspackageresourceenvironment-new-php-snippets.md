---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setCatalogId('de9315c1-272b-4905-924b-cc112ca180c7');

$accessPackageResource = new AccessPackageResource();
$accessPackageResource->setDisplayName('Community Outreach');

$accessPackageResource->setDescription('https://contoso.sharepoint.com/sites/CSR');

$accessPackageResource->setResourceType('SharePoint Online Site');

$accessPackageResource->setOriginId('https://contoso.sharepoint.com/sites/CSR');

$accessPackageResource->setOriginSystem('SharePointOnline');

$accessPackageResourceAccessPackageResourceEnvironment = new AccessPackageResourceEnvironment();
$accessPackageResourceAccessPackageResourceEnvironment->setOriginId('https://contoso-admin.sharepoint.com/');


$accessPackageResource->setAccessPackageResourceEnvironment($accessPackageResourceAccessPackageResourceEnvironment);

$requestBody->setAccessPackageResource($accessPackageResource);
$requestBody->setRequestType('AdminAdd');



$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceRequests()->post($requestBody);


```