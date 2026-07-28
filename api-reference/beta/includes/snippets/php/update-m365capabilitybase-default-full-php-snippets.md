---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\M365CapabilityBase;
use Microsoft\Graph\Beta\Generated\Models\M365CapabilityInboundAccess;
use Microsoft\Graph\Beta\Generated\Models\M365CapabilityResourceScopes;
use Microsoft\Graph\Beta\Generated\Models\M365CapabilityResourceScope;
use Microsoft\Graph\Beta\Generated\Models\M365ResourceType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new M365CapabilityBase();
$inboundAccess = new M365CapabilityInboundAccess();
$inboundAccess->setIsAllowed(true);
$inboundAccessResourceScopes = new M365CapabilityResourceScopes();
$includedM365CapabilityResourceScope1 = new M365CapabilityResourceScope();
$includedM365CapabilityResourceScope1->setResourceId('ad4fc698-74dc-4f62-9e71-ba9b591e8e74');
$includedM365CapabilityResourceScope1->setResourceType(new M365ResourceType('group'));
$includedArray []= $includedM365CapabilityResourceScope1;
$includedM365CapabilityResourceScope2 = new M365CapabilityResourceScope();
$includedM365CapabilityResourceScope2->setResourceId('070061d7-a98e-43d3-b708-0758d3738ac7');
$includedM365CapabilityResourceScope2->setResourceType(new M365ResourceType('group'));
$includedArray []= $includedM365CapabilityResourceScope2;
$inboundAccessResourceScopes->setIncluded($includedArray);

$excludedM365CapabilityResourceScope1 = new M365CapabilityResourceScope();
$excludedM365CapabilityResourceScope1->setResourceId('ad4fc698-74dc-4f62-9e71-ba9b591e8e00');
$excludedM365CapabilityResourceScope1->setResourceType(new M365ResourceType('group'));
$excludedArray []= $excludedM365CapabilityResourceScope1;
$inboundAccessResourceScopes->setExcluded($excludedArray);

$inboundAccess->setResourceScopes($inboundAccessResourceScopes);
$requestBody->setInboundAccess($inboundAccess);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->escapedDefault()->m365Capabilities()->byM365CapabilityBaseName('m365CapabilityBase-name')->patch($requestBody)->wait();

```