---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Organization();
$requestBody->set@odatatype('#microsoft.graph.organization');

$requestBody->setMobileDeviceManagementAuthority(new MdmAuthority('intune'));



$result = $graphServiceClient->organization()->byOrganization()Id('organization-id')->patch($requestBody);


```