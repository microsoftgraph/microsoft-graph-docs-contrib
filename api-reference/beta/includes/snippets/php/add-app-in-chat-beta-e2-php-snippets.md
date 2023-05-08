---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TeamsAppInstallation();
$consentedPermissionSet = new TeamsAppPermissionSet();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1 = new TeamsAppResourceSpecificPermission();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1->setPermissionValue('OnlineMeeting.ReadBasic.Chat');

$resourceSpecificPermissionsTeamsAppResourceSpecificPermission1->setPermissionType(new TeamsAppResourceSpecificPermissionType('delegated'));


$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission1;
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2 = new TeamsAppResourceSpecificPermission();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2->setPermissionValue('OnlineMeetingIncomingAudio.Detect.Chat');

$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2->setPermissionType(new TeamsAppResourceSpecificPermissionType('delegated'));


$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission2;
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission3 = new TeamsAppResourceSpecificPermission();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission3->setPermissionValue('ChatMember.Read.Chat');

$resourceSpecificPermissionsTeamsAppResourceSpecificPermission3->setPermissionType(new TeamsAppResourceSpecificPermissionType('application'));


$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission3;
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission4 = new TeamsAppResourceSpecificPermission();
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission4->setPermissionValue('ChatMessage.Read.Chat');

$resourceSpecificPermissionsTeamsAppResourceSpecificPermission4->setPermissionType(new TeamsAppResourceSpecificPermissionType('application'));


$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission4;
$consentedPermissionSet->setResourceSpecificPermissions($resourceSpecificPermissionsArray);



$requestBody->setConsentedPermissionSet($consentedPermissionSet);
$additionalData = [
	'teamsApp@odata.bind' => 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/2b524e28-95ce-4c9b-9773-4a5bd6ec1770', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->chatsById('chat-id')->installedApps()->post($requestBody);


```