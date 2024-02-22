---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/odata/groups(\'1a9db3ab-0acf-4808-99ae-e8ed581cb2e0\')');

$graphServiceClient->policies()->mobileAppManagementPolicies()->byMobilityManagementPolicyId('mobilityManagementPolicy-id')->includedGroups()->ref()->post($requestBody)->wait();

```