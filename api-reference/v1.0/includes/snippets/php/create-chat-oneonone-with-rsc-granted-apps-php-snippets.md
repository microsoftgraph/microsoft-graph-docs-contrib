---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Chat;
use Microsoft\Graph\Generated\Models\ChatType;
use Microsoft\Graph\Generated\Models\ConversationMember;
use Microsoft\Graph\Generated\Models\AadUserConversationMember;
use Microsoft\Graph\Generated\Models\TeamsAppInstallation;
use Microsoft\Graph\Generated\Models\TeamsAppPermissionSet;
use Microsoft\Graph\Generated\Models\TeamsAppResourceSpecificPermission;
use Microsoft\Graph\Generated\Models\TeamsAppResourceSpecificPermissionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Chat();
$requestBody->setChatType(new ChatType('oneOnOne'));
$membersConversationMember1 = new AadUserConversationMember();
$membersConversationMember1->setOdataType('#microsoft.graph.aadUserConversationMember');
$membersConversationMember1->setRoles(['owner', 	]);
$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'4b822dfc-2864-44e6-aa1e-7e0e8552168f\')',
];
$membersConversationMember1->setAdditionalData($additionalData);
$membersArray []= $membersConversationMember1;
$membersConversationMember2 = new AadUserConversationMember();
$membersConversationMember2->setOdataType('#microsoft.graph.aadUserConversationMember');
$membersConversationMember2->setRoles(['owner', 	]);
$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/v1.0/users(\'6d1e1501-7a3d-45b7-b71b-68d372e5ce14\')',
];
$membersConversationMember2->setAdditionalData($additionalData);
$membersArray []= $membersConversationMember2;
$requestBody->setMembers($membersArray);

$installedAppsTeamsAppInstallation1 = new TeamsAppInstallation();
$installedAppsTeamsAppInstallation1ConsentedPermissionSet = new TeamsAppPermissionSet();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1 = new TeamsAppResourceSpecificPermission();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1->setPermissionValue('ChatMessage.Read.Chat');
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1->setPermissionType(new TeamsAppResourceSpecificPermissionType('application'));
$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission1;
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2 = new TeamsAppResourceSpecificPermission();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2->setPermissionValue('OnlineMeeting.ReadBasic.Chat');
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2->setPermissionType(new TeamsAppResourceSpecificPermissionType('application'));
$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission2;
$installedAppsTeamsAppInstallation1ConsentedPermissionSet->setResourceSpecificPermissions($resourceSpecificPermissionsArray);

$installedAppsTeamsAppInstallation1->setConsentedPermissionSet($installedAppsTeamsAppInstallation1ConsentedPermissionSet);
$additionalData = [
'teamsApp@odata.bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/8e55a7b1-6766-4f0a-8610-ecacfe3d569a',
];
$installedAppsTeamsAppInstallation1->setAdditionalData($additionalData);
$installedAppsArray []= $installedAppsTeamsAppInstallation1;
$requestBody->setInstalledApps($installedAppsArray);


$result = $graphServiceClient->chats()->post($requestBody)->wait();

```