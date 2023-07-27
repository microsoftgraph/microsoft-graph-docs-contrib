---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Organization();
$requestBody->setOdataType('#microsoft.graph.organization');

$requestBody->setMobileDeviceManagementAuthority(new MdmAuthority('intune'));



$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->patch($requestBody);


```