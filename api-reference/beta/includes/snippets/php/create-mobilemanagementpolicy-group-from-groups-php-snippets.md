---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ReferenceCreate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/odata/groups(\'1a9db3ab-0acf-4808-99ae-e8ed581cb2e0\')');

$graphServiceClient->policies()->mobileAppManagementPolicies()->byMobileAppManagementPolicyId('mobileAppManagementPolicy-id')->includedGroups()->ref()->post($requestBody)->wait();

```