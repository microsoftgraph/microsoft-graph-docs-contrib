---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teams\Item\InstalledApps\Item\Upgrade\UpgradePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\TeamsAppPermissionSet;
use Microsoft\Graph\Beta\Generated\Models\TeamsAppResourceSpecificPermission;
use Microsoft\Graph\Beta\Generated\Models\TeamsAppResourceSpecificPermissionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpgradePostRequestBody();
$consentedPermissionSet = new TeamsAppPermissionSet();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1 = new TeamsAppResourceSpecificPermission();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1->setPermissionValue('Channel.Create.Group');
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1->setPermissionType(new TeamsAppResourceSpecificPermissionType('application'));
$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission1;
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2 = new TeamsAppResourceSpecificPermission();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2->setPermissionValue('ChannelMeeting.ReadBasic.Group');
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2->setPermissionType(new TeamsAppResourceSpecificPermissionType('delegated'));
$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission2;
$consentedPermissionSet->setResourceSpecificPermissions($resourceSpecificPermissionsArray);

$requestBody->setConsentedPermissionSet($consentedPermissionSet);

$graphServiceClient->teams()->byTeamId('team-id')->installedApps()->byTeamsAppInstallationId('teamsAppInstallation-id')->upgrade()->post($requestBody)->wait();

```