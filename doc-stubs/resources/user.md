---
title: "user resource type"
description: "Represents an Azure Active Directory user object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure Active Directory user object.


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List users](../api/user-list.md)|[user](../resources/user.md) collection|Get a list of the [user](../resources/user.md) objects and their properties.|
|[Create user](../api/user-post-users.md)|[user](../resources/user.md)|Create a new [user](../resources/user.md) object.|
|[Get user](../api/user-get.md)|[user](../resources/user.md)|Read the properties and relationships of a [user](../resources/user.md) object.|
|[Update user](../api/user-update.md)|[user](../resources/user.md)|Update the properties of a [user](../resources/user.md) object.|
|[Delete user](../api/user-delete.md)|None|Deletes a [user](../resources/user.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aboutMe|String|**TODO: Add Description**|
|accountEnabled|Boolean|**TODO: Add Description**|
|ageGroup|String|**TODO: Add Description**|
|assignedLicenses|[assignedLicense](../resources/assignedlicense.md) collection|**TODO: Add Description**|
|assignedPlans|[assignedPlan](../resources/assignedplan.md) collection|**TODO: Add Description**|
|birthday|DateTimeOffset|**TODO: Add Description**|
|businessPhones|String collection|**TODO: Add Description**|
|city|String|**TODO: Add Description**|
|companyName|String|**TODO: Add Description**|
|consentProvidedForMinor|String|**TODO: Add Description**|
|country|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|creationType|String|**TODO: Add Description**|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|**TODO: Add Description**|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|department|String|**TODO: Add Description**|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|
|deviceKeys|[deviceKey](../resources/devicekey.md) collection|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|employeeHireDate|DateTimeOffset|**TODO: Add Description**|
|employeeId|String|**TODO: Add Description**|
|employeeOrgData|[employeeOrgData](../resources/employeeorgdata.md)|**TODO: Add Description**|
|employeeType|String|**TODO: Add Description**|
|externalUserState|String|**TODO: Add Description**|
|externalUserStateChangeDateTime|String|**TODO: Add Description**|
|faxNumber|String|**TODO: Add Description**|
|givenName|String|**TODO: Add Description**|
|hireDate|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|identities|[objectIdentity](../resources/objectidentity.md) collection|**TODO: Add Description**|
|imAddresses|String collection|**TODO: Add Description**|
|infoCatalogs|String collection|**TODO: Add Description**|
|interests|String collection|**TODO: Add Description**|
|isManagementRestricted|Boolean|**TODO: Add Description**|
|isResourceAccount|Boolean|**TODO: Add Description**|
|jobTitle|String|**TODO: Add Description**|
|lastPasswordChangeDateTime|DateTimeOffset|**TODO: Add Description**|
|legalAgeGroupClassification|String|**TODO: Add Description**|
|licenseAssignmentStates|[licenseAssignmentState](../resources/licenseassignmentstate.md) collection|**TODO: Add Description**|
|mail|String|**TODO: Add Description**|
|mailboxSettings|[mailboxSettings](../resources/mailboxsettings.md)|**TODO: Add Description**|
|mailNickname|String|**TODO: Add Description**|
|mobilePhone|String|**TODO: Add Description**|
|mySite|String|**TODO: Add Description**|
|officeLocation|String|**TODO: Add Description**|
|onPremisesDistinguishedName|String|**TODO: Add Description**|
|onPremisesDomainName|String|**TODO: Add Description**|
|onPremisesExtensionAttributes|[onPremisesExtensionAttributes](../resources/onpremisesextensionattributes.md)|**TODO: Add Description**|
|onPremisesImmutableId|String|**TODO: Add Description**|
|onPremisesLastSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](../resources/onpremisesprovisioningerror.md) collection|**TODO: Add Description**|
|onPremisesSamAccountName|String|**TODO: Add Description**|
|onPremisesSecurityIdentifier|String|**TODO: Add Description**|
|onPremisesSyncEnabled|Boolean|**TODO: Add Description**|
|onPremisesUserPrincipalName|String|**TODO: Add Description**|
|otherMails|String collection|**TODO: Add Description**|
|passwordPolicies|String|**TODO: Add Description**|
|passwordProfile|[passwordProfile](../resources/passwordprofile.md)|**TODO: Add Description**|
|pastProjects|String collection|**TODO: Add Description**|
|postalCode|String|**TODO: Add Description**|
|preferredDataLocation|String|**TODO: Add Description**|
|preferredLanguage|String|**TODO: Add Description**|
|preferredName|String|**TODO: Add Description**|
|provisionedPlans|[provisionedPlan](../resources/provisionedplan.md) collection|**TODO: Add Description**|
|proxyAddresses|String collection|**TODO: Add Description**|
|refreshTokensValidFromDateTime|DateTimeOffset|**TODO: Add Description**|
|responsibilities|String collection|**TODO: Add Description**|
|schools|String collection|**TODO: Add Description**|
|showInAddressList|Boolean|**TODO: Add Description**|
|signInActivity|[signInActivity](../resources/signinactivity.md)|**TODO: Add Description**|
|signInSessionsValidFromDateTime|DateTimeOffset|**TODO: Add Description**|
|skills|String collection|**TODO: Add Description**|
|state|String|**TODO: Add Description**|
|streetAddress|String|**TODO: Add Description**|
|surname|String|**TODO: Add Description**|
|temporaryAccessPass|[temporaryAccessPass](../resources/temporaryaccesspass.md)|**TODO: Add Description**|
|usageLocation|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|
|userType|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activities|[userActivity](../resources/useractivity.md) collection|**TODO: Add Description**|
|agreementAcceptances|[agreementAcceptance](../resources/agreementacceptance.md) collection|**TODO: Add Description**|
|analytics|[userAnalytics](../resources/useranalytics.md)|**TODO: Add Description**|
|appConsentRequestsForApproval|[appConsentRequest](../resources/appconsentrequest.md) collection|**TODO: Add Description**|
|appRoleAssignments|[appRoleAssignment](../resources/approleassignment.md) collection|**TODO: Add Description**|
|approvals|[approval](../resources/approval.md) collection|**TODO: Add Description**|
|authentication|[authentication](../resources/authentication.md)|**TODO: Add Description**|
|calendar|[calendar](../resources/calendar.md)|**TODO: Add Description**|
|calendarGroups|[calendarGroup](../resources/calendargroup.md) collection|**TODO: Add Description**|
|calendars|[calendar](../resources/calendar.md) collection|**TODO: Add Description**|
|calendarView|[event](../resources/event.md) collection|**TODO: Add Description**|
|chats|[chat](../resources/chat.md) collection|**TODO: Add Description**|
|contactFolders|[contactFolder](../resources/contactfolder.md) collection|**TODO: Add Description**|
|contacts|[contact](../resources/contact.md) collection|**TODO: Add Description**|
|createdObjects|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|decoratedProfile|[DecoratedProfile](../resources/decoratedprofile.md)|**TODO: Add Description**|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/deviceenrollmentconfiguration.md) collection|Get enrollment configurations targeted to the user|
|deviceManagementTroubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for this user.|
|devices|[device](../resources/device.md) collection|**TODO: Add Description**|
|directReports|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|drive|[drive](../resources/drive.md)|**TODO: Add Description**|
|drives|[drive](../resources/drive.md) collection|**TODO: Add Description**|
|events|[event](../resources/event.md) collection|**TODO: Add Description**|
|extensions|[extension](../resources/extension.md) collection|**TODO: Add Description**|
|followedSites|[site](../resources/site.md) collection|**TODO: Add Description**|
|inferenceClassification|[inferenceClassification](../resources/inferenceclassification.md)|**TODO: Add Description**|
|informationProtection|[informationProtection](../resources/informationprotection.md)|**TODO: Add Description**|
|insights|[itemInsights](../resources/iteminsights.md)|**TODO: Add Description**|
|joinedGroups|[group](../resources/group.md) collection|**TODO: Add Description**|
|joinedTeams|[team](../resources/team.md) collection|**TODO: Add Description**|
|licenseDetails|[licenseDetails](../resources/licensedetails.md) collection|**TODO: Add Description**|
|mailFolders|[mailFolder](../resources/mailfolder.md) collection|**TODO: Add Description**|
|managedAppRegistrations|[managedAppRegistration](../resources/managedappregistration.md) collection|Zero or more managed app registrations that belong to the user.|
|managedDevices|[managedDevice](../resources/manageddevice.md) collection|The managed devices associated with the user.|
|manager|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|messages|[message](../resources/message.md) collection|**TODO: Add Description**|
|mobileAppIntentAndStates|[mobileAppIntentAndState](../resources/mobileappintentandstate.md) collection|The list of troubleshooting events for this user.|
|mobileAppTroubleshootingEvents|[mobileAppTroubleshootingEvent](../resources/mobileapptroubleshootingevent.md) collection|The list of mobile app troubleshooting events for this user.|
|notes|[note](../resources/note.md) collection|**TODO: Add Description**|
|notifications|[notification](../resources/notification.md) collection|**TODO: Add Description**|
|oauth2PermissionGrants|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|**TODO: Add Description**|
|onenote|[onenote](../resources/onenote.md)|**TODO: Add Description**|
|onlineMeetings|[onlineMeeting](../resources/onlinemeeting.md) collection|**TODO: Add Description**|
|outlook|[outlookUser](../resources/outlookuser.md)|**TODO: Add Description**|
|ownedDevices|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|ownedObjects|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|pendingAccessReviewInstances|[accessReviewInstance](../resources/accessreviewinstance.md) collection|**TODO: Add Description**|
|people|[person](../resources/person.md) collection|**TODO: Add Description**|
|photo|[profilePhoto](../resources/profilephoto.md)|**TODO: Add Description**|
|photos|[profilePhoto](../resources/profilephoto.md) collection|**TODO: Add Description**|
|planner|[plannerUser](../resources/planneruser.md)|**TODO: Add Description**|
|presence|[presence](../resources/presence.md)|**TODO: Add Description**|
|profile|[profile](../resources/profile.md)|**TODO: Add Description**|
|registeredDevices|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|resourceTenantDataSharingConsents|[resourceTenantDataSharingConsent](../resources/resourcetenantdatasharingconsent.md) collection|**TODO: Add Description**|
|roleManagement|[principalBoundRoleManagement](../resources/principalboundrolemanagement.md)|**TODO: Add Description**|
|scopedRoleMemberOf|[scopedRoleMembership](../resources/scopedrolemembership.md) collection|**TODO: Add Description**|
|serviceProvisioningInfo|[serviceInfo](../resources/serviceinfo.md) collection|**TODO: Add Description**|
|settings|[userSettings](../resources/usersettings.md)|**TODO: Add Description**|
|tasks|[tasks](../resources/tasks.md)|**TODO: Add Description**|
|teamwork|[userTeamwork](../resources/userteamwork.md)|**TODO: Add Description**|
|todo|[todo](../resources/todo.md)|**TODO: Add Description**|
|transitiveMemberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|transitiveReports|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|transitiveRoleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|**TODO: Add Description**|
|usageRights|[usageRight](../resources/usageright.md) collection|**TODO: Add Description**|
|windowsInformationProtectionDeviceRegistrations|[windowsInformationProtectionDeviceRegistration](../resources/windowsinformationprotectiondeviceregistration.md) collection|Zero or more WIP device registrations that belong to the user.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "aboutMe": "String",
  "accountEnabled": "Boolean",
  "ageGroup": "String",
  "assignedLicenses": [
    {
      "@odata.type": "microsoft.graph.assignedLicense"
    }
  ],
  "assignedPlans": [
    {
      "@odata.type": "microsoft.graph.assignedPlan"
    }
  ],
  "birthday": "String (timestamp)",
  "businessPhones": [
    "String"
  ],
  "city": "String",
  "companyName": "String",
  "consentProvidedForMinor": "String",
  "country": "String",
  "createdDateTime": "String (timestamp)",
  "creationType": "String",
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "department": "String",
  "deviceEnrollmentLimit": "Integer",
  "deviceKeys": [
    {
      "@odata.type": "microsoft.graph.deviceKey"
    }
  ],
  "displayName": "String",
  "employeeHireDate": "String (timestamp)",
  "employeeId": "String",
  "employeeOrgData": {
    "@odata.type": "microsoft.graph.employeeOrgData"
  },
  "employeeType": "String",
  "externalUserState": "String",
  "externalUserStateChangeDateTime": "String",
  "faxNumber": "String",
  "givenName": "String",
  "hireDate": "String (timestamp)",
  "identities": [
    {
      "@odata.type": "microsoft.graph.objectIdentity"
    }
  ],
  "imAddresses": [
    "String"
  ],
  "infoCatalogs": [
    "String"
  ],
  "interests": [
    "String"
  ],
  "isManagementRestricted": "Boolean",
  "isResourceAccount": "Boolean",
  "jobTitle": "String",
  "lastPasswordChangeDateTime": "String (timestamp)",
  "legalAgeGroupClassification": "String",
  "licenseAssignmentStates": [
    {
      "@odata.type": "microsoft.graph.licenseAssignmentState"
    }
  ],
  "mail": "String",
  "mailboxSettings": {
    "@odata.type": "microsoft.graph.mailboxSettings"
  },
  "mailNickname": "String",
  "mobilePhone": "String",
  "mySite": "String",
  "officeLocation": "String",
  "onPremisesDistinguishedName": "String",
  "onPremisesDomainName": "String",
  "onPremisesExtensionAttributes": {
    "@odata.type": "microsoft.graph.onPremisesExtensionAttributes"
  },
  "onPremisesImmutableId": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesProvisioningErrors": [
    {
      "@odata.type": "microsoft.graph.onPremisesProvisioningError"
    }
  ],
  "onPremisesSamAccountName": "String",
  "onPremisesSecurityIdentifier": "String",
  "onPremisesSyncEnabled": "Boolean",
  "onPremisesUserPrincipalName": "String",
  "otherMails": [
    "String"
  ],
  "passwordPolicies": "String",
  "passwordProfile": {
    "@odata.type": "microsoft.graph.passwordProfile"
  },
  "pastProjects": [
    "String"
  ],
  "postalCode": "String",
  "preferredDataLocation": "String",
  "preferredLanguage": "String",
  "preferredName": "String",
  "provisionedPlans": [
    {
      "@odata.type": "microsoft.graph.provisionedPlan"
    }
  ],
  "proxyAddresses": [
    "String"
  ],
  "refreshTokensValidFromDateTime": "String (timestamp)",
  "responsibilities": [
    "String"
  ],
  "schools": [
    "String"
  ],
  "showInAddressList": "Boolean",
  "signInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
  "signInSessionsValidFromDateTime": "String (timestamp)",
  "skills": [
    "String"
  ],
  "state": "String",
  "streetAddress": "String",
  "surname": "String",
  "temporaryAccessPass": {
    "@odata.type": "microsoft.graph.temporaryAccessPass"
  },
  "usageLocation": "String",
  "userPrincipalName": "String",
  "userType": "String"
}
```

