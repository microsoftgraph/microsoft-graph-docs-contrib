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
$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2->setPermissionValue('ChatMessage.Read.Chat');

$resourceSpecificPermissionsTeamsAppResourceSpecificPermission2->setPermissionType(new TeamsAppResourceSpecificPermissionType('application'));


$resourceSpecificPermissionsArray []= $resourceSpecificPermissionsTeamsAppResourceSpecificPermission2;
$consentedPermissionSet->setResourceSpecificPermissions($resourceSpecificPermissionsArray);



$requestBody->setConsentedPermissionSet($consentedPermissionSet);
$additionalData = [
	'teamsApp@odata.bind' => 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/7023576d-9e40-47ca-9cf2-daae6838e785', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teamsById('team-id')->installedApps()->post($requestBody);


```