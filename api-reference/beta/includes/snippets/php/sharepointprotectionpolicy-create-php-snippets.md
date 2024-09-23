---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SharePointProtectionPolicy;
use Microsoft\Graph\Beta\Generated\Models\SiteProtectionUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointProtectionPolicy();
$requestBody->setDisplayName('SharePoint Protection Policy');
$siteProtectionUnitsSiteProtectionUnit1 = new SiteProtectionUnit();
$siteProtectionUnitsSiteProtectionUnit1->setSiteId('contoso.sharepoint.com,febad3c2-a7b2-454c-8910-272c7bcf78fc,ba7b70d0-8ba0-4cae-b19a-7cb8c739512f');
$siteProtectionUnitsArray []= $siteProtectionUnitsSiteProtectionUnit1;
$siteProtectionUnitsSiteProtectionUnit2 = new SiteProtectionUnit();
$siteProtectionUnitsSiteProtectionUnit2->setSiteId('contoso.sharepoint.com/sites/marketing,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740');
$siteProtectionUnitsArray []= $siteProtectionUnitsSiteProtectionUnit2;
$siteProtectionUnitsSiteProtectionUnit3 = new SiteProtectionUnit();
$siteProtectionUnitsSiteProtectionUnit3->setSiteId('contoso.sharepoint.com/sites/hr,3bfc861e-9a17-4a27-9562-3d8b26c81bb5,0271110f-634f-4300-a841-3a8a2e851851');
$siteProtectionUnitsArray []= $siteProtectionUnitsSiteProtectionUnit3;
$requestBody->setSiteProtectionUnits($siteProtectionUnitsArray);


$result = $graphServiceClient->solutions()->backupRestore()->sharePointProtectionPolicies()->post($requestBody)->wait();

```