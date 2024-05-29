---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\UserScopeTeamsAppInstallation;
use Microsoft\Graph\Beta\Generated\Models\TeamsAppPermissionSet;
use Microsoft\Graph\Beta\Generated\Models\TeamsAppResourceSpecificPermission;
use Microsoft\Graph\Beta\Generated\Models\TeamsAppResourceSpecificPermissionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserScopeTeamsAppInstallation();
$consentedPermissionSet = new TeamsAppPermissionSet();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1 = new TeamsAppResourceSpecificPermission();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1->setPermissionValue('TeamsActivity.Send.User');
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1->setPermissionType(new TeamsAppResourceSpecificPermissionType('application'));
$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission1;
$consentedPermissionSet->setResourceSpecificPermissions($resourceSpecificPermissionsArray);

$requestBody->setConsentedPermissionSet($consentedPermissionSet);
$additionalData = [
'teamsApp@odata.bind' => 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->installedApps()->post($requestBody)->wait();

```