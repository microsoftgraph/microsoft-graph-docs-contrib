---
title: "Changelog for Microsoft Graph"
description: "This changelog covers what's changed in Microsoft Graph, including the v1.0 and beta endpoint Microsoft Graph APIs."
author: "MSGraphDocsVteam"
localization_priority: Priority
---

# Changelog for Microsoft Graph

This changelog covers specific API-level changes in Microsoft Graph v1.0 and beta.

For a summary of the value of these API changes, as well as recent tools, components, guidance, and tutorial additions, see [What's new in Microsoft Graph](whats-new-overview.md).

## November 2020

### Change notifications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added [printTaskDefinition](/graph/api/resources/printtaskdefinition?view=graph-rest-beta) to the resources supported for [change notifications](/graph/webhooks).|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| Addition | beta | Added the **spa** property to the [application](/graph/api/resources/application?view=graph-rest-beta) resource. |

### Teamwork

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added support for [resource-specific consent](https://aka.ms/teams-rsc) (RSC) permissions to v1.0 APIs. |
| Addition | v1.0 | Added [read channel message APIs](/graph/api/resources/chatmessage?view=graph-rest-1.0). |

## October 2020

### Applications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the **AlternateIdLogin** field to the [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-1.0) policy definition.|
| Addition | beta | Added the **AlternateIdLogin** field to the [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-beta) policy definition.|
| Addition | beta and v1.0 | Added [verified publisher](/graph/api/resources/verifiedPublisher) properties to the [application](/graph/api/resources/application) and [servicePrincipal](/graph/api/resources/serviceprincipal) resources. |
| Addition | beta and v1.0 | Added [setVerifiedPublisher](/graph/api/application-setverifiedpublisher) and [unsetVerifiedPublisher](/graph/api/application-unsetverifiedpublisher) methods to the [application](/graph/api/resources/application) resource. |

### Change notifications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added [lifecycle notifications](./webhooks-lifecycle.md) for personal [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-1.0), [contact](/graph/api/resources/contact?view=graph-rest-1.0), [event](/graph/api/resources/event?view=graph-rest-1.0), and [message](/graph/api/resources/message?view=graph-rest-1.0).|

### Cloud communications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the **role** property to the [meetingParticipantInfo](/graph/api/resources/meetingParticipantInfo?view=graph-rest-beta) complex type.|
| Addition | beta | Added new action to retrieve an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta) by JoinWebUrl.|

### Devices and apps | Cloud printing

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Change | beta | Added new permission requirements to: <ul><li>[Get printUsageSummaryByPrinter](/graph/api/printusagesummarybyprinter-get.md?view=graph-rest-beta)</li><li>[getPrinterArchivedPrintJobs](/graph/api/reports-getprinterarchivedprintjobs.md?view=graph-rest-beta)</li><li>[List dailyPrintUsageSummariesByPrinter](/graph/api/reportroot-list-dailyprintusagesummariesbyprinter.md?view=graph-rest-beta)</li><li>[List monthlyPrintUsageSummariesByPrinter](/graph/api/reportroot-list-monthlyprintusagesummariesbyprinter.md?view=graph-rest-beta)</li><li>[Get printUsageSummaryByUser](/graph/api/printusagesummarybyuser-get.md?view=graph-rest-beta)</li><li>[getUserArchivedPrintJobs](/graph/api/reports-getuserarchivedprintjobs.md?view=graph-rest-beta)</li><li>[getGroupArchivedPrintJobs](/graph/api/reports-getgrouparchivedprintjobs.md?view=graph-rest-beta)</li><li>[List dailyPrintUsageSummariesByUser](/graph/api/reportroot-list-dailyprintusagesummariesbyuser.md?view=graph-rest-beta)</li><li>[List monthlyPrintUsageSummariesByUser](/graph/api/reportroot-list-monthlyprintusagesummariesbyuser.md?view=graph-rest-beta)</li></ul>|
| Change | beta | Removed **allowedUsers** property on [printer](/graph/api/resources/printer?view=graph-rest-beta) resource. | 
| Change | beta | Removed **allowedGroups** property on [printer](/graph/api/resources/printer?view=graph-rest-beta) resource. |
| Addition | beta | Added the [createUploadSession](/graph/api/printdocument-createuploadsession?view=graph-rest-beta) action for printDocument. | 
| Change | beta | Deprecated **uploadData** action on [printDocument](/graph/api/resources/printdocument?view=graph-rest-beta) resource. | 
| Change | beta | Added properties to [printJob](/graph/api/resources/printjob?view=graph-rest-beta) resource: <br/><ul><li>isFetchable</li><li>redirectedFrom</li><li>redirectedTo</li><li>configuration</li></ul> | 
| Change | beta | Deprecated **configuration** property on [printDocument](/graph/api/resources/printdocument?view=graph-rest-beta) resource. | 
| Change | beta | Added **shares** navigation property on [printer](/graph/api/resources/printer?view=graph-rest-beta) resource. | 
| Change | beta | **resetDefaults** action on [printer](/graph/api/resources/printer?view=graph-rest-beta) resource has been renamed to [restoreFactoryDefaults](/graph/api/printer-restorefactorydefaults?view=graph-rest-beta). | 
| Change | beta | **startPrintJob** action on [printJob](/graph/api/resources/printjob?view=graph-rest-beta) resource has been renamed to [start](/graph/api/printjob-start?view=graph-rest-beta). | 
| Change | beta | **cancelPrintJob** action on [printJob](/graph/api/resources/printjob?view=graph-rest-beta) resource has been renamed to [cancel](/graph/api/printjob-cancel?view=graph-rest-beta). | 
| Change | beta | Deprecated **getCapabilities** function on [printer](/graph/api/resources/printer?view=graph-rest-beta) resource. | 
| Change | beta | Deprecated **allowedUsers** property on [printer](/graph/api/resources/printer?view=graph-rest-beta) resource. | 
| Change | beta | Deprecated **allowedGroups** property on [printer](/graph/api/resources/printer?view=graph-rest-beta) resource. |
| Change | beta | Added **feedOrientations** property to [printerCapabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta) resource. | 
| Change | beta | Deprecated **feedDirections** property on [printerCapabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta) resource. | 
| Change | beta | Added **details** property to [printerStatus](/graph/api/resources/printerstatus?view=graph-rest-beta) resource. | 
| Change | beta | Deprecated **processingStateReasons** property on [printerStatus](/graph/api/resources/printerstatus?view=graph-rest-beta) resource. | 
| Change | beta | Renamed properties on [printerStatus](/graph/api/resources/printerstatus?view=graph-rest-beta) resource: <br/><ul><li>processingState -> state</li><li>processingStateDescription -> description</li></ul> |  
| Change | beta | Added **details** property to [printJobStatus](/graph/api/resources/printjobstatus?view=graph-rest-beta) resource. | 
| Change | beta | Renamed properties on [printJobStatus](/graph/api/resources/printjobstatus?view=graph-rest-beta) resource: <br/><ul><li>processingState -> state</li><li>processingStateDescription -> description</li><li>acquiredByPrinter -> isAcquiredByPrinter</li></ul> |  

### Devices and apps | Corporate management

| **Change type** | **Version**   | **Description** |
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[deviceCustomAttributeShellScript](/graph/api/resources/intune-devices-devicecustomattributeshellscript?view=graph-rest-beta)<br/>[macOSSoftwareUpdateAccountSummary](/graph/api/resources/intune-deviceconfig-macossoftwareupdateaccountsummary?view=graph-rest-beta)<br/>[macOSSoftwareUpdateCategorySummary](/graph/api/resources/intune-deviceconfig-macossoftwareupdatecategorysummary?view=graph-rest-beta)<br/>[macOSSoftwareUpdateConfiguration](/graph/api/resources/intune-deviceconfig-macossoftwareupdateconfiguration?view=graph-rest-beta)<br/>[macOSSoftwareUpdateStateSummary](/graph/api/resources/intune-deviceconfig-macossoftwareupdatestatesummary?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[macOSAssociatedDomainsItem](/graph/api/resources/intune-deviceconfig-macosassociateddomainsitem?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidDeviceOwnerEnrollmentTokenType](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmenttokentype?view=graph-rest-beta)<br/>[deviceCustomAttributeValueType](/graph/api/resources/intune-devices-devicecustomattributevaluetype?view=graph-rest-beta)<br/>[macOSSoftwareUpdateBehavior](/graph/api/resources/intune-deviceconfig-macossoftwareupdatebehavior?view=graph-rest-beta)<br/>[macOSSoftwareUpdateCategory](/graph/api/resources/intune-deviceconfig-macossoftwareupdatecategory?view=graph-rest-beta)<br/>[macOSSoftwareUpdateScheduleType](/graph/api/resources/intune-deviceconfig-macossoftwareupdatescheduletype?view=graph-rest-beta)<br/>[macOSSoftwareUpdateState](/graph/api/resources/intune-deviceconfig-macossoftwareupdatestate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [assign](/graph/api/intune-devices-devicecustomattributeshellscript-assign?view=graph-rest-beta) action on [deviceCustomAttributeShellScript](/graph/api/resources/intune-devices-devicecustomattributeshellscript?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**todo**<br/>**todoTask**<br/>**todoTaskList**<br/>|
|Deletion|beta|Removed the following complex types:<br/>**macOSAssociatedDomainsKeyValuePair**<br/>|
|Addition|beta|Added the **enrollmentTokenType** property to the [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **customData** and **customKeyValueData** properties to the [androidDeviceOwnerVpnConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownervpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **blockAfterCompanyPortalUpdateDeferralInDays**, **warnAfterCompanyPortalUpdateDeferralInDays** and **wipeAfterCompanyPortalUpdateDeferralInDays** properties to the [androidManagedAppProtection](/graph/api/resources/intune-shared-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **blockAfterCompanyPortalUpdateDeferralInDays**, **warnAfterCompanyPortalUpdateDeferralInDays** and **wipeAfterCompanyPortalUpdateDeferralInDays** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **passCodeDisabled** and **zoomDisabled** properties from the [depEnrollmentBaseProfile](/graph/api/resources/intune-enrollment-depenrollmentbaseprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **passCodeDisabled**, **zoomDisabled**, **restoreCompletedScreenDisabled** and **updateCompleteScreenDisabled** properties to the [depIOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depiosenrollmentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **passCodeDisabled**, **zoomDisabled** and **accessibilityScreenDisabled** properties to the [depMacOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depmacosenrollmentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **headerTitle** and **headerSubtitle** properties to the [deviceManagementSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementsettingdefinition?view=graph-rest-beta) entity|
|Addition|beta|Added the **advancedThreatProtectionRequiredSecurityLevel** property to the [iosCompliancePolicy](/graph/api/resources/intune-deviceconfig-ioscompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **appAssociatedDomains** property to the [macOSDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-macosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordMaximumAttemptCount** and **passwordMinutesUntilFailedLoginReset** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **installAsManaged** property to the [macOSLobApp](/graph/api/resources/intune-apps-macoslobapp?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity:<br/>**defenderSecurityCenterDisableAccountUI** from required to optional<br/>**defenderSecurityCenterDisableAppBrowserUI** from required to optional<br/>**defenderSecurityCenterDisableClearTpmUI** from required to optional<br/>**defenderSecurityCenterDisableFamilyUI** from required to optional<br/>**defenderSecurityCenterDisableHardwareUI** from required to optional<br/>**defenderSecurityCenterDisableHealthUI** from required to optional<br/>**defenderSecurityCenterDisableNetworkUI** from required to optional<br/>**defenderSecurityCenterDisableNotificationAreaUI** from required to optional<br/>**defenderSecurityCenterDisableRansomwareUI** from required to optional<br/>**defenderSecurityCenterDisableSecureBootUI** from required to optional<br/>**defenderSecurityCenterDisableTroubleshootingUI** from required to optional<br/>**defenderSecurityCenterDisableVirusUI** from required to optional<br/>**defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI** from required to optional<br/>|
|Addition|beta|Added the **macOSSoftwareUpdateAccountSummaries** and **deviceCustomAttributeShellScripts** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **ipAddressV4** and **subnetAddress** properties to the [hardwareInformation](/graph/api/resources/intune-devices-hardwareinformation?view=graph-rest-beta) complex type|
|Addition|beta|Added the **uninstallOnDeviceRemoval** property to the [macOsVppAppAssignmentSettings](/graph/api/resources/intune-apps-macosvppappassignmentsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **netMotionMobility** member to the [androidVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **universalResourceIdentifier** member to the [subjectAlternativeNameType](/graph/api/resources/intune-deviceconfig-subjectalternativenametype?view=graph-rest-beta) enum type|

### Files

| **Change type** | **Version** | **Description** |
|:---|:---|:---|
|Addition|beta|Added the [revokeGrants](/graph/api/permission-revokeGrants?view=graph-rest-beta) method to the [permission](/graph/api/resources/permission?view=graph-rest-beta) resource.|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added support for `$count`, `$search`, and `$filter` query parameters for improving query capabilities to: <br><ul><li>[List applications](/graph/api/application-list?view=graph-rest-1.0)</li><li>[List devices](/graph/api/device-list?view=graph-rest-1.0)</li><li>[List device groups](/graph/api/device-list-memberof?view=graph-rest-1.0)</li><li>[List device transitive groups](/graph/api/device-list-transitivememberof?view=graph-rest-1.0)</li><li>[List groups](/graph/api/group-list?view=graph-rest-1.0)</li><li>[List group memberOf](/graph/api/group-list-memberof?view=graph-rest-1.0)</li><li>[List group members](/graph/api/group-list-members?view=graph-rest-1.0)</li><li>[List group transitive memberOf](/graph/api/group-list-transitivememberof?view=graph-rest-1.0)</li><li>[List group transitive members](/graph/api/group-list-transitivemembers?view=graph-rest-1.0)</li><li>[List orgContacts](/graph/api/orgcontact-list?view=graph-rest-1.0)</li><li>[List servicePrincipals](/graph/api/serviceprincipal-list?view=graph-rest-1.0)</li><li>[List servicePrincipal memberOf](/graph/api/serviceprincipal-list-memberof?view=graph-rest-1.0)</li><li>[List servicePrincipal transitive memberOf](/graph/api/serviceprincipal-list-transitivememberof?view=graph-rest-1.0)</li><li>[List users](/graph/api/user-list?view=graph-rest-1.0)</li><li>[List user memberOf](/graph/api/user-list-memberof?view=graph-rest-1.0)</li><li>[List user transitive memberOf](/graph/api/user-list-transitivememberof?view=graph-rest-1.0)</li></ul><br>Added examples for using OData cast to: <ul><li>[List group memberOf](/graph/api/group-list-memberof?view=graph-rest-1.0)</li><li>[List group members](/graph/api/group-list-members?view=graph-rest-1.0)</li><li>[List group transitive memberOf](/graph/api/group-list-transitivememberof?view=graph-rest-1.0)</li><li>[List servicePrincipal memberOf](/graph/api/serviceprincipal-list-memberof?view=graph-rest-1.0)</li><li>[List servicePrincipal transitive memberOf](/graph/api/serviceprincipal-list-transitivememberof?view=graph-rest-1.0)</li><li>[List user memberOf](/graph/api/user-list-memberof?view=graph-rest-1.0)</li><li>[List user transitive memberOf](/graph/api/user-list-transitivememberof?view=graph-rest-1.0)</li></ul> |

### Identity and access | Identity and sign-in

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [fido2AuthenticationMethodConfiguration](/graph/api/resources/fido2AuthenticationMethodConfiguration?view=graph-rest-beta) entity for managing users' FIDO2 Security Keys authentication method policy. |
| Addition | beta | Added the [passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](/graph/api/resources/passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration?view=graph-rest-beta) entity for managing users' Microsoft Authenticator Passwordless Phone Sign-in authentication method policy. |
| Addition | beta | Added the [emailAuthenticationMethod](/graph/api/resources/emailauthenticationmethod?view=graph-rest-beta) entity for managing users' email authentication method. |
|Addition|beta|Added the **allowInvitesFrom** property to the [authorizationPolicy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta) resource.|
| Addition | beta | Added the [identityUserFlowAttribute](/graph/api/resources/identityuserflowattribute?view=graph-rest-beta) entity for managing user flow attributes in an Azure Active Directory or Azure Active Directory B2C tenant. |
|Addition|beta|Added the **IdentityUserFlow.ReadWrite.All** and **IdentityUserFlow.Read.All** permissions to the [Permissions reference](permissions-reference.md#policy-permissions).|
|Addition|beta|Added the [b2cAuthenticationMethodsPolicy](/graph/api/resources/b2cauthenticationmethodspolicy?view=graph-rest-beta) resource type and the following opertations: [Get b2cAuthenticationMethodsPolicy](/graph/api/b2cauthenticationmethodspolicy-get?view=graph-rest-beta) and [Update b2cAuthenticationMethodsPolicy](/graph/api/b2cauthenticationmethodspolicy-update?view=graph-rest-beta).|
|Addition|beta|Added the **Policy.ReadWrite.AuthenticationMethod** permission to the [Permissions reference](permissions-reference.md#policy-permissions).|

### Teamwork

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition|beta|Added support for **completeMigration** to the [channel](/graph/api/resources/channel?view=graph-rest-beta) and [team](/graph/api/resources/team?view=graph-rest-beta) resources|
|Addition|beta|Added the **teamCreationMode** property to the  [team](/graph/api/resources/team?view=graph-rest-beta) resource.|
|Addition|beta|Added the **channelCreationMode** property to the [channel](/graph/api/resources/channel?view=graph-rest-beta) resource.|
| Addition | v1.0 | Added the [List members](/graph/api/conversationmember-list?view=graph-rest-beta), [Get member](/graph/api/conversationmember-get?view=graph-rest-beta), [Add member](/graph/api/conversationmember-add?view=graph-rest-beta), [Update member](/graph/api/conversationmember-update?view=graph-rest-beta), and [Delete member](/graph/api/conversationmember-delete?view=graph-rest-beta) methods to the [conversationMember](/graph/api/resources/conversationmember?view=graph-rest-beta) and [aadUserConversationMember](/graph/api/resources/aaduserconversationmember?view=graph-rest-beta) resources.|
|Addition|beta|Added support for **completeMigration** to the [channel](/graph/api/resources/channel?view=graph-rest-beta) and [team](/graph/api/resources/team?view=graph-rest-beta) resources.
| Addition | v1.0 | Added support for [resource-specific consent](https://aka.ms/teams-rsc) (RSC) permissions to v1.0 APIs. |
| Addition | v1.0 | Added [read channel message APIs](/graph/api/resources/chatmessage?view=graph-rest-v1.0). |

### To-do tasks

| **Change type** | **Version** | **Description** |
|:---|:---|:---|
|Addition|v1.0|Added the **todo** relationship to [user](/graph/api/resources/user?view=graph-rest-1.0) resource.|
|Addition|v1.0|Added the [todo](/graph/api/resources/todo?view=graph-rest-1.0) resource type.|
|Addition|v1.0|Added the [todoTaskList](/graph/api/resources/todoTaskList?view=graph-rest-1.0) resource type.|
|Addition|v1.0|Added the [todoTask](/graph/api/resources/todoTask?view=graph-rest-1.0) resource type.|
|Addition|v1.0|Added the [linkedResource](/graph/api/resources/linkedResource?view=graph-rest-1.0) resource type.|
|Addition|v1.0|Added the **wellknownListName** enumeration type.|
|Addition|v1.0|Added the **bodyType** enumeration type.|
|Addition|v1.0|Added the **importance** enumeration type.|
|Addition|v1.0|Added the **taskStatus** enumeration type.|
|Addition|v1.0|Added the [delta](/graph/api/todoTaskList-delta?view=graph-rest-1.0) method to the [todoTaskList](/graph/api/resources/todoTaskList?view=graph-rest-1.0) resource.|
|Addition|v1.0|Added the [delta](/graph/api/todoTask-delta?view=graph-rest-1.0) method to the [todoTask](/graph/api/resources/todoTask?view=graph-rest-1.0) resource.|

### Users

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | beta and v1.0 | Added the **employeeType**, **employeeOrgData**, and **employeeHireDate** properties to the [user](/graph/api/resources/user) entity. |
| Change | beta and v1.0 | Changed the **businessPhones** and **mobilePhone** properties to read-only for users synced from on-premises directory on the [user](/graph/api/resources/user) entity. |

## September 2020

### Applications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added [delegatedPermissionClassification](/graph/api/resources/delegatedpermissionclassification?view=graph-rest-beta) navigation to the [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) resource.

### Calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the **transactionId** property to the [event](/graph/api/resources/event?view=graph-rest-1.0) entity.

### Change notifications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added [chatMessage](/graph/api/resources/presence) to the resources supported for [change notifications](/graph/webhooks). |

### Cloud communications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the **lobbyBypassSettings**, **isEntryExitAnnounced**, and **allowedPresenters** property to the [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta) entity.|
| Addition | beta | Added support for application permissions to the [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta) entity and associated methods. |
| Addition | beta | Added delete method to the [participant](/graph/api/resources/participant?view=graph-rest-beta) entity. |
| Addition | v1.0 | Added delete method to the [participant](/graph/api/resources/participant?view=graph-rest-1.0) entity. |

### Devices and apps | Cloud printing

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Addition | beta | Added the [Download printDocument binary file](/graph/api/printdocument-get-file?view=graph-rest-beta) method to download the binary file data associated with a document.  | 
| Addition | beta | Added support for `$expand=documents` and `$filter=createdBy/userPrincipalName` query parameters in the [List printJobs](/graph/api/printer-list-jobs?view=graph-rest-beta) method. |

### Devices and apps | Corporate management

| **Change type** | **Version**   | **Description** |
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[win32LobApp](/graph/api/resources/intune-apps-win32lobapp?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new complex types:<br/>[mobileAppInstallTimeSettings](/graph/api/resources/intune-apps-mobileappinstalltimesettings?view=graph-rest-1.0)<br/>[win32LobAppAssignmentSettings](/graph/api/resources/intune-apps-win32lobappassignmentsettings?view=graph-rest-1.0)<br/>[win32LobAppFileSystemRule](/graph/api/resources/intune-apps-win32lobappfilesystemrule?view=graph-rest-1.0)<br/>[win32LobAppInstallExperience](/graph/api/resources/intune-apps-win32lobappinstallexperience?view=graph-rest-1.0)<br/>[win32LobAppMsiInformation](/graph/api/resources/intune-apps-win32lobappmsiinformation?view=graph-rest-1.0)<br/>[win32LobAppPowerShellScriptRule](/graph/api/resources/intune-apps-win32lobapppowershellscriptrule?view=graph-rest-1.0)<br/>[win32LobAppProductCodeRule](/graph/api/resources/intune-apps-win32lobappproductcoderule?view=graph-rest-1.0)<br/>[win32LobAppRegistryRule](/graph/api/resources/intune-apps-win32lobappregistryrule?view=graph-rest-1.0)<br/>[win32LobAppRestartSettings](/graph/api/resources/intune-apps-win32lobapprestartsettings?view=graph-rest-1.0)<br/>[win32LobAppReturnCode](/graph/api/resources/intune-apps-win32lobappreturncode?view=graph-rest-1.0)<br/>[win32LobAppRule](/graph/api/resources/intune-apps-win32lobapprule?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new enum types:<br/>[runAsAccountType](/graph/api/resources/intune-shared-runasaccounttype?view=graph-rest-1.0)<br/>[win32LobAppFileSystemOperationType](/graph/api/resources/intune-apps-win32lobappfilesystemoperationtype?view=graph-rest-1.0)<br/>[win32LobAppMsiPackageType](/graph/api/resources/intune-apps-win32lobappmsipackagetype?view=graph-rest-1.0)<br/>[win32LobAppNotification](/graph/api/resources/intune-apps-win32lobappnotification?view=graph-rest-1.0)<br/>[win32LobAppPowerShellScriptRuleOperationType](/graph/api/resources/intune-apps-win32lobapppowershellscriptruleoperationtype?view=graph-rest-1.0)<br/>[win32LobAppRegistryRuleOperationType](/graph/api/resources/intune-apps-win32lobappregistryruleoperationtype?view=graph-rest-1.0)<br/>[win32LobAppRestartBehavior](/graph/api/resources/intune-apps-win32lobapprestartbehavior?view=graph-rest-1.0)<br/>[win32LobAppReturnCodeType](/graph/api/resources/intune-apps-win32lobappreturncodetype?view=graph-rest-1.0)<br/>[win32LobAppRuleOperator](/graph/api/resources/intune-apps-win32lobappruleoperator?view=graph-rest-1.0)<br/>[win32LobAppRuleType](/graph/api/resources/intune-apps-win32lobappruletype?view=graph-rest-1.0)<br/>|
|Change|v1.0|Changed the following properties on the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-1.0) entity:<br/>**firewallBlockStatefulFTP** from required to optional<br/>**firewallMergeKeyingModuleSettings** from required to optional<br/>|
|Addition|beta|Added new entities:<br/>[mobileAppSupersedence](/graph/api/resources/intune-apps-mobileappsupersedence?view=graph-rest-beta)<br/>[userExperienceAnalyticsAppHealthAppPerformanceByAppVersion](/graph/api/resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversion?view=graph-rest-beta)<br/>[userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](/graph/api/resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion?view=graph-rest-beta)<br/>[userExperienceAnalyticsAppHealthDeviceModelPerformance](/graph/api/resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance?view=graph-rest-beta)<br/>[userExperienceAnalyticsAppHealthDevicePerformance](/graph/api/resources/intune-devices-userexperienceanalyticsapphealthdeviceperformance?view=graph-rest-beta)<br/>[userExperienceAnalyticsAppHealthDevicePerformanceDetails](/graph/api/resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails?view=graph-rest-beta)<br/>[userExperienceAnalyticsAppHealthOSVersionPerformance](/graph/api/resources/intune-devices-userexperienceanalyticsapphealthosversionperformance?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[textInputQuestion](/graph/api/resources/textInputQuestion?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidManagedAppSafetyNetEvaluationType](/graph/api/resources/intune-mam-androidmanagedappsafetynetevaluationtype?view=graph-rest-beta)<br/>[androidRequiredPasswordComplexity](/graph/api/resources/intune-deviceconfig-androidrequiredpasswordcomplexity?view=graph-rest-beta)<br/>[macOSSoftwareUpdateDelayPolicy](/graph/api/resources/intune-deviceconfig-macossoftwareupdatedelaypolicy?view=graph-rest-beta)<br/>[managedDeviceManagementFeatures](/graph/api/resources/intune-devices-manageddevicemanagementfeatures?view=graph-rest-beta)<br/>[mobileAppRelationshipType](/graph/api/resources/intune-apps-mobileapprelationshiptype?view=graph-rest-beta)<br/>[mobileAppSupersedenceType](/graph/api/resources/intune-apps-mobileappsupersedencetype?view=graph-rest-beta)<br/>[settingSourceType](/graph/api/resources/intune-shared-settingsourcetype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [getAvailableExtensionProperties](/graph/api/resources/getAvailableExtensionProperties?view=graph-rest-beta) action|
|Addition|beta|Added the [getObjectsById](/graph/api/resources/getObjectsById?view=graph-rest-beta) action|
|Addition|beta|Added the [revokeLicenses](/graph/api/intune-onboarding-vpptoken-revokelicenses?view=graph-rest-beta) action on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) |
|Addition|beta|Added the [getSuggestedEnrollmentLimit](/graph/api/intune-enrollment-devicemanagement-getsuggestedenrollmentlimit?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) |
|Deletion|beta|Removed the [revokeLicenses](/graph/api/intune-onboarding-vpptoken-revokelicenses?view=graph-rest-beta) action on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) |
|Addition|beta|Added the **requiredPasswordComplexity** property to the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **personalProfileAppsAllowInstallFromUnknownSources**, **personalProfileCameraBlocked**, **personalProfileScreenCaptureBlocked**, **workProfilePasswordExpirationDays**, **workProfilePasswordMinimumLength**, **workProfilePasswordMinimumNumericCharacters**, **workProfilePasswordMinimumNonLetterCharacters**, **workProfilePasswordMinimumLetterCharacters**, **workProfilePasswordMinimumLowerCaseCharacters**, **workProfilePasswordMinimumUpperCaseCharacters**, **workProfilePasswordMinimumSymbolCharacters**, **workProfilePasswordPreviousPasswordCountToBlock**, **workProfilePasswordSignInFailureCountBeforeFactoryReset** and **workProfilePasswordRequiredType** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **targetedMobileApps** and **microsoftTunnelSiteId** properties to the [androidDeviceOwnerVpnConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownervpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **requiredPasswordComplexity** property to the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **biometricAuthenticationBlocked** and **requiredAndroidSafetyNetEvaluationType** properties to the [androidManagedAppProtection](/graph/api/resources/intune-shared-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **targetedMobileApps** and **microsoftTunnelSiteId** properties to the [androidWorkProfileVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **excludedDomains** and **disableOnDemandUserOverride** properties to the [appleVpnConfiguration](/graph/api/resources/intune-deviceconfig-applevpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **biometricAuthenticationBlocked** and **requiredAndroidSafetyNetEvaluationType** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **windowsHomeSkuRestriction** property to the [deviceEnrollmentPlatformRestrictionsConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentplatformrestrictionsconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **admxSettingDefinitionId** property to the [groupPolicySettingMapping](/graph/api/resources/intune-gpanalyticsservice-grouppolicysettingmapping?view=graph-rest-beta) entity|
|Addition|beta|Added the **disableClientTelemetry** property to the [intuneBrandingProfile](/graph/api/resources/intune-wip-intunebrandingprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **perAppVPNProfileId** property to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **appClipsBlocked** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **mtuSizeInBytes** property to the [iosikEv2VpnConfiguration](/graph/api/resources/intune-deviceconfig-iosikev2vpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **microsoftTunnelSiteId** property to the [iosVpnConfiguration](/graph/api/resources/intune-deviceconfig-iosvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **disableMacAddressRandomization** property to the [iosWiFiConfiguration](/graph/api/resources/intune-deviceconfig-ioswificonfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **updateDelayPolicy** property to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **skuNumber** and **managementFeatures** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **supersedingAppCount** and **supersededAppCount** properties to the [mobileApp](/graph/api/resources/intune-shared-mobileapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **targetType** property to the [mobileAppRelationship](/graph/api/resources/intune-apps-mobileapprelationship?view=graph-rest-beta) entity|
|Addition|beta|Added the **appHangCount**, **activeDeviceCount**, **appDisplayName**, **appUsageDuration**, **appCrashCount** and **meanTimeToFailureInMinutes** properties to the [userExperienceAnalyticsAppHealthApplicationPerformance](/graph/api/resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **activeDevices**, **allOrgsHealthScore**, **allOrgsMeanTimeToFailure**, **appFriendlyName**, **meanTimeToFailure**, **memaTimeGenerated**, **tenantId**, **totalAppCrashes**, **totalAppHangs** and **totalAppUsageDuration** properties from the [userExperienceAnalyticsAppHealthApplicationPerformance](/graph/api/resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance?view=graph-rest-beta) entity|
|Addition|beta|Added the **restartStopCode** and **restartFaultBucket** properties to the [userExperienceAnalyticsDeviceStartupHistory](/graph/api/resources/intune-devices-userexperienceanalyticsdevicestartuphistory?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **installLanguage** property from the [win32LobApp](/graph/api/resources/intune-apps-win32lobapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **firewallIPSecExemptionsNone** property to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity:<br/>**firewallBlockStatefulFTP** from required to optional<br/>**firewallMergeKeyingModuleSettings** from required to optional<br/>|
|Addition|beta|Added the **userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion**, **userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion**, **userExperienceAnalyticsAppHealthDevicePerformance**, **userExperienceAnalyticsAppHealthDeviceModelPerformance**, **userExperienceAnalyticsAppHealthOSVersionPerformance**, **userExperienceAnalyticsAppHealthOverview**, **userExperienceAnalyticsAppHealthDevicePerformanceDetails**, **microsoftTunnelConfigurations** and **microsoftTunnelSites** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **rebootAnalyticsMetrics** navigation property to the [userExperienceAnalyticsBaseline](/graph/api/resources/intune-devices-userexperienceanalyticsbaseline?view=graph-rest-beta) entity|
|Addition|beta|Added the **aospUserlessCount** property to the [deviceOperatingSystemSummary](/graph/api/resources/intune-devices-deviceoperatingsystemsummary?view=graph-rest-beta) complex type|
|Addition|beta|Added the **customCantSeePrivacyMessage**, **customCanSeePrivacyMessage** and **disableClientTelemetry** properties to the [intuneBrand](/graph/api/resources/intune-onboarding-intunebrand?view=graph-rest-beta) complex type|
|Addition|beta|Added the **sourceType** property to the [settingSource](/graph/api/resources/intune-deviceconfig-settingsource?view=graph-rest-beta) complex type|
|Addition|beta|Added the **activeMalwareDetectionCount** and **distinctActiveMalwareCount** properties to the [windowsMalwareCategoryCount](/graph/api/resources/intune-devices-windowsmalwarecategorycount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **netMotionMobility** member to the [androidWorkProfileVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **cloudPC** member to the [deviceManagementTemplateType](/graph/api/resources/intune-deviceintent-devicemanagementtemplatetype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **size4096** member to the [keySize](/graph/api/resources/intune-deviceconfig-keysize?view=graph-rest-beta) enum type|
|Addition|beta|Added the **longPowerButtonPress** and **bootError** members to the [userExperienceAnalyticsOperatingSystemRestartCategory](/graph/api/resources/intune-devices-userexperienceanalyticsoperatingsystemrestartcategory?view=graph-rest-beta) enum type|
|Addition|beta|Added the **windowsUpdates** member to the [windowsHealthMonitoringScope](/graph/api/resources/intune-deviceconfig-windowshealthmonitoringscope?view=graph-rest-beta) enum type|
|Deletion|beta|Removed the **userExperienceAnalytics** member from the [windowsHealthMonitoringScope](/graph/api/resources/intune-deviceconfig-windowshealthmonitoringscope?view=graph-rest-beta) enum type|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the **schedule** property to [accessPackageAssignment](/graph/api/resources/accesspackageassignment?view=graph-rest-beta) and [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta) in entitlement management.|
| Addition | beta | Added the [permissionGrantPolicy](/graph/api/resources/permissiongrantpolicy?view=graph-rest-beta) resource type.|
| Addition | beta | Added the [bitlockerRecoveryKey](/graph/api/resources/bitlockerRecoveryKey?view=graph-rest-beta) resource type.|
| Addition | beta | Added the **volumeType** enumeration type.|
| Addition | beta | Added the **directorySizeQuota** complex type to the [organization](/graph/api/resources/organization?view=graph-rest-beta) entity. |


### Identity and access | Directory management

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Introduced the [administrative units API](/graph/api/resources/administrativeunit?view=graph-rest-1.0). Administrative units allow organizations to subdivide their Azure Active Directory, and delegate administrative duties to those subdivisions. Subdivisions can represent regions, departments, cost centers, and so on. This can now be managed through the Microsoft Graph API.|

### Identity and access | Identity and sign-in

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added the [continuousAccessEvaluationPolicy](/graph/api/resources/continuousAccessEvaluationPolicy?view=graph-rest-beta) resource type.|
|Addition|beta|Added the [permissionGrantPolicy](/graph/api/resources/permissiongrantpolicy?view=graph-rest-beta&preserve-view=true) resource type. Permission grant policies describe the conditions which must be met for permissions to be granted to apps.|
|Addition|beta|Added the **permissionGrantPolicyIdsAssignedToDefaultUserRole** property to the [authorizationPolicy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta&preserve-view=true) resource.|

### Reports

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | Beta and v1.0 | Added the **outlookM365** and **outlook2019** properties to the [getEmailAppUsageVersionsUserCounts](/graph/api/resources/emailappusageversionsusercount?view=graph-rest-beta) entity.|

### Search

| **Change type** | **Version** | **Description**                                                                                                             |
|:----------------|:------------|:----------------------------------------------------------------------------------------------------------------------------|
| Addition        | beta        | Added the **state** property to the [externalConnection](/graph/api/resources/externalconnection?view=graph-rest-beta) resource. |
| Addition        | beta        | Added the [externalGroup](/graph/api/resources/externalgroup?view=graph-rest-beta) resource.                                 |
| Addition        | beta        | Added the [externalGroupMember](/graph/api/resources/externalgroupmember?view=graph-rest-beta) resource.                     |
| Addition        | beta | Search more types in OneDrive and SharePoint: **drive**, **list**, **listItem**, and **site**. See [more details here](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#scope-search-based-on-entity-types).|
| Addition        | beta | Identify [selected properties](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#get-selected-properties) to return in search results.|
| Addition        | beta | [Sort](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#sort-search-results) search results from OneDrive and SharePoint by specifying **sortProperties** in a [searchRequest](/graph/api/resources/searchRequest?view=graph-rest-beta&preserve-view=true) resource.|
| Addition        | beta | [Refine results using aggregations](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#refine-results-using-aggregations) for OneDrive and SharePoint by specifying **aggregations** and **aggregationFilters** in a **searchRequest** resource.|
| Addition        | beta | Query external data across [more than one connection](search-concept-custom-types.md).|
| Change        | beta |Some properties in the request and response have been renamed and are deprecated.  See [more details](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#schema-change-deprecation-warning) about the deprecation.|

### Teamwork 

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|Beta and v1.0|Added **lastEditedDateTime** property to the [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) resource.|	
|Change| Beta and v1.0| Changed **lastModifiedDateTime** property in the [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) resource to represent the time the entity was last touched. It will always be set and never have a `null` value|	
|Addition|beta| Added the **createdDateTime** property to the [channel](/graph/api/resources/channel?view=graph-rest-beta) and [team](/graph/api/resources/team?view=graph-rest-beta) resources.|
|Addition|beta and v1.0| Added the [Update chatMessage](/graph/api/chatmessage-update) method to the [chatMessage](/graph/api/resources/chatmessage) resource.|
|Addition|v1.0| Added the [List members](/graph/api/team-list-members?view=graph-rest-1.0&preserve-view=true), [Add members](/graph/api/team-post-members?view=graph-rest-1.0&preserve-view=true), and [Remove members](/graph/api/team-delete-members?view=graph-rest-1.0&preserve-view=true) methods.|

### Users

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change | beta and v1.0 | Updated the mail property on the [user](/graph/api/resources/user) entity to be writeable. |

## August 2020

### Applications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the [passwordSingleSignOnSettings](/graph/api/resources/passwordsinglesignonsettings?view=graph-rest-beta) property to the [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) resource.

### Calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the **cancelledOccurrences**, **exceptionOccurrences**, and **occurrenceId** properties to the [event](/graph/api/resources/event?view=graph-rest-beta) entity.

### Change notifications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Change tracking through [delta queries](/graph/api/event-delta) is available for Microsoft Graph for US Government. |
| Deletion | Beta | Removed the **includeProperties** property from the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) entity. This property is replaced by the **includeResourceData** property. |
| Addition | Beta | Added the ability to get [change notifications delivered via Event Hub](change-notifications-delivery.md). |

### Cloud communications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the **cancelMediaProcessing** API to the [call](/graph/api/resources/call) entity.|
| Addition | beta and v1.0 | Added the **transcription** property to the [call](/graph/api/resources/call) entity.|

### Devices and apps | Cloud printing

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Addition | beta | Added new [Delegated permissions](/graph/permissions-reference#universal-print-permissions): <br/><ul><li>Printer.Create</li><li>Printer.FullControl.All</li><li>Printer.Read.All</li><li>Printer.ReadWrite.All</li><li>PrinterShare.Read.All</li><li>PrinterShare.ReadWrite.All</li><li>PrintJob.Read</li><li>PrintJob.Read.All</li><li>PrintJob.ReadBasic</li><li>PrintJob.ReadBasic.All</li><li>PrintJob.ReadWrite</li><li>PrintJob.ReadWrite.All</li><li>PrintJob.ReadWriteBasic</li><li>PrintJob.ReadWriteBasic.All</li></ul> |
| Addition | beta | Added new [App-only permissions](/graph/permissions-reference#universal-print-permissions): <br/><ul><li>Printer.Read.All</li><li>Printer.ReadWrite.All</li><li>PrintJob.Manage.All</li><li>PrintJob.Read.All</li><li>PrintJob.ReadBasic.All</li><li>PrintJob.ReadWrite.All</li><li>PrintJob.ReadWriteBasic.All</li><li>PrintTaskDefinition.ReadWrite.All</li></ul> |
| Change | beta | Added new permission requirements to: <ul><li>[List printers](/graph/api/print-list-printers?view=graph-rest-beta)</li><li>[Get printer](/graph/api/printer-get?view=graph-rest-beta)</li><li>[Update printer](/graph/api/printer-update?view=graph-rest-beta)</li><li>[Delete printer](/graph/api/printer-delete?view=graph-rest-beta)</li><li>[List allowedGroups (printer)](/graph/api/printer-list-allowedgroups?view=graph-rest-beta)</li><li>[List allowedUsers (printer)](/graph/api/printer-list-allowedusers?view=graph-rest-beta)</li><li>[Create allowedGroup (printer)](/graph/api/printer-post-allowedgroups?view=graph-rest-beta)</li><li>[Create allowedUser (printer)](/graph/api/printer-post-allowedusers?view=graph-rest-beta)</li><li>[Delete allowedGroup (printer)](/graph/api/printer-delete-allowedgroup?view=graph-rest-beta)</li><li>[Delete allowedUser (printer)](/graph/api/printer-delete-alloweduser?view=graph-rest-beta)</li><li>[getCapabilities (printer)](/graph/api/printer-getcapabilities?view=graph-rest-beta)</li><li>[List connectors (printer)](/graph/api/printer-list-connectors?view=graph-rest-beta)</li><li>[List jobs (printer)](/graph/api/printer-list-jobs?view=graph-rest-beta)</li><li>[Create job (printer)](/graph/api/printer-post-jobs?view=graph-rest-beta)</li><li>[resetDefaults (printer)](/graph/api/printer-resetdefaults?view=graph-rest-beta)</li><li>[List shares](/graph/api/print-list-shares?view=graph-rest-beta)</li><li>[Get printerShare](/graph/api/printershare-get?view=graph-rest-beta)</li><li>[Create printerShare](/graph/api/print-post-shares?view=graph-rest-beta)</li><li>[Update printerShare](/graph/api/printershare-update?view=graph-rest-beta)</li><li>[Delete printerShare](/graph/api/printershare-delete?view=graph-rest-beta)</li><li>[List allowedGroups (printerShare)](/graph/api/printershare-list-allowedgroups?view=graph-rest-beta)</li><li>[List allowedUsers (printerShare)](/graph/api/printershare-list-allowedusers?view=graph-rest-beta)</li><li>[Create allowedGroup (printerShare)](/graph/api/printershare-post-allowedgroups?view=graph-rest-beta)</li><li>[Create allowedUser (printerShare)](/graph/api/printershare-post-allowedusers?view=graph-rest-beta)</li><li>[Delete allowedGroup (printerShare)](/graph/api/printershare-delete-allowedgroup?view=graph-rest-beta)</li><li>[Delete allowedUser (printerShare)](/graph/api/printershare-delete-alloweduser?view=graph-rest-beta)</li><li>[Create printJob](/graph/api/printer-post-jobs?view=graph-rest-beta)</li><li>[Get printJob](/graph/api/printjob-get?view=graph-rest-beta)</li><li>[uploadData (printDocument)](/graph/api/printdocument-uploaddata?view=graph-rest-beta)</li><li>[startPrintJob (printJob)](/graph/api/printjob-startprintjob?view=graph-rest-beta)</li><li>[cancelPrintJob (printJob)](/graph/api/printjob-cancelprintjob?view=graph-rest-beta)</li></ul> |
| Change | beta | Added the **allowAllUsers** property to the [printerShare](/graph/api/resources/printershare?view=graph-rest-beta) resource. |

### Devices and apps | Corporate management
| **Change type** | **Version**   | **Description** |
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[malwareStateForWindowsDevice](/graph/api/resources/intune-devices-malwarestateforwindowsdevice?view=graph-rest-beta)<br/>[securityConfigurationTask](/graph/api/resources/intune-partnerintegration-securityconfigurationtask?view=graph-rest-beta)<br/>[userExperienceAnalyticsAppHealthApplicationPerformance](/graph/api/resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance?view=graph-rest-beta)<br/>[userExperienceAnalyticsMetricHistory](/graph/api/resources/intune-devices-userexperienceanalyticsmetrichistory?view=graph-rest-beta)<br/>[vulnerableManagedDevice](/graph/api/resources/intune-partnerintegration-vulnerablemanageddevice?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[macOSAzureAdSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-macosazureadsinglesignonextension?view=graph-rest-beta)<br/>[windowsMalwareSeverityCount](/graph/api/resources/intune-devices-windowsmalwareseveritycount?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[endpointSecurityConfigurationApplicablePlatform](/graph/api/resources/intune-partnerintegration-endpointsecurityconfigurationapplicableplatform?view=graph-rest-beta)<br/>[endpointSecurityConfigurationProfileType](/graph/api/resources/intune-partnerintegration-endpointsecurityconfigurationprofiletype?view=graph-rest-beta)<br/>[endpointSecurityConfigurationType](/graph/api/resources/intune-partnerintegration-endpointsecurityconfigurationtype?view=graph-rest-beta)<br/>[userExperienceAnalyticsOperatingSystemRestartCategory](/graph/api/resources/intune-devices-userexperienceanalyticsoperatingsystemrestartcategory?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [syncLicenseCounts](/graph/api/intune-onboarding-vppToken-synclicenses?view=graph-rest-beta)?view=graph-rest-beta) action on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) collection |
|Addition|beta|Added the [importOffice365DeviceConfigurationPolicies](/graph/api/intune-deviceintent-devicemanagementtemplate-importoffice365deviceconfigurationpolicies?view=graph-rest-beta) action on [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) collection |
|Addition|beta|Added the **passwordBlockFaceUnlock**, **passwordBlockIrisUnlock**, **workProfilePasswordBlockFaceUnlock** and **workProfilePasswordBlockIrisUnlock** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordBlockFaceUnlock**, **passwordBlockIrisUnlock**, **workProfilePasswordBlockFaceUnlock** and **workProfilePasswordBlockIrisUnlock** properties to the [androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **providerType** property to the [appleVpnConfiguration](/graph/api/resources/intune-deviceconfig-applevpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customCanSeePrivacyMessage** and **customCantSeePrivacyMessage** properties to the [intuneBrandingProfile](/graph/api/resources/intune-wip-intunebrandingprofile?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **providerType** property from the [iosVpnConfiguration](/graph/api/resources/intune-deviceconfig-iosvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **onboardingRequestExpiryDateTime** property to the [remoteAssistancePartner](/graph/api/resources/intune-remoteassistance-remoteassistancepartner?view=graph-rest-beta) entity|
|Addition|beta|Added the **blueScreenCount**, **restartCount**, **averageBlueScreens** and **averageRestarts** properties to the [userExperienceAnalyticsDevicePerformance](/graph/api/resources/intune-devices-userexperienceanalyticsdeviceperformance?view=graph-rest-beta) entity|
|Addition|beta|Added the **restartCategory** property to the [userExperienceAnalyticsDeviceStartupHistory](/graph/api/resources/intune-devices-userexperienceanalyticsdevicestartuphistory?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **catetgory** property from the [windowsDeviceMalwareState](/graph/api/resources/intune-devices-windowsdevicemalwarestate?view=graph-rest-beta) entity|
|Addition|beta|Added the **requireCryptographicBinding**, **performServerValidation** and **disableUserPromptForServerValidation** properties to the [windowsWifiEnterpriseEAPConfiguration](/graph/api/resources/intune-deviceconfig-windowswifienterpriseeapconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **userExperienceAnalyticsMetricHistory**, **userExperienceAnalyticsAppHealthApplicationPerformance**, **microsoftTunnelConfigurations** and **microsoftTunnelSites** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceMalwareStates** navigation property to the [windowsMalwareInformation](/graph/api/resources/intune-devices-windowsmalwareinformation?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **windowsDevicesProtectionState** navigation property from the [windowsMalwareInformation](/graph/api/resources/intune-devices-windowsmalwareinformation?view=graph-rest-beta) entity|
|Addition|beta|Added the **remoteTenantId** and **remoteUserId** properties to the [auditActor](/graph/api/resources/intune-auditing-auditactor?view=graph-rest-beta) complex type|
|Addition|beta|Added the **totalComanagedCount** property to the [comanagedDevicesSummary](/graph/api/resources/intune-devices-comanageddevicessummary?view=graph-rest-beta) complex type|
|Addition|beta|Added the **batterySerialNumber**, **batteryHealthPercentage** and **batteryChargeCycles** properties to the [hardwareInformation](/graph/api/resources/intune-devices-hardwareinformation?view=graph-rest-beta) complex type|
|Addition|beta|Added the **bundleIdAccessControlList** property to the [iosAzureAdSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-iosazureadsinglesignonextension?view=graph-rest-beta) complex type|
|Addition|beta|Added the **totalMalwareCount**, **totalDistinctMalwareCount** and **malwareSeveritySummary** properties to the [windowsMalwareOverview](/graph/api/resources/intune-devices-windowsmalwareoverview?view=graph-rest-beta) complex type|
|Addition|beta|Added the **malwareDetectionCount** and **distinctMalwareCount** properties to the [windowsMalwareStateCount](/graph/api/resources/intune-devices-windowsmalwarestatecount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **netMotionMobility** member to the [appleVpnConnectionType](/graph/api/resources/intune-deviceconfig-applevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **cloudPC** member to the [deviceType](/graph/api/resources/intune-deviceconfig-devicetype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **mdmClientCrashed**, **timeout**, **updateError** and **updateScanFailed** members to the [iosUpdatesInstallStatus](/graph/api/resources/intune-deviceconfig-iosupdatesinstallstatus?view=graph-rest-beta) enum type|
|Addition|beta|Added the **iosAppStoreUpdateFailedToInstall**, **vppAppHasUpdateAvailable**, **userRejectedUpdate**, **managedAppNoLongerPresent**, **userRejectedInstall** and **userIsNotLoggedIntoAppStore** members to the [resultantAppStateDetail](/graph/api/resources/intune-apps-resultantappstatedetail?view=graph-rest-beta) enum type|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the following properties to [Terms of Use agreement](/graph/api/resources/agreement?view=graph-rest-beta):<ul><li>isPerDeviceAcceptanceRequired</li><li>termsExpiration</li><li>userReacceptRequiredFrequency</li></ul>|
| Addition | beta | Added a new resource type to [Terms of Use agreement](/graph/api/resources/agreement?view=graph-rest-beta):</br>[agreementFile](/graph/api/resources/agreementfile?view=graph-rest-beta)|
| Addition | beta | Added [connectedOrganization](/graph/api/resources/connectedorganization?view=graph-rest-beta) internal and external sponsors to entitlement management.  |
| Addition | beta | Added the inheritsPermissionsFrom property to the [unifiedRoleDefinition](/graph/api/resources/unifiedRoleDefinition?view=graph-rest-beta) resource. |
| Addition | beta | Added the **connectedOrganizationState** enumeration type and the **state** property to the [connectedOrganization](/graph/api/resources/connectedOrganization?view=graph-rest-beta) resource.|
| Change   | beta | Renamed **requestorSettings** allowed value from "AllExistingConnectedOrganizationSubjects" to "AllConfiguredConnectedOrganizationSubjects" |
| Addition | beta | Added the following properties to the [authorizationPolicy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta) resource type:<ul><li>**defaultUserRolePermissions**</li><li>**allowedToUseSSPR**</li><li>**allowedToSignUpEmailBasedSubscriptions**</li><li>**allowEmailVerifiedUsersToJoinOrganization**</li></ul>|

### Identity and access | Identity and sign-in

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [b2cIdentityUserFlow](/graph/api/resources/b2cidentityuserflow?view=graph-rest-beta) entity for managing user flows in an Azure Active Directory B2C tenant. |
| Addition | beta | Added the [b2xIdentityUserFlow](/graph/api/resources/b2xidentityuserflow?view=graph-rest-beta) entity for managing self-service sign up user flows in an Azure Active Directory tenant. |

### People and workplace intelligence | Profile

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | Beta | Added the following new relationships to the [profile](/graph/api/resources/profile?view=graph-rest-beta) API with associated entities and methods: <ul><li>[addresses](/graph/api/resources/itemAddress?view=graph-rest-beta)</li><li>[anniversaries](/graph/api/resources/personAnniversary?view=graph-rest-beta)</li><li>[awards](/graph/api/resources/personAward?view=graph-rest-beta)</li><li>[certifications](/graph/api/resources/personCertification?view=graph-rest-beta)</li><li>[notes](/graph/api/resources/personAnnotation?view=graph-rest-beta)</li><li>[patents](/graph/api/resources/itemPatent?view=graph-rest-beta)</li><li>[publications](/graph/api/resources/itemPublication?view=graph-rest-beta)</li></ul>|

### Reports | Microsoft 365 usage reports

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [getM365AppUserDetail](/graph/api/reportRoot-getM365AppUserDetail?view=graph-rest-beta) method. |
| Addition | beta | Added the [getM365AppUserCounts](/graph/api/reportRoot-getM365AppUserCounts?view=graph-rest-beta) method. |
| Addition | beta | Added the [getM365AppPlatformUserCounts](/graph/api/reportRoot-getM365AppPlatformUserCounts?view=graph-rest-beta) method. |

### Teamwork

| **Change type** | **Version** | **Description** |
|:---|:---|:---|
|Addition|beta|Added the **contentBytes** property to the [chatMessageHostedContent](/graph/api/resources/chatMessageHostedContent?view=graph-rest-beta) resource.|
|Addition|beta|Added the **contentType** property to the [chatMessageHostedContent](/graph/api/resources/chatMessageHostedContent?view=graph-rest-beta) resource.|
|Addition|beta|Added support for sending inline images to the [chatMessage](/graph/api/resources/chatMessage?view=graph-rest-beta) resource.|
|Addition|beta|Added the **isMembershipLimitedToOwners** property to the [team](/graph/api/resources/team?view=graph-rest-beta) resource.|
|Addition|beta and v1.0|Added the **publishingState** property to the [teamsAppDefinition](/graph/api/resources/teamsappdefinition) resource.|
|Addition|beta and v1.0|Added **AppCatalog.Submit** delegated permission to:<br><ul><li> [Publish apps](/graph/api/teamsapp-publish?view=graph-rest-beta)</li><li>[Delete app](/graph/api/teamsapp-delete)</li>|
|Addition|beta and v1.0|Added support for the `requiresReview` query parameter to:<br><ul><li> [Publish apps](/graph/api/teamsapp-publish?view=graph-rest-beta)</li><li>[Update app](/graph/api/teamsapp-update?view=graph-rest-beta)|
|Addition|v1.0|Added support for [creating a team](/graph/api/team-post?view=graph-rest-1.0) directly (without first creating a group), which also enables creating class teams.|
|Addition | v1.0 | Added the [members](/graph/api/team-post-members?view=graph-rest-1.0) navigation property to the [team](/graph/api/resources/team?view=graph-rest-1.0) resource type, enabling members to be added with increased reliability and lower latency.|

### To-do tasks

| **Change type** | **Version** | **Description** |
|:---|:---|:---|
|Addition|beta|Introduced the To Do API. Added the [todoTask](/graph/api/resources/todotask?view=graph-rest-beta), [todoTaskList](/graph/api/resources/todotasklist?view=graph-rest-beta), and [linkedResource](/graph/api/resources/linkedresource?view=graph-rest-beta) resources, and CRUD operations.|
|Change|beta|Deprecated the Outlook tasks API, including [outlookTask](/graph/api/resources/outlooktask?view=graph-rest-beta), [outlookTaskFolder](/graph/api/resources/outlooktaskfolder?view=graph-rest-beta), [outlookTaskGroup](/graph/api/resources/outlooktaskgroup?view=graph-rest-beta), and related operations and methods.|

## July 2020

### Calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the **allowNewTimeProposals** property to the [event](/graph/api/resources/event?view=graph-rest-1.0) and [eventMessageRequest](/graph/api/resources/eventmessagerequest?view=graph-rest-1.0) entities. |
| Addition | v1.0 | Added the **proposedNewTime** optional parameter to the [tentativelyAccept](/graph/api/event-tentativelyaccept?view=graph-rest-1.0) and [decline](/graph/api/event-decline?view=graph-rest-1.0) methods of **event**. |
| Addition | v1.0 | Added the [eventMessageResponse](/graph/api/resources/eventmessageresponse?view=graph-rest-1.0) entity that is based on [eventMessage](/graph/api/resources/eventmessage?view=graph-rest-1.0), and in addition, includes the **proposedNewTime** and **responseType** properties. |
| Addition | v1.0 | Added the **proposedNewTime** property to the [attendee](/graph/api/resources/attendee?view=graph-rest-1.0) complex type. |

### Change notifications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Removal | beta and v1.0 | Removed the erronously introduced **sequenceNumber** property from the [changeNotification](/graph/api/resources/changenotification) type.|
| Addition | Beta | Added [presence](/graph/api/resources/presence) to the resources supported for [change notifications](/graph/webhooks). |

### Cloud communications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [Update onlineMeeting](/graph/api/onlinemeeting-update?view=graph-rest-beta) operation for meeting updates.|
| Addition | beta | The [presence](/graph/api/resources/presence) resource now supports [change notifications](/graph/webhooks). |

### Cloud communications | Call records

Adding PSTN and direct routing call reports to Microsoft Graph (beta).

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition| beta |Added APIs to [get PSTN call report](/graph/api/callrecords-callrecord-getpstncalls?view=graph-rest-beta) and [get a direct routing report](/graph/api/callrecords-callrecord-getdirectroutingcalls?view=graph-rest-beta).|
|Addition| beta |Added new entities:<br /><li>[pstnCallLogRow](/graph/api/resources/callrecords-pstncalllogrow?view=graph-rest-beta)</li> <li>[directRoutingLogRow](/graph/api/resources/callrecords-directroutinglogrow?view=graph-rest-beta).</li>|

### Compliance | eDiscovery

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Introduced the compliance eDiscovery API, including the [ediscoveryCase](/graph/api/resources/ediscoverycase?view=graph-rest-beta), [reviewSet](/graph/api/resources/reviewset?view=graph-rest-beta), and [reviewSetQuery](/graph/api/resources/reviewsetquery?view=graph-rest-beta), and operations. |

### Devices and apps | Cloud printing

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change | beta | The [Update printer](/graph/api/printer-update) method now supports application permissions and IPP encoding.|
| Addition | beta | The following permission scopes have been added:<ul><li>Printer.ReadWrite.All</li><li>PrintJob.ReadBasic.All</li><li>PrintJob.Read.All</li><li>PrintJob.ReadWriteBasic.All</li><li>PrintJob.ReadWrite.All</li></ul>See the [permissions reference](/graph/permissions-reference#universal-print-permissions) for details. |
| Addition | beta | Added the following resources to the Universal Print API: <ul><li>[printTask](/graph/api/resources/printtask?view=graph-rest-beta)</li><li>[printTaskDefinition](/graph/api/resources/printtaskdefinition?view=graph-rest-beta)</li><li>[printTaskStatus](/graph/api/resources/printtaskstatus?view=graph-rest-beta)</li><li>[printTaskTrigger](/graph/api/resources/printtasktrigger?view=graph-rest-beta)</li></ul> |
| Change | beta | [Get printJob](/graph/api/printjob-get?view=graph-rest-beta) now supports application permissions, and `$expand=tasks`. |
| Addition | beta | Added the [Redirect printJob](/graph/api/printjob-redirect?view=graph-rest-beta) method. |
| Addition | beta | Added the following methods related to [printTaskDefinition](/graph/api/resources/printtaskdefinition?view=graph-rest-beta): <ul><li>[List taskDefinitions](/graph/api/print-list-taskdefinitions?view=graph-rest-beta)</li><li>[Create taskDefinition](/graph/api/print-post-taskdefinitions?view=graph-rest-beta)</li><li>[Update taskDefinition](/graph/api/print-update-taskdefinition?view=graph-rest-beta)</li><li>[Delete taskDefinition](/graph/api/print-delete-taskdefinition?view=graph-rest-beta)</li></ul> |
| Addition | beta | Added the following methods related to [printTaskTrigger](/graph/api/resources/printtasktrigger?view=graph-rest-beta): <ul><li>[List taskTriggers](/graph/api/printer-list-tasktriggers?view=graph-rest-beta)</li><li>[Get taskTrigger](/graph/api/printtasktrigger-get?view=graph-rest-beta)</li><li>[Create taskTrigger](/graph/api/printer-post-tasktriggers?view=graph-rest-beta)</li><li>[Delete taskTrigger](/graph/api/printer-delete-tasktrigger?view=graph-rest-beta)</li></ul> |

### Devices and apps | Corporate management

| **Change type** | **Version** | **Description** |
| :-------------- | :---------- | :------------ |
|Addition|beta|Added new entities:<br/>[deviceLogCollectionResponse](/graph/api/resources/intune-devices-devicelogcollectionresponse?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceLogCollectionRequest](/graph/api/resources/intune-devices-devicelogcollectionrequest?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidDeviceOwnerEnrollmentMode](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentmode?view=graph-rest-beta)<br/>[androidDeviceOwnerKioskModeFolderIcon](/graph/api/resources/intune-deviceconfig-androiddeviceownerkioskmodefoldericon?view=graph-rest-beta)<br/>[androidDeviceOwnerKioskModeIconSize](/graph/api/resources/intune-deviceconfig-androiddeviceownerkioskmodeiconsize?view=graph-rest-beta)<br/>[androidDeviceOwnerKioskModeScreenOrientation](/graph/api/resources/intune-deviceconfig-androiddeviceownerkioskmodescreenorientation?view=graph-rest-beta)<br/>[deviceLogCollectionTemplateType](/graph/api/resources/intune-devices-devicelogcollectiontemplatetype?view=graph-rest-beta)<br/>[microsoftLauncherDockPresence](/graph/api/resources/intune-deviceconfig-microsoftlauncherdockpresence?view=graph-rest-beta)<br/>[microsoftLauncherSearchBarPlacement](/graph/api/resources/intune-deviceconfig-microsoftlaunchersearchbarplacement?view=graph-rest-beta)<br/>[microsoftTunnelServerHealthStatus](/graph/api/resources/microsoftTunnelServerHealthStatus?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [createDeviceLogCollectionRequest](/graph/api/intune-devices-manageddevice-createdevicelogcollectionrequest?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|beta|Added the [createDownloadUrl](/graph/api/intune-devices-devicelogcollectionresponse-createdownloadurl?view=graph-rest-beta) action on [deviceLogCollectionResponse](/graph/api/resources/intune-devices-devicelogcollectionresponse?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**featureFlightedConfiguration**<br/>**macManagedAppProtection**<br/>|
|Addition|beta|Added the **enrollmentMode** property to the [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **microsoftLauncherCustomWallpaperEnabled**, **microsoftLauncherCustomWallpaperImageUrl**, **microsoftLauncherCustomWallpaperAllowUserModification**, **microsoftLauncherFeedEnabled**, **microsoftLauncherFeedAllowUserModification**, **microsoftLauncherDockPresenceConfiguration**, **microsoftLauncherDockPresenceAllowUserModification**, **microsoftLauncherSearchBarPlacementConfiguration**, **kioskModeShowDeviceInfo**, **kioskModeManagedSettingsEntryDisabled**, **kioskModeDebugMenuEasyAccessEnabled**, **kioskModeShowAppNotificationBadge**, **kioskModeScreenOrientation**, **kioskModeIconSize**, **kioskModeFolderIcon** and **kioskModeWifiAllowedSsids** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **proxyServer**, **targetedPackageIds**, **alwaysOn** and **alwaysOnLockdown** properties to the [androidDeviceOwnerVpnConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownervpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **proxyServer**, **targetedPackageIds**, **alwaysOn** and **alwaysOnLockdown** properties to the [androidWorkProfileVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconfiguration?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [deviceAndAppManagementAssignmentFilter](/graph/api/resources/intune-policyset-deviceandappmanagementassignmentfilter?view=graph-rest-beta) entity:<br/>**rule** from optional to required<br/>|
|Addition|beta|Added the **targetedMobileApps** property to the [iosVpnConfiguration](/graph/api/resources/intune-deviceconfig-iosvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumSupportedWindowsRelease** property to the [win32LobApp](/graph/api/resources/intune-apps-win32lobapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [windowsFeatureUpdateProfile](/graph/api/resources/intune-softwareupdate-windowsfeatureupdateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **microsoftTunnelConfigurations** and **microsoftTunnelSites** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **logCollectionRequests** navigation property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **enableLogCollection** property to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **androidCorporateWorkProfileCount** property to the [deviceOperatingSystemSummary](/graph/api/resources/intune-devices-deviceoperatingsystemsummary?view=graph-rest-beta) complex type|
|Addition|beta|Added the **pendingQuickScanDeviceCount** property to the [deviceProtectionOverview](/graph/api/resources/intune-devices-deviceprotectionoverview?view=graph-rest-beta) complex type|
|Addition|beta|Added the **microsoftTunnel** member to the [androidVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **microsoftTunnel** member to the [androidWorkProfileVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **microsoftTunnel** member to the [appleVpnConnectionType](/graph/api/resources/intune-deviceconfig-applevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **disable** member to the [deviceGuardLocalSystemAuthorityCredentialGuardType](/graph/api/resources/intune-deviceconfig-deviceguardlocalsystemauthoritycredentialguardtype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **deviceConfigurationForOffice365** member to the [deviceManagementTemplateType](/graph/api/resources/intune-deviceintent-devicemanagementtemplatetype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **azureAD** member to the [vpnAuthenticationMethod](/graph/api/resources/intune-deviceconfig-vpnauthenticationmethod?view=graph-rest-beta) enum type|
|Addition|beta|Added the **derivedCredential** member to the [windows10VpnAuthenticationMethod](/graph/api/resources/intune-deviceconfig-windows10vpnauthenticationmethod?view=graph-rest-beta) enum type|

### Education

| **Change type** | **Version** | **Description**                                                                                                                                                     |
| :-------------- | :---------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Addition        | beta        | Added new **expirationDate** property to the [`educationSynchronizationProfile`](/graph/api/resources/educationsynchronizationprofile?view=graph-rest-beta) resource. |
| Add             | beta        | Added new **externalSourceDetail** property to [educationSchool](/graph/api/resources/educationSchool?view=graph-rest-beta), [educationClass](/graph/api/resources/educationClass?view=graph-rest-beta), [educationUser](/graph/api/resources/educationUser?view=graph-rest-beta) resources |

### Extensions | Schema extensions

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | The [schema extensions](/graph/api/resources/schemaextension) feature is now generally available in [Microsoft Cloud for US Government](/graph/deployments). |

### Identity and access
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|v1.0|Added the [getAvailableExtensionProperties](/graph/api/directoryObject-getAvailableExtensionProperties?view=graph-rest-1.0) method to the [directoryObject](/graph/api/resources/directoryObject?view=graph-rest-1.0) resource.|
| Addition | beta | Added the **settings** navigation property to the [organization](/graph/api/resources/organization?view=graph-rest-beta) entity. |
| Addition | beta | Added the [organizationSettings](/graph/api/resources/organizationsettings?view=graph-rest-beta) entity.  |
| Addition | beta and v1.0 | Added the following operations to [devices](/graph/api/resources/device): <br/> [Delete registered owner](/graph/api/delete-registeredowners) <br/> [Delete registered user](/graph/api/delete-registeredusers)|
| Addition | v1.0 | Added the **assignedLabels**, **expirationDateTime**, **membershipRule**, **membershipRuleProcessingState**, **preferredLanguage**, and **theme** properties to the [group](/graph/api/resources/group?view=graph-rest-v1.0) entity. |
| Addition | beta | Added the **infoCatalogs** property to the [group](/graph/api/resources/group?view=graph-rest-beta) entity and the [user](/graph/api/resources/user?view=graph-rest-beta) entity. |
| Addition | beta | Added the **id** property to the [synchronizationSchema](/graph/api/resources/synchronization-synchronizationschema?view=graph-rest-beta) entity. |
| Addition | beta | Added the [acquireAccessToken](/graph/api/synchronization-synchronization-acquireAccessToken?view=graph-rest-beta) method to the [synchronization](/graph/api/resources/synchronization-synchronization?view=graph-rest-beta) resource|
| Addition | beta | Added the [entitlementManagementSettings](/graph/api/resources/entitlementmanagementsettings?view=graph-rest-beta) entity. |
| Addition | v1.0 | Added the [identitySecurityDefaultsEnforcementPolicy API](/graph/api/resources/identitysecuritydefaultsenforcementpolicy?view=graph-rest-1.0), which represents Azure Active Directory security defaults policy.|
| Addition        | v1.0        | Added [delta query](delta-query-overview.md) capability to [servicePrincipal](/graph/api/serviceprincipal-delta). |
| Addition | beta | Added the [connectedOrganization](/graph/api/resources/connectedorganization?view=graph-rest-beta) to entitlement management.  |
| Addition        | v1.0        | Added [delta query](delta-query-overview.md) capability for [oauth2PermissionGrant](/graph/api/oauth2Permissiongrant-delta).
| Addition        | v1.0        | Added [delta query](delta-query-overview.md) capability for [oauth2PermissionGrant](/graph/api/oauth2Permissiongrant-delta). |
| Addition | beta | Added update operations to the entitlement management [access package](/graph/api/resources/accesspackage?view=graph-rest-beta), [access package catalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta) and [access package assignment policy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta)|
| Addition | Beta | Added new property **isAssignableToRole** to [group](/graph/api/resources/group?view=graph-rest-beta).|

### Identity and access | Identity and sign-in
| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | beta | Added the **userRiskLevels** property to the [conditionalaccessconditionset](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta) entity. |
| Addition | beta | Added the **passwordChange** grant control to the [conditionalaccessgrantcontrols](/graph/api/resources/conditionalaccessgrantcontrols?view=graph-rest-beta) entity. |
| Addition | v1.0 | Added new entity types:<br/>[conditionalAccessPolicy](/graph/api/resources/conditionalAccessPolicy)<br/>
| Addition | v1.0 | Added new complex types:<br/>[conditionalAccessSessionControl](/graph/api/resources/conditionalAccessSessionControl)<br/>[applicationEnforcedRestrictionsSessionControl](/graph/api/resources/applicationEnforcedRestrictionsSessionControl)<br/>[cloudAppSecuritySessionControl](/graph/api/resources/cloudAppSecuritySessionControl)<br/>[signInFrequencySessionControl](/graph/api/resources/signInFrequencySessionControl)<br/>[persistentBrowserSessionControl](/graph/api/resources/persistentBrowserSessionControl)<br/>[conditionalAccessSessionControls](/graph/api/resources/conditionalAccessSessionControls)<br/>[conditionalAccessApplications](/graph/api/resources/conditionalAccessApplications)<br/>[conditionalAccessUsers](/graph/api/resources/conditionalAccessUsers)<br/>[conditionalAccessPlatforms](/graph/api/resources/conditionalAccessPlatforms)<br/>[conditionalAccessLocations](/graph/api/resources/conditionalAccessLocations)<br/>[conditionalAccessConditionSet](/graph/api/resources/conditionalAccessConditionSet)<br/>[conditionalAccessGrantControls](/graph/api/resources/conditionalAccessGrantControls)<br/>|
| Addition | v1.0 | Added the [namedLocation API](/graph/api/resources/namedLocation?view=graph-rest-v1.0), which represents named locations in Azure AD conditional access. |
|Addition|beta|Added the [openIDConnectProvider](/graph/api/resources/openidconnectprovider?view=graph-rest-beta) complex type, [availableprovidertypes](/graph/api/identityprovider-list-availableprovidertypes?view=graph-rest-beta) method and [claimsMapping](/graph/api/resources/claimsmapping?view=graph-rest-beta) property.|
|Change|beta|Updated the [identityProvider](/graph/api/resources/identityprovider?view=graph-rest-beta) entity and the [create](/graph/api/identityprovider-post-identityproviders?view=graph-rest-beta), [list](/graph/api/identityprovider-list?view=graph-rest-beta), [get](/graph/api/identityprovider-get?view=graph-rest-beta), [update](/graph/api/identityprovider-update?view=graph-rest-beta), [delete](/graph/api/identityprovider-delete?view=graph-rest-beta) and [post](/graph/api/identityprovider-post-identityproviders?view=graph-rest-beta) operations to include OpenID Connect Provider.|
| Addition | v1.0 | Added the [namedLocation API](/graph/api/resources/namedLocation?view=graph-rest-1.0), which represents named locations in Azure AD conditional access. |

### People and workplace intelligence | Insights
| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | beta | Added the **itemInsights** navigation property to the **organizationSettings** entity. |
| Addition | beta | Added the **itemInsightsSettings** entity and the following operations: <br/> [Get itemInsightSettings](/graph/api/iteminsightssettings-get?view=graph-rest-beta) <br/> [Update itemInsightSettings](/graph/api/iteminsightssettings-update?view=graph-rest-beta) |


### People and workplace intelligence | Profile
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the **profileCardProperties** navigation property to the [organizationSettings](/graph/api/resources/organizationsettings?view=graph-rest-beta) entity. |
| Addition | beta | Added the **profileCardProperty** entity and the following operations: <br/> [List](/graph/api/organizationsettings-list-profilecardproperties) <br/> [Create](/graph/api/organizationsettings-post-profilecardproperties) <br/> [Get](/graph/api/profilecardproperty-get?view=graph-rest-beta) <br/> [Update](/graph/api/profilecardproperty-update?view=graph-rest-beta) <br/> [Delete](/graph/api/profilecardproperty-delete). |

### Sites and lists | Taxonomy

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Introduced the taxonomy API, including the [termStore.store](/graph/api/resources/termstore-store?view=graph-rest-beta), [termStore.term](/graph/api/resources/termstore-term?view=graph-rest-beta), [termStore.set](/graph/api/resources/termstore-set?view=graph-rest-beta), and [termStore.relation](/graph/api/resources/termstore-relation?view=graph-rest-beta) resources and associated methods. |

### Teamwork
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | beta, v1.0 | Added new permissions [TeamsAppInstallation.ReadForTeam](/graph/permissions-reference#Teams-app-installation-permissions), [TeamsAppInstallation.ReadWriteForTeam](/graph/permissions-reference#Teams-app-installation-permissions), [TeamsAppInstallation.ReadForTeam.All](/graph/permissions-reference#Teams-app-installation-permissions), [TeamsAppInstallation.ReadWriteForTeam.All](/graph/permissions-reference#Teams-app-installation-permissions). |
| Addition | beta | Added delegated permissions support for [notifications](/graph/api/subscription-post-subscriptions?view=graph-rest-beta) for channel and chat messages. |

### Workbooks and charts
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition|beta and v1.0 |Added the [workbookOperation](/graph/api/resources/workbookoperation) relationship to the [workbook](/graph/api/resources/workbook?view=graph-rest-beta) entity. |
|Addition|beta and v1.0 |Added the  [Get workbookOperation](/graph/api/workbookoperation-get) method to the [workbookOperation](/graph/api/resources/workbookoperation?view=graph-rest-beta) entity

## June 2020

### Calendar
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | The [delta](/graph/api/event-delta?view=graph-rest-beta) function supports an additional scenario to get incremental changes (new, updated, or removed) of events in a user calendar without necessarily being bounded by a date range. |

### Change notifications

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added the [changeNotification](/graph/api/resources/changenotification), [changeNotificationCollection](/graph/api/resources/changenotificationcollection), and [resourceData](/graph/api/resources/resourcedata) resources to the [change notification](/graph/api/concepts/webhooks) API. |

### Cloud communications
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the [onlineMeeting: createOrGet](/graph/api/onlinemeeting-createorget) method.|
| Addition | v1.0 | Added an optional **externalId** property. |
|Addition | beta | Added an additional path to the [Get presence](/graph/api/presence-get?view=graph-rest-beta) API.|
|Addition | v1.0 | Added an optional `Accept-Language` header for [online meetings](/graph/api/resources/onlinemeeting).|

### Devices and apps | Cloud printing

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [printMargin](/graph/api/resources/printmargin?view=graph-rest-beta) complex type.|
| Change | beta | Renamed enum types: <br/><ul><li>printPresentationDirection  -> printMultipageLayout</li><li>printDuplexConfiguration -> printDuplexMode</li><li>printColorConfiguration  -> printColorMode</li><li>documentConfiguration -> configuration</li></ul>|
| Change | beta | Renamed **printFinishing** enum values: <br/><ul><li>edgeStitch -> stitchEdge</li><li>edgeStitchLeft -> stitchLeftEdge</li><li>edgeStitchTop -> stitchTopEdge</li><li>edgeStitchRight -> stitchRightEdge</li><li>edgeStitchBottom -> stitchBottomEdge</li></ul>|
| Change | beta | Renamed properties on the [integerRange](/graph/api/resources/integerrange?view=graph-rest-beta) complex type: <br/><ul><li>minimum -> start</li><li>maximum -> end</li></ul>|
| Change | beta | Renamed properties on the [printDocument](/graph/api/resources/printdocument?view=graph-rest-beta) entity type: <br/><ul><li>name -> displayName</li><li>mimeType -> contentType</li><li>sizeInBytes -> size</li><li>documentConfiguration -> configuration</li></ul>|
| Change | beta | Renamed properties on the [printerCapabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta) complex type: <br/><ul><li>supportedDocumentMimeTypes -> contentTypes</li><li>supportedPrintQualities -> qualities</li><li>supportedDuplexConfigurations -> duplexModes</li><li>supportedCopiesPerJob -> copiesPerJob</li><li>supportedFinishings -> finishings</li><li>supportedMediaColors -> mediaColors</li><li>supportedMediaTypes -> mediaTypes</li><li>supportedMediaSizes -> mediaSizes</li><li>supportedPagesPerSheet -> pagesPerSheet</li><li>supportedOrientations -> orientations</li><li>supportedOutputBins -> outputBins</li><li>supportedPresentationDirections -> multipageLayouts</li><li>supportedColorConfigurations -> colorModes</li></ul>|
| Addition | beta | Added properties to the [printerCapabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta) complex type: <br/><ul><li>feedDirections</li><li>isPageRangeSupported</li><li>dpis</li><li>queueBufferSizeInBytes</li><li>inputBins</li><li>topMargins</li><li>bottomMargins</li><li>rightMargins</li><li>leftMargins</li><li>collation</li><li>scalings</li></ul>|
| Change | beta | Renamed properties on the [printerDefaults](/graph/api/resources/printerdefaults?view=graph-rest-beta) complex type: <br/><ul><li>documentMimeType -> contentType</li><li>pdfFitToPage -> fitPdfToPage</li><li>presentationDirection -> multipageLayout</li><li>printColorConfiguration -> colorMode</li><li>printQuality -> quality</li><li>duplexConfiguration -> duplexMode</li></ul>|
| Addition | beta | Added properties to the [printerDefaults](/graph/api/resources/printerdefaults?view=graph-rest-beta) complex type: <br/><ul><li>dpi</li><li>scaling</li></ul>|
| Change | beta | Changed the type of the **pageRanges** property on the [printerDocumentConfiguration](/graph/api/resources/printerdocumentconfiguration?view=graph-rest-beta) complex type from **printPageRange** to [integerRange](/graph/api/resources/integerrange?view=graph-rest-beta)|
| Change | beta | Renamed properties on the [printerDocumentConfiguration](/graph/api/resources/printerdocumentconfiguration?view=graph-rest-beta) complex type: <br/><ul><li>printQuality -> quality</li><li>printResolutionInDpi -> dpi</li><li>duplexConfiguration -> duplexMode</li><li>colorConfiguration -> colorMode</li></ul>|
| Addition | beta | Added properties to the [printerDocumentConfiguration](/graph/api/resources/printerdocumentconfiguration?view=graph-rest-beta) complex type: <br/><ul><li>inputBin</li><li>outputBin</li><li>mediaSize</li><li>margin</li><li>mediaType</li><li>finishings</li><li>pagesPerSheet</li><li>multipageLayout</li><li>collate</li><li>scaling</li></ul>|
| Change | beta | The [Update printer](/graph/api/printer-update) method now supports application permissions and IPP encoding.|
| Addition | beta | Added support for `$expand=documents` in the [List jobs](/graph/api/printer-list-jobs) method. |
| Addition | beta | Added the [create](/graph/api/printer-create?view=graph-rest-beta) action bound to the [printer](/graph/api/resources/printer?view=graph-rest-beta) entity to enable registration of printers via Microsoft Graph. |
| Addition | beta | Added new entity types: <ul><li>[printOperation](/graph/api/resources/printoperation?view=graph-rest-beta)</li><li>[printerCreateOperation](/graph/api/resources/printercreateoperation?view=graph-rest-beta)</li></ul>|
| Addition | beta | Added new complex types: <ul><li>[printCertificateSigningRequest](/graph/api/resources/printcertificatesigningrequest?view=graph-rest-beta)</li><li>[printOperationStatus](/graph/api/resources/printoperationstatus?view=graph-rest-beta)</li></ul>|

### Devices and apps | Corporate management

| **Change type** | **Version**   | **Description** |
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androiddeviceownerpkcscertificateprofile?view=graph-rest-beta)<br/>[comanagementEligibleDevice](/graph/api/resources/intune-devices-comanagementeligibledevice?view=graph-rest-beta)<br/>[deviceAndAppManagementAssignmentFilter](/graph/api/resources/intune-policyset-deviceandappmanagementassignmentfilter?view=graph-rest-beta)<br/>[deviceComplianceScript](/graph/api/resources/intune-devices-devicecompliancescript?view=graph-rest-beta)<br/>[deviceComplianceScriptDeviceState](/graph/api/resources/intune-devices-devicecompliancescriptdevicestate?view=graph-rest-beta)<br/>[deviceComplianceScriptRunSummary](/graph/api/resources/intune-devices-devicecompliancescriptrunsummary?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[comanagedDevicesSummary](/graph/api/resources/intune-devices-comanageddevicessummary?view=graph-rest-beta)<br/>[comanagementEligibleDevicesSummary](/graph/api/resources/intune-devices-comanagementeligibledevicessummary?view=graph-rest-beta)<br/>[cryptographySuite](/graph/api/resources/intune-deviceconfig-cryptographysuite?view=graph-rest-beta)<br/>[deviceCompliancePolicyScript](/graph/api/resources/intune-deviceconfig-devicecompliancepolicyscript?view=graph-rest-beta)<br/>[deviceComplianceScriptError](/graph/api/resources/intune-deviceconfig-devicecompliancescripterror?view=graph-rest-beta)<br/>[deviceComplianceScriptRule](/graph/api/resources/intune-deviceconfig-devicecompliancescriptrule?view=graph-rest-beta)<br/>[deviceComplianceScriptRuleError](/graph/api/resources/intune-deviceconfig-devicecompliancescriptruleerror?view=graph-rest-beta)<br/>[deviceComplianceScriptValidationResult](/graph/api/resources/intune-deviceconfig-devicecompliancescriptvalidationresult?view=graph-rest-beta)<br/>[userExperienceAnalyticsSettings](/graph/api/resources/intune-devices-userexperienceanalyticssettings?view=graph-rest-beta)<br/>[win32LobAppFileSystemRule](/graph/api/resources/intune-apps-win32lobappfilesystemrule?view=graph-rest-beta)<br/>[win32LobAppPowerShellScriptRule](/graph/api/resources/intune-apps-win32lobapppowershellscriptrule?view=graph-rest-beta)<br/>[win32LobAppProductCodeRule](/graph/api/resources/intune-apps-win32lobappproductcoderule?view=graph-rest-beta)<br/>[win32LobAppRegistryRule](/graph/api/resources/intune-apps-win32lobappregistryrule?view=graph-rest-beta)<br/>[win32LobAppRule](/graph/api/resources/intune-apps-win32lobapprule?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[authenticationTransformConstant](/graph/api/resources/intune-deviceconfig-authenticationtransformconstant?view=graph-rest-beta)<br/>[code](/graph/api/resources/intune-deviceconfig-code?view=graph-rest-beta)<br/>[comanagementEligibleType](/graph/api/resources/intune-devices-comanagementeligibletype?view=graph-rest-beta)<br/>[dataType](/graph/api/resources/intune-deviceconfig-datatype?view=graph-rest-beta)<br/>[deviceAndAppManagementAssignmentFilterType](/graph/api/resources/intune-shared-deviceandappmanagementassignmentfiltertype?view=graph-rest-beta)<br/>[deviceManagementCertificationAuthority](/graph/api/resources/intune-deviceconfig-devicemanagementcertificationauthority?view=graph-rest-beta)<br/>[diffieHellmanGroup](/graph/api/resources/intune-deviceconfig-diffiehellmangroup?view=graph-rest-beta)<br/>[macOSContentCachingClientPolicy](/graph/api/resources/intune-deviceconfig-macoscontentcachingclientpolicy?view=graph-rest-beta)<br/>[macOSContentCachingParentSelectionPolicy](/graph/api/resources/intune-deviceconfig-macoscontentcachingparentselectionpolicy?view=graph-rest-beta)<br/>[macOSContentCachingPeerPolicy](/graph/api/resources/intune-deviceconfig-macoscontentcachingpeerpolicy?view=graph-rest-beta)<br/>[macOSContentCachingType](/graph/api/resources/intune-deviceconfig-macoscontentcachingtype?view=graph-rest-beta)<br/>[managedAppPhoneNumberRedirectLevel](/graph/api/resources/intune-mam-managedappphonenumberredirectlevel?view=graph-rest-beta)<br/>[microsoftLauncherDockPresence](/graph/api/resources/intune-deviceconfig-microsoftlauncherdockpresence?view=graph-rest-beta)<br/>[microsoftLauncherSearchBarPlacement](/graph/api/resources/intune-deviceconfig-microsoftlaunchersearchbarplacement?view=graph-rest-beta)<br/>[operator](/graph/api/resources/intune-deviceconfig-operator?view=graph-rest-beta)<br/>[perfectForwardSecrecyGroup](/graph/api/resources/intune-deviceconfig-perfectforwardsecrecygroup?view=graph-rest-beta)<br/>[win32LobAppFileSystemOperationType](/graph/api/resources/intune-apps-win32lobappfilesystemoperationtype?view=graph-rest-beta)<br/>[win32LobAppRegistryRuleOperationType](/graph/api/resources/intune-apps-win32lobappregistryruleoperationtype?view=graph-rest-beta)<br/>[win32LobAppRuleOperator](/graph/api/resources/intune-apps-win32lobappruleoperator?view=graph-rest-beta)<br/>[win32LobAppRuleType](/graph/api/resources/intune-apps-win32lobappruletype?view=graph-rest-beta)<br/>[win32LobPowerShellScriptRuleOperationType](/graph/api/resources/intune-apps-win32lobpowershellscriptruleoperationtype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [validateComplianceScript](/graph/api/intune-deviceconfig-devicecompliancepolicy-validatecompliancescript?view=graph-rest-beta) action on [deviceCompliancePolicy](/graph/api/resources/intune-shared-devicecompliancepolicy?view=graph-rest-beta) collection |
|Addition|beta|Added the [enableUnlicensedAdminstrators](/graph/api/intune-deviceconfig-devicemanagement-enableunlicensedadminstrators?view=graph-rest-beta) action on [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [assign](/graph/api/intune-devices-devicecompliancescript-assign?view=graph-rest-beta) action on [deviceComplianceScript](/graph/api/resources/intune-devices-devicecompliancescript?view=graph-rest-beta) |
|Addition|beta|Added the [getReportFilters](/graph/api/intune-reporting-devicemanagementreports-getreportfilters?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [getComanagedDevicesSummary](/graph/api/intune-devices-devicemanagement-getcomanageddevicessummary?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [getComanagementEligibleDevicesSummary](/graph/api/intune-devices-devicemanagement-getcomanagementeligibledevicessummary?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) |
|Change|beta|Changed the following properties on the [androidDeviceOwnerCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androiddeviceownercertificateprofilebase?view=graph-rest-beta) entity:<br/>**subjectNameFormat** from required to optional<br/>|
|Addition|beta|Added the **microsoftLauncherCustomWallpaperEnabled**, **microsoftLauncherCustomWallpaperImageUrl**, **microsoftLauncherCustomWallpaperAllowUserModification**, **microsoftLauncherFeedEnabled**, **microsoftLauncherFeedAllowUserModification**, **microsoftLauncherDockPresenceConfiguration**, **microsoftLauncherDockPresenceAllowUserModification**, **microsoftLauncherSearchBarPlacementConfiguration** and **microsoftLauncherSearchBarPlacementAllowUserModification** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customDialerAppPackageId** and **customDialerAppDisplayName** properties to the [androidManagedAppProtection](/graph/api/resources/intune-shared-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **customDialerAppProtocol**, **customDialerAppPackageId** and **customDialerAppDisplayName** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **unlicensedAdminstratorsEnabled** and **userExperienceAnalyticsSettings** properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **metadata** property to the [deviceManagementCachedReportConfiguration](/graph/api/resources/intune-reporting-devicemanagementcachedreportconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **sharedDeviceBlockTemporarySessions** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customDialerAppProtocol** property to the [iosManagedAppProtection](/graph/api/resources/intune-shared-iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **contentCachingEnabled**, **contentCachingType**, **contentCachingMaxSizeBytes**, **contentCachingDataPath**, **contentCachingDisableConnectionSharing**, **contentCachingForceConnectionSharing**, **contentCachingClientPolicy**, **contentCachingClientListenRanges**, **contentCachingPeerPolicy**, **contentCachingPeerListenRanges**, **contentCachingPeerFilterRanges**, **contentCachingParentSelectionPolicy**, **contentCachingParents**, **contentCachingLogClientIdentities**, **contentCachingPublicRanges**, **contentCachingBlockDeletion**, **contentCachingShowAlerts**, **contentCachingKeepAwake** and **contentCachingPort** properties to the [macOSDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-macosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **dialerRestrictionLevel** property to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **rules** property to the [win32LobApp](/graph/api/resources/intune-apps-win32lobapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceCompliancePolicyScript** property to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **cryptographySuite** property to the [windows10VpnConfiguration](/graph/api/resources/intune-deviceconfig-windows10vpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignmentFilters**, **deviceComplianceScripts**, **comanagedDevices** and **comanagementEligibleDevices** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **rootCertificatesForServerValidation** navigation property to the [macOSEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-macosenterprisewificonfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateRevokeStatusLastChangeDateTime** property to the [managedAllDeviceCertificateState](/graph/api/resources/intune-deviceconfig-managedAllDeviceCertificateState?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceAndAppManagementAssignmentFilterId** and **deviceAndAppManagementAssignmentFilterType** properties to the [deviceAndAppManagementAssignmentTarget](/graph/api/resources/intune-shared-deviceandappmanagementassignmenttarget?view=graph-rest-beta) complex type|
|Addition|beta|Added the **bing** property to the [excludedApps](/graph/api/resources/intune-apps-excludedapps?view=graph-rest-beta) complex type|
|Addition|beta|Added the **errorCode** property to the [resetPasscodeActionResult](/graph/api/resources/intune-devices-resetpasscodeactionresult?view=graph-rest-beta) complex type|
|Addition|beta|Added the **androidnGMS** member to the [deviceType](/graph/api/resources/intune-shared-devicetype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **includeCompanyPortalLink** member to the [notificationTemplateBrandingOptions](/graph/api/resources/intune-notification-notificationtemplatebrandingoptions?view=graph-rest-beta) enum type|
|Addition|beta|Added the **aes192** and **aes192Gcm** members to the [vpnEncryptionAlgorithmType](/graph/api/resources/intune-deviceconfig-vpnencryptionalgorithmtype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **md5** member to the [vpnIntegrityAlgorithmType](/graph/api/resources/intune-deviceconfig-vpnintegrityalgorithmtype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **duplicateLocationId** member to the [vppTokenState](/graph/api/resources/intune-onboarding-vpptokenstate?view=graph-rest-beta) enum type|
|Addition|beta|Added new entities:<br/>[complianceManagementPartner](/graph/api/resources/intune-onboarding-compliancemanagementpartner?view=graph-rest-1.0)<br/>|
|Addition|beta|Added new complex types:<br/>[complianceManagementPartnerAssignment](/graph/api/resources/intune-onboarding-compliancemanagementpartner?view=graph-rest-1.0)<br/>|
|Addition|beta|Added the **complianceManagementPartners** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-1.0) entity|

### Education

| **Change type** | **Version** | **Description**                                                                                                                 |
| :-------------- | :---------- | :------------------------------------------------------------------------------------------------------------------------------ |
| Change          | Beta        | The [educationTeacher](/graph/api/resources/educationteacher) `externalId` property is now returned when using delegated permissions. |
| Change          | Beta        | The [educationStudent](/graph/api/resources/educationstudent) `externalId` property is now returned when using delegated permissions. |
| Change          | Beta        | Added `lms` to the list of possible values for `educationExternalSource`.                                                       |

### Files

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the [pendingOperations](/graph/api/resources/pendingOperations?view=graph-rest-1.0) and [pendingContentUpdate](/graph/api/resources/pendingContentUpdate?view=graph-rest-1.0) resources. The **pendingOperations** resource applies to the [driveItem](/graph/api/resources/driveItem?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added the [restore](/graph/api/driveitem-restore?view=graph-rest-1.0) action to the [driveItem](/graph/api/resources/driveItem?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added the **orientation** property to the [photo](/graph/api/resources/photo?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added the **sha256Hash** property to the [hashes](/graph/api/resources/hashes?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added the **deferCommit** parameter to the [createUploadSession](/graph/api/driveitem-createuploadsession?view=graph-rest-1.0) action. |
| Addition | v1.0 | Added the [storagePlanInformation](/graph/api/resources/storagePlanInformation?view=graph-rest-1.0) resource. The **storagePlanInformation** resource applies to the [quota](/graph/api/resources/quota?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added the **fileSize** property to the [driveItemUploadableProperties](/graph/api/resources/driveItemUploadableProperties?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added the **name** property to the [contentTypeInfo](/graph/api/resources/contentTypeInfo?view=graph-rest-1.0) resource. |

### Identity and access
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|v1.0|Added the **claimsMappingPolicies** relationship to the [servicePrincipal](/graph/api/resources/servicePrincipal?view=graph-rest-1.0) resource.|
|Addition|v1.0|Added the **homeRealmDiscoveryPolicies** relationship to the [servicePrincipal](/graph/api/resources/servicePrincipal?view=graph-rest-1.0) resource.|
|Addition|v1.0|Added the **tokenIssuancePolicies** relationship to the [servicePrincipal](/graph/api/resources/servicePrincipal?view=graph-rest-1.0) resource.|
|Addition|v1.0|Added the **tokenLifetimePolicies** relationship to the [servicePrincipal](/graph/api/resources/servicePrincipal?view=graph-rest-1.0) resource.|
| Addition | v1.0 | Added the **resourceBehaviorOptions** and **resourceProvisioningOptions** properties to the [group](/graph/api/resources/group?view=graph-rest-1.0) entity.|
|Deletion| beta | Removed the **isGuest** property from the [riskyUser](/graph/api/resources/riskyuser?view=graph-rest-beta) resource. |
| Addition | beta | Added the [connector](/graph/api/resources/connector?view=graph-rest-beta) entity and the following actions: <br/> [Get connector](/graph/api/connector-get?view=graph-rest-beta) <br/> [List memberOf](/graph/api/connector-list-memberof?view=graph-rest-beta) <br/> [List connectors](/graph/api/connector-list?view=graph-rest-beta) <br/> [Add connector to connectorGroup](/graph/api/connector-post-memberof?view=graph-rest-beta) |
| Addition | beta | Added the [connectorGroup](/graph/api/resources/connectorgroup?view=graph-rest-beta) entity and the following actions: <br/> [Get connectorGroup](/graph/api/connectorgroup-get?view=graph-rest-beta) <br/> [Assign an application](/graph/api/connectorgroup-post-applications?view=graph-rest-beta) <br/> [List applications](/graph/api/connectorgroup-list-applications?view=graph-rest-beta)  <br/> [List connectorGroups](/graph/api/connectorgroup-list?view=graph-rest-beta) <br/> [Add connector](/graph/api/connectorgroup-post-members?view=graph-rest-beta) <br/> [List connectors](/graph/api/connectorgroup-list-members?view=graph-rest-beta) <br/> [Create connectorGroup](/graph/api/connectorgroup-post?view=graph-rest-beta) <br/>[Update connectorGroup](/graph/api/connectorgroup-update?view=graph-rest-beta) <br/> [Delete connectorGroup](/graph/api/connectorgroup-delete?view=graph-rest-beta) |
| Addition | beta | Added the [onPremisesPublishing](/graph/api/resources/onpremisespublishing?view=graph-rest-beta) entity. |
| Addition | beta | Added the [onPremisesPublishingSingleSignOn](/graph/api/resources/onpremisespublishingsinglesignon?view=graph-rest-beta) entity. |
| Addition | beta | Added [verifiedCustomDomainCertificatesMetadata](/graph/api/resources/verifiedcustomdomaincertificatesmetadata?view=graph-rest-beta) entity.|
| Addition | beta | Added the [kerberosSignOnSettings](/graph/api/resources/kerberossignonsettings?view=graph-rest-beta) entity. |
| Change | beta | Changed in the [onPremisesAgent](/graph/api/resources/onpremisesagent?view=graph-rest-beta),  [onPremisesAgentGroup](/graph/api/resources/onpremisesagentgroup?view=graph-rest-beta), and [publishedResource](/graph/api/resources/publishedresource?view=graph-rest-beta) entity the publishingType value from **appProxy** to **applicationProxy**. |
| Addition | beta | Added the **isEnabled** property to the [onPremisesPublishingProfile](/graph/api/resources/onpremisespublishingprofile?view=graph-rest-beta) entity. |
| Addition | beta | Added [connector](/graph/api/resources/connector?view=graph-rest-beta) and [connectorGroup](/graph/api/resources/connectorgroup?view=graph-rest-beta) as navigation property to the OnPremisesPublishingProfile entity. |
| Addition | beta | Added the **onPremisesPublishing** property to [application](/graph/api/resources/application?view=graph-rest-beta entity. |
| Addition | beta | Added the **OnPremisesPublishing** property to [Update Application](/graph/api/application-update?view=graph-rest-beta). |
| Addition | beta | Added new resources [authenticationFlowsPolicy](/graph/api/resources/authenticationflowspolicy?view=graph-rest-beta) and [selfServiceSignUpAuthenticationFlowConfiguration](/graph/api/resources/selfservicesignupauthenticationflowconfiguration?view=graph-rest-beta) and [get](/graph/api/authenticationflowspolicy-get?view=graph-rest-beta) and [update](/graph/api/authenticationflowspolicy-update?view=graph-rest-beta) operations.|
| Addition | beta, v1.0 | Added support for application permissions to the [List conversations](/graph/api/group-list-conversations), [Get conversation](/graph/api/group-get-conversation), [List conversation threads](/graph/api/conversation-list-threads), [Get conversation thread](/graph/api/group-get-thread), and [List threads](/graph/api/group-list-threads) APIs. |
|Addition |v1.0| Promoted the [riskyUsers API](/graph/api/resources/riskyuser?view=graph-rest-1.0) and the [riskDetection API](/graph/api/resources/riskdetection?view=graph-rest-1.0) to the v1.0 endpoint. |
|Addition|beta|Added the [synchronizationJobApplicationParameters](/graph/api/resources/synchronization-synchronizationJobApplicationParameters?view=graph-rest-beta) resource type|
|Addition|beta|Added the [synchronizationJobSubject](/graph/api/resources/synchronization-synchronizationJobSubject?view=graph-rest-beta) resource type|
|Addition|beta|Added the [provisionOnDemand](/graph/api/synchronization-synchronizationjob-provision-on-demand?view=graph-rest-beta) method to the [synchronizationJob](/graph/api/resources/synchronization-synchronizationJob?view=graph-rest-beta) resource|

### Search

| **Change type** | **Version** | **Description**                                                                                                                                 |
|:----------------|:------------|:------------------------------------------------------------------------------------------------------------------------------------------------|
| Addition        | beta        | Added the **aliases**, **isRefinable**, and **labels** properties to the [property](/graph/api/resources/property?view=graph-rest-beta) entity. |
| Changed         | beta        | The maximum number of properties on a [schema](/graph/api/resources/schema?view=graph-rest-beta) entity has been increased to 128.              |
| Addition        | beta        | Added the [get externalItem](/graph/api/externalitem-get?view=graph-rest-beta) operation.                                                       |


### Security

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition | beta and v1.0 | Added the following properties to the [alert](/graph/api/resources/alert?view=graph-rest-1.0) entity:  **incidentIds**, [securityResources](/graph/api/resources/securityResource?view=graph-rest-1.0) - **resource**, **resourceType**,[networkConnection](/graph/api/resources/networkconnection?view=graph-rest-1.0) - **sourceLocation**, **destinationLocation**.|

### Sites and lists
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the [geolocationColumn](/graph/api/resources/geolocationcolumn?view=graph-rest-1.0) resource. The **geolocationColumn** resource applies to the [columnDefinition](/graph/api/resources/columnDefinition?view=graph-rest-1.0) resource. |

### Teamwork

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | beta, v1.0 | Added new delegated permissions [AppCatalog.Read.All](/graph/permissions-reference#appcatalog-resource-permissions), [ChatMessage.Send](/graph/permissions-reference#chatmessage-permissions), [Teams.Create](/graph/permissions-reference#teams-permissions), [TeamsAppInstallation.ReadForUser](/graph/permissions-reference#Teams-app-installation-permissions), [TeamsAppInstallation.ReadWriteForUser](/graph/permissions-reference#Teams-app-installation-permissions), [TeamsAppInstallation.ReadWriteSelfForUser](/graph/permissions-reference#Teams-app-installation-permissions). |
| Addition | beta, v1.0 | Added new application permissions [Teams.Create](/graph/permissions-reference#teams-permissions), [TeamsAppInstallation.ReadForUser.All](/graph/permissions-reference#Teams-app-installation-permissions), [TeamsAppInstallation.ReadWriteForUser.All](/graph/permissions-reference#Teams-app-installation-permissions), [TeamsAppInstallation.ReadWriteSelfForUser.All](/graph/permissions-reference#Teams-app-installation-permissions). |
| Addition | beta, v1.0 | Added support for getting the [filesFolder](/graph/api/channel-get-filesfolder?view=graph-rest-1.0) of a [channel](/graph/api/resources/channel?view=graph-rest-1.0).|
|Addition | beta, v1.0 | Added [primaryChannel](/graph/api/team-get-primarychannel?view=graph-rest-1.0) navigation property to [team](/graph/api/resources/team?view=graph-rest-1.0) resource type.|
|Addition | beta | Added [members](/graph/api/team-post-members?view=graph-rest-beta) navigation property to [team](/graph/api/resources/team?view=graph-rest-beta) resource type, enabling members to be added with increased reliability and lower latency.|

### Users

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [regionalAndLanguageSettings](/graph/api/resources/regionandlanguagesettings) entity.|
| Addition | beta | Added the [regionalFormatOverrides](/graph/api/resources/regionalformatoverrides) complex type.|
| Addition | beta | Added the [regionalAndLanguageSettings-get](/graph/api/regionalandlanguagesettings-get) function on the [regionalAndLanguageSettings](/graph/api/resources/regionalandlanguagesettings) resource.|
| Addition | beta | Added the [regionalAndLanguageSettings-update](/graph/api/regionalandlanguagesettings-update) function on the [regionalAndLanguageSettings](/graph/api/resources/regionalandlanguagesettings) resource.|
| Change | beta | Added the [regionalAndLanguageSettings](/graph/resources/regionalandlanguagesettings) relationship to the [userSettings](/graph/api/resources/userSettings) resource.|
| Change | beta | Updated [User](/graph/api/resources/user?view=graph-rest-beta) resource with clarification between [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-beta) and [regionalAndLanguageSettings](/graph/api/resources/regionalandlanguagesettings).|
|Addition | Beta | Added the new **userPurpose** property to [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-beta). See [userPurpose resource type](/graph/api/resources/userPurpose?view=graph-rest-beta) for information on the supported use cases.|
|Addition | Beta | Added new [userPurpose](/graph/api/resources/userPurpose?view=graph-rest-beta) complex type.|

### Devices and apps | Cloud printing

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Addition | beta | Added new [Delegated permissions](/graph/permissions-reference#universal-print-permissions): <br/><ul><li>Printer.Create</li><li>Printer.FullControl.All</li><li>Printer.Read.All</li><li>Printer.ReadWrite.All</li><li>PrinterShare.Read.All</li><li>PrinterShare.ReadWrite.All</li><li>PrintJob.Read</li><li>PrintJob.Read.All</li><li>PrintJob.ReadBasic</li><li>PrintJob.ReadBasic.All</li><li>PrintJob.ReadWrite</li><li>PrintJob.ReadWrite.All</li><li>PrintJob.ReadWriteBasic</li><li>PrintJob.ReadWriteBasic.All</li></ul> |
| Addition | beta | Added new [App only permissions](/graph/permissions-reference#universal-print-permissions): <br/><ul><li>Printer.Read.All</li><li>Printer.ReadWrite.All</li><li>PrintJob.Manage.All</li><li>PrintJob.Read.All</li><li>PrintJob.ReadBasic.All</li><li>PrintJob.ReadWrite.All</li><li>PrintJob.ReadWriteBasic.All</li><li>PrintTaskDefinition.ReadWrite.All</li></ul> |

## May 2020

### Calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition | v1.0 | Places API available in v1. Added the [place](/graph/api/resources/place?view=graph-rest-1.0), [room](/graph/api/resources/room?view=graph-rest-1.0), [roomList](/graph/api/resources/room?view=graph-rest-1.0) resources and their methods to provide rich details for locations in apps. |

### Change notifications

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | beta | Added the [changeNotification](/graph/api/resources/changenotification?view=graph-rest-beta), [changeNotificationCollection](/graph/api/resources/changenotificationcollection?view=graph-rest-beta), and [changeNotificationEncryptedContent](/graph/api/resources/changenotificationencryptedcontent?view=graph-rest-beta) resources for the [change notification](/graph/api/concepts/webhooks) API. |
| Addition | v1.0 | Added support for [subscription](/graph/api/resources/subscription) in [Microsoft Cloud for US Government](deployments.md). |


### Cloud communications | Call records

Added new APIs and resources for subscribing to and retrieving call records from your organization to v1.0. Added a new List Sessions API, additional Wi-Fi band enum values, and an additional service role enum value in beta.

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Addition | v1.0 | Added [Get callRecord](/graph/api/callrecords-callrecord-get?view=graph-rest-1.0) API.|
| Addition | v1.0 | Added new entities:<br /><li>[callRecord](/graph/api/resources/callrecords-callrecord?view=graph-rest-1.0)</li> <li>[session](/graph/api/resources/callrecords-session?view=graph-rest-1.0)</li> <li>[segment](/graph/api/resources/callrecords-segment?view=graph-rest-1.0)</li>|
| Addition | v1.0 | Added new complex types:<br /><li>[endpoint](/graph/api/resources/callrecords-endpoint?view=graph-rest-1.0)</li> <li>[participantEndpoint](/graph/api/resources/callrecords-participantendpoint?view=graph-rest-1.0)</li> <li>[serviceEndpoint](/graph/api/resources/callrecords-serviceendpoint?view=graph-rest-1.0)</li> <li>[userAgent](/graph/api/resources/callrecords-useragent?view=graph-rest-1.0)</li> <li>[serviceUserAgent](/graph/api/resources/callrecords-serviceuseragent?view=graph-rest-1.0)</li> <li>[clientUserAgent](/graph/api/resources/callrecords-clientuseragent?view=graph-rest-1.0)</li> <li>[userfeedback](/graph/api/resources/callrecords-userfeedback?view=graph-rest-1.0)</li> <li>[feedbackTokenSet](/graph/api/resources/callrecords-feedbacktokenset?view=graph-rest-1.0)</li> <li>[media](/graph/api/resources/callrecords-media?view=graph-rest-1.0)</li> <li>[mediaStream](/graph/api/resources/callrecords-mediastream?view=graph-rest-1.0)</li> <li>[networkInfo](/graph/api/resources/callrecords-networkinfo?view=graph-rest-1.0)</li> <li>[deviceInfo](/graph/api/resources/callrecords-deviceinfo?view=graph-rest-1.0)</li> <li>[failureInfo](/graph/api/resources/callrecords-failureinfo?view=graph-rest-1.0)</li> |
| Addition | v1.0 | Added support for [webhook](webhooks.md) subscriptions to call records.|
| Change | v1.0 | Added `frequency60GHz` and `unknownFutureValue` to the **microsoft.graph.callRecords.wifiBand** enum.|
| Change | v1.0 | Added `voicemail` to the **microsoft.graph.callRecords.serviceRole** enum.|
| Addition | v1.0 | Added the [List sessions](/graph/api/callrecords-session-list?view=graph-rest-beta) API. |

### Devices and apps | Cloud printing

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Change | beta | Changed the type of the **shares** navigation property to **printerShare collection** on the [printer](/graph/api/resources/printer?view=graph-rest-beta) entity. |
| Change | beta | Deprecated the **name** property on the [printerShare](/graph/api/resources/printerShare?view=graph-rest-beta) entity. |
| Change | beta | Deprecated the **name** and **acceptingJobs** properties on the [printer](/graph/api/resources/printer?view=graph-rest-beta) entity. |
| Change | beta | Deprecated the **printerShares** navigation property on the [print](/graph/api/resources/print?view=graph-rest-beta) entity.<br/> Soon, URL paths such as "/print/printerShares/\*" will stop working. Use "/print/shares/\*" instead. |
| Change | beta | Deprecated the **registeredBy** property on the [printer](/graph/api/resources/printerShare?view=graph-rest-beta) entity. |
| Addition | beta | Added the **shared** navigation property on the [print](/graph/api/resources/print?view=graph-rest-beta) entity. |
| Addition | beta | Added **displayName** and **isAcceptingJobs** properties to the [printer](/graph/api/resources/printer?view=graph-rest-beta) entity. |
| Addition | beta | Added properties to the [printerShare](/graph/api/resources/printerShare?view=graph-rest-beta) entity: <br/> <ul><li>**manufacturer**</li><li>**model**</li><li>**isAcceptingJobs**</li><li>**defaults**</li><li>**capabilities**</li><li>**location**</li><li>**status**</li><li>**jobs**</li></ul> |

### Devices and apps | Corporate management

| **Change type** | **Version**   | **Description** |
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[featureFlightedConfiguration](/graph/api/resources/intune-deviceconfig-featureflightedconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceHealthScriptBooleanParameter](/graph/api/resources/intune-devices-devicehealthscriptbooleanparameter?view=graph-rest-beta)<br/>[deviceHealthScriptDailySchedule](/graph/api/resources/intune-devices-devicehealthscriptdailyschedule?view=graph-rest-beta)<br/>[deviceHealthScriptHourlySchedule](/graph/api/resources/intune-devices-devicehealthscripthourlyschedule?view=graph-rest-beta)<br/>[deviceHealthScriptIntegerParameter](/graph/api/resources/intune-devices-devicehealthscriptintegerparameter?view=graph-rest-beta)<br/>[deviceHealthScriptParameter](/graph/api/resources/intune-devices-devicehealthscriptparameter?view=graph-rest-beta)<br/>[deviceHealthScriptRunOnceSchedule](/graph/api/resources/intune-devices-devicehealthscriptrunonceschedule?view=graph-rest-beta)<br/>[deviceHealthScriptRunSchedule](/graph/api/resources/intune-devices-devicehealthscriptrunschedule?view=graph-rest-beta)<br/>[deviceHealthScriptStringParameter](/graph/api/resources/intune-devices-devicehealthscriptstringparameter?view=graph-rest-beta)<br/>[deviceHealthScriptTimeSchedule](/graph/api/resources/intune-devices-devicehealthscripttimeschedule?view=graph-rest-beta)<br/>[macOSAppleEventReceiver](/graph/api/resources/intune-deviceconfig-macosappleeventreceiver?view=graph-rest-beta)<br/>[macOSPrivacyAccessControlItem](/graph/api/resources/intune-deviceconfig-macosprivacyaccesscontrolitem?view=graph-rest-beta)<br/>[macOSSystemExtension](/graph/api/resources/intune-deviceconfig-macossystemextension?view=graph-rest-beta)<br/>[macOSSystemExtensionTypeMapping](/graph/api/resources/intune-deviceconfig-macossystemextensiontypemapping?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidDeviceOwnerEnrollmentProfileType](/graph/api/resources/intune-deviceconfig-androiddeviceownerenrollmentprofiletype?view=graph-rest-beta)<br/>[deviceManagementTemplateSubtype](/graph/api/resources/intune-deviceintent-devicemanagementtemplatesubtype?view=graph-rest-beta)<br/>[joinType](/graph/api/resources/intune-devices-jointype?view=graph-rest-beta)<br/>[macOSProcessIdentifierType](/graph/api/resources/intune-deviceconfig-macosprocessidentifiertype?view=graph-rest-beta)<br/>[macOSSystemExtensionType](/graph/api/resources/intune-deviceconfig-macossystemextensiontype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [validateXml](/graph/api/intune-apps-mobileapp-validatexml?view=graph-rest-beta) action on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta) collection |
|Addition|beta|Added the [createCopy](/graph/api/intune-deviceintent-devicemanagementintent-createcopy?view=graph-rest-beta) action on [deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**comanagementEligibleDeviceEntity**<br/>**comanagementEligibleSummaryEntity**<br/>|
|Deletion|beta|Removed the following complex types:<br/>**dailySchedule**<br/>**hourlySchedule**<br/>**runSchedule**<br/>|
|Deletion|beta|Removed the following enum types:<br/>**coManagementEligibleType**<br/>|
|Addition|beta|Added the **microsoftLauncherConfigurationEnabled** and **enrollmentProfile** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [deviceEnrollmentConfiguration](/graph/api/resources/intune-shared-deviceenrollmentconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **detectionScriptParameters** and **remediationScriptParameters** properties to the [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta) entity|
|Change|beta|Changed the type of the following properties on the [deviceHealthScriptAssignment](/graph/api/resources/intune-devices-devicehealthscriptassignment?view=graph-rest-beta) entity:<br/>**runSchedule** from [runSchedule](/graph/api/resources/runSchedule.md?view=graph-rest-beta) to [deviceHealthScriptRunSchedule](/graph/api/resources/intune-devices-devicehealthscriptrunschedule?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **templateSubtype** property to the [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) entity|
|Addition|beta|Added the **systemExtensionsBlockOverride**, **systemExtensionsAllowedTeamIdentifiers**, **systemExtensionsAllowed** and **systemExtensionsAllowedTypes** properties to the [macOSExtensionsConfiguration](/graph/api/resources/intune-deviceconfig-macosextensionsconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **privacyAccessControls** property to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **joinType** and **skuFamily** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **rootCertificateForClientValidation** navigation property to the [windowsWifiEnterpriseEAPConfiguration](/graph/api/resources/intune-deviceconfig-windowswifienterpriseeapconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **operatingSystemProductType** property to the [hardwareInformation](/graph/api/resources/intune-devices-hardwareinformation?view=graph-rest-beta) complex type|
|Addition|beta|Added the **roleScopeTagIds** property to the [retireScheduledManagedDevice](/graph/api/resources/intune-deviceconfig-retirescheduledmanageddevice?view=graph-rest-beta) complex type|
|Addition|beta|Added the **notConfigured** member to the [configurationUsage](/graph/api/resources/intune-deviceconfig-configurationusage?view=graph-rest-beta) enum type|
|Addition|beta|Added the **androidEnterpriseDedicatedDevice**, **androidEnterpriseFullyManaged** and **androidEnterpriseCorporateWorkProfile** members to the [deviceEnrollmentType](/graph/api/resources/intune-shared-deviceenrollmenttype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **syncDevice** member to the [managedDeviceRemoteAction](/graph/api/resources/intune-devices-manageddeviceremoteaction?view=graph-rest-beta) enum type|
|Addition|v1.0|Added new enum types:<br/>[managedBrowserType](/graph/api/resources/intune-mam-managedbrowsertype?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the **customBrowserPackageId** and **customBrowserDisplayName** properties to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **customBrowserProtocol** property to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **managedBrowser** property to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-1.0) entity|

### Groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added the [evaluateDynamicMembership](/graph/api/group-evaluatedynamicmembership?view=graph-rest-beta) action on [group](/graph/api/resources/group?view=graph-rest-beta). Also added these supporting resource types:<ul><li>[evaluateDynamicMembershipResult](/graph/api/resources/evaluatedynamicmembershipresult?view=graph-rest-beta)</li><li>[expressionEvaluationDetails](/graph/api/resources/expressionevaluationdetails?view=graph-rest-beta)</li><li>[propertyToEvaluate](/graph/api/resources/propertytoevaluate?view=graph-rest-beta)</li></ul>|
| Addition | beta | Added the **resourceBehaviorOptions** and **resourceProvisioningOptions** properties to the [group](/graph/api/resources/group?view=graph-rest-beta) entity.|
| Addition | v1.0 | Added the **onPremisesDomainName**, **onPremisesNetBiosName** and **onPremisesSamAccountName** properties to the [group](/graph/api/resources/group?view=graph-rest-1.0) entity.|
| Addition | v1.0 | Added support for [subscription](/graph/api/resources/subscription) to the **group** resource in [Microsoft Cloud China operated by 21Vianet](deployments.md). |

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the **riskEventType** property to the [riskDetection](/graph/api/resources/riskdetection?view=graph-rest-beta) and [riskyUserHistoryItem](/graph/api/resources/riskyuserhistoryitem?view=graph-rest-beta) resources. Use this property instead of the **riskType** property to retrieve the type of Identity Protection risk detections.
| Change | beta | Updated the **clientAppTypes** property in [conditionalaccessconditionset](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta) to replace `modern` with `mobileAppsAndDesktopClients`. Removed `easUnsupported` and added `exchangeActiveSync`, which includes Exchange ActiveSync supported and unsupported platforms. |
| Addition | v1.0 | Added Facebook to the [identityProvider](/graph/api/resources/identityprovider?view=graph-rest-1.0) resource as an additional supported scenario. |
| Addition | beta | Added Application.Read.All and Application.ReadWrite.All permissions to [application-list](/graph/api/application-list?view=graph-rest-beta)<br>Added support for `$count`, `$search`, and `$filter` query parameters to: <br><ul><li>[List applications](/graph/api/application-list?view=graph-rest-beta)</li><li>[List device groups](/graph/api/device-list-memberof?view=graph-rest-beta)</li><li>[List device transitive groups](/graph/api/device-list-transitivememberof?view=graph-rest-beta)</li><li>[List devices](/graph/api/device-list?view=graph-rest-beta)</li><li>[List group memberOf](/graph/api/group-list-memberof?view=graph-rest-beta)</li><li>[List group members](/graph/api/group-list-members?view=graph-rest-beta)</li><li>[List group transitive memberOf](/graph/api/group-list-transitivememberof?view=graph-rest-beta)</li><li>[List group transitive members](/graph/api/group-list-transitivemembers?view=graph-rest-beta)</li><li>[List groups](/graph/api/group-list?view=graph-rest-beta)</li><li>[List orgContacts](/graph/api/orgcontact-list?view=graph-rest-beta)</li><li>[List servicePrincipal memberOf](/graph/api/serviceprincipal-list-memberof?view=graph-rest-beta)</li><li>[List servicePrincipal transitive memberOf](/graph/api/serviceprincipal-list-transitivememberof?view=graph-rest-beta)</li><li>[List servicePrincipals](/graph/api/serviceprincipal-list?view=graph-rest-beta)</li><li>[List user memberOf](/graph/api/user-list-memberof?view=graph-rest-beta)</li><li>[List user transitive memberOf](/graph/api/user-list-transitivememberof?view=graph-rest-beta)</li><li>[List users](/graph/api/user-list?view=graph-rest-beta)</li></ul><br>Added examples for using OData cast to: <ul><li>[List group memberOf](/graph/api/group-list-memberof?view=graph-rest-beta)</li><li>[List group members](/graph/api/group-list-members?view=graph-rest-beta)</li><li>[List group transitive memberOf](/graph/api/group-list-transitivememberof?view=graph-rest-beta)</li><li>[List servicePrincipal memberOf](/graph/api/serviceprincipal-list-memberof?view=graph-rest-beta)</li><li>[List servicePrincipal transitive memberOf](/graph/api/serviceprincipal-list-transitivememberof?view=graph-rest-beta)</li><li>[List user memberOf](/graph/api/user-list-memberof?view=graph-rest-beta)</li><li>[List user transitive memberOf](/graph/api/user-list-transitivememberof?view=graph-rest-beta)</li></ul> |
| Addition | v1.0 | Added new entity type: [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0).|
| Addition | v1.0 | Added new entity type: [appRoleAssignment](/graph/api/resources/approleassignment?view=graph-rest-1.0).|
| Addition | beta, v1.0 | Added app-only and delegated permissions [AppRoleAssignment.ReadWrite.All](permissions-reference.md#application-resource-permissions). |
| Addition | beta | Added delegated permission [EntitlementManagement.Read.All](permissions-reference.md#entitlement-management-permissions). |
| Addition | beta | Added the [authorizationPolicy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta) resource type which controls authorization settings in Azure AD. |

### Teamwork

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added support for sending [channel messages](/graph/api/resources/chatmessage?view=graph-rest-1.0) and channel message replies.|
| Addition | beta | Added the **azureADAppId** property to [teamsAppDefinition](/graph/api/resources/teamsAppDefinition?view=graph-rest-beta).|
| Addition | beta | Added permissions for [resource-specific consent](/graph/permissions-reference#teams-resource-specific-consent-permissions).|

### Teamwork | Shifts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Introduced the Shifts APIs, including [shift](/graph/api/resources/shift?view=graph-rest-1.0), [workforceintegration](/graph/api/resources/workforceintegration?view=graph-rest-1.0), and associated methods.|

### Users

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added the **externalUserState** and **externalUserStateChangeDateTime** properties to the [user](/graph/api/resources/user?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added support for [subscription](/graph/api/resources/subscription) to the **user** resource in [Microsoft Cloud China operated by 21Vianet](deployments.md). |


## April 2020

### Calendar
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition | v1.0 | Added new entity [calendarPermission](/graph/api/resources/calendarpermission?view=graph-rest-1.0). |
|Addition | v1.0 | Added [get](/graph/api/calendarpermission-get?view=graph-rest-1.0), [update](/graph/api/calendarpermission-update?view=graph-rest-1.0) and [delete](/graph/api/calendarpermission-delete?view=graph-rest-1.0) APIs to manage [calendarPermission](/graph/api/resources/calendarpermission?view=graph-rest-1.0) resources on [calendar](/graph/api/resources/calendar?view=graph-rest-1.0). |
|Addition | v1.0 | Added new complex type [onlineMeetingInfo](/graph/api/resources/onlinemeetinginfo?view=graph-rest-1.0). |
| Addition | v1.0 | Added the **isOnlineMeeting**, **onlineMeetingProvider** and **onlineMeeting** properties to the [event](/graph/api/resources/event?view=graph-rest-1.0) entity. **isOnlineMeeting** and **onlineMeetingProvider** are optional parameters to the [create](/graph/api/user-post-events?view=graph-rest-1.0) and [update](/graph/api/event-update?view=graph-rest-1.0) methods of **event**. |
| Addition | v1.0 | Added the **defaultOnlineMeetingProviders** and **allowedOnlineMeetingProviders** properties to the [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) entity. |
| Addition | v1.0 | Added the **isTallyingResponses** property to the [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) entity. |
| Addition | v1.0 | Added the **isRemovable** property to the [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) entity. |
| Addition | v1.0 | Added the **delegateMeetingMessageDeliveryOptions** property to the [mailboxSettings](/graph/api/resources/mailboxSettings?view=graph-rest-1.0) entity. |
| Addition | Beta and v1.0          | Support for [file attachments up to 150MB](outlook-large-attachments.md) for an [event](/graph/api/resources/event?view=graph-rest-1.0) instance. |
| Addition | beta | Added pagination support for the [places API](/graph/api/resources/place?view=graph-rest-beta).|

### Devices and apps | Cloud printing

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Addition | beta | Added **allowedGroups** and **allowedUsers** properties to the [printerShare](/graph/api/resources/printershare?view=graph-rest-beta) entity.|
| Addition | beta | Added the [printIdentity](/graph/api/resources/printidentity?view=graph-rest-beta) and [printUserIdentity](/graph/api/resources/printuseridentity?view=graph-rest-beta) resource types. |

### Devices and apps | Corporate management

| **Change type** | **Version** | **Description** |
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerDerivedCredentialAuthenticationConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownerderivedcredentialauthenticationconfiguration?view=graph-rest-beta)<br/>[appleExpeditedCheckinConfigurationBase](/graph/api/resources/intune-deviceconfig-appleexpeditedcheckinconfigurationbase?view=graph-rest-beta)<br/>[groupPolicyOperation](/graph/api/resources/intune-grouppolicy-grouppolicyoperation?view=graph-rest-beta)<br/>[groupPolicyUploadedDefinitionFile](/graph/api/resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile?view=graph-rest-beta)<br/>[iosExpeditedCheckinConfiguration](/graph/api/resources/intune-deviceconfig-iosexpeditedcheckinconfiguration?view=graph-rest-beta)<br/>[userExperienceAnalyticsScoreHistory](/graph/api/resources/intune-devices-userexperienceanalyticsscorehistory?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[androidManagedStoreAppAssignmentSettings](/graph/api/resources/intune-apps-androidmanagedstoreappassignmentsettings?view=graph-rest-beta)<br/>[androidManagedStoreAppTrack](/graph/api/resources/intune-apps-androidmanagedstoreapptrack?view=graph-rest-beta)<br/>[appleAppListItem](/graph/api/resources/intune-deviceconfig-appleapplistitem?view=graph-rest-beta)<br/>[deviceHealthScriptRemediationHistory](/graph/api/resources/intune-devices-devicehealthscriptremediationhistory?view=graph-rest-beta)<br/>[deviceHealthScriptRemediationHistoryData](/graph/api/resources/intune-devices-devicehealthscriptremediationhistorydata?view=graph-rest-beta)<br/>[deviceManagementSettingAbstractImplementationConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingabstractimplementationconstraint?view=graph-rest-beta)<br/>[groupPolicyUploadedLanguageFile](/graph/api/resources/intune-grouppolicy-grouppolicyuploadedlanguagefile?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidProfileApplicability](/graph/api/resources/intune-apps-androidprofileapplicability?view=graph-rest-beta)<br/>[groupPolicyOperationStatus](/graph/api/resources/intune-grouppolicy-grouppolicyoperationstatus?view=graph-rest-beta)<br/>[groupPolicyOperationType](/graph/api/resources/intune-grouppolicy-grouppolicyoperationtype?view=graph-rest-beta)<br/>[groupPolicyUploadedDefinitionFileStatus](/graph/api/resources/intune-grouppolicy-grouppolicyuploadeddefinitionfilestatus?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [addLanguageFiles](/graph/api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-addlanguagefiles?view=graph-rest-beta) action on [groupPolicyUploadedDefinitionFile](/graph/api/resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile?view=graph-rest-beta) |
|Addition|beta|Added the [removeLanguageFiles](/graph/api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-removelanguagefiles?view=graph-rest-beta) action on [groupPolicyUploadedDefinitionFile](/graph/api/resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile?view=graph-rest-beta) |
|Addition|beta|Added the [updateLanguageFiles](/graph/api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-updatelanguagefiles?view=graph-rest-beta) action on [groupPolicyUploadedDefinitionFile](/graph/api/resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile?view=graph-rest-beta) |
|Addition|beta|Added the [uploadNewVersion](/graph/api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-uploadnewversion?view=graph-rest-beta) action on [groupPolicyUploadedDefinitionFile](/graph/api/resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile?view=graph-rest-beta) |
|Addition|beta|Added the [remove](/graph/api/intune-grouppolicy-grouppolicyuploadeddefinitionfile-remove?view=graph-rest-beta) action on [groupPolicyUploadedDefinitionFile](/graph/api/resources/intune-grouppolicy-grouppolicyuploadeddefinitionfile?view=graph-rest-beta) |
|Addition|beta|Added the [getPolicyNonComplianceSummaryReport](/graph/api/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [getRemediationHistory](/graph/api/intune-devices-devicehealthscript-getremediationhistory?view=graph-rest-beta) function on [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**userExperienceAnalyticsStartupScoreHistory**<br/>|
|Addition|beta|Added the **profileApplicability** property to the [androidForWorkMobileAppConfiguration](/graph/api/resources/intune-apps-androidforworkmobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **appTracks** property to the [androidManagedStoreApp](/graph/api/resources/intune-apps-androidmanagedstoreapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **profileApplicability** property to the [androidManagedStoreAppConfiguration](/graph/api/resources/intune-apps-androidmanagedstoreappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **groupPolicyObjectId**, **ouDistinguishedName**, **createdDateTime** and **lastModifiedDateTime** properties to the [groupPolicyObjectFile](/graph/api/resources/intune-gpanalyticsservice-grouppolicyobjectfile?view=graph-rest-beta) entity|
|Addition|beta|Added the **specificationVersion** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **derivedCredentialSettings** navigation property to the [androidDeviceOwnerEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownerenterprisewificonfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **derivedCredentialSettings** navigation property to the [androidDeviceOwnerVpnConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownervpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **userExperienceAnalyticsScoreHistory** and **groupPolicyUploadedDefinitionFiles** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **userExperienceAnalyticsStartupScoreHistory** navigation property from the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **settingInstanceId** property to the [deviceCompliancePolicySettingState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicysettingstate?view=graph-rest-beta) complex type|
|Addition|beta|Added the **settingInstanceId** property to the [deviceConfigurationSettingState](/graph/api/resources/intune-deviceconfig-deviceconfigurationsettingstate?view=graph-rest-beta) complex type|
|Addition|beta|Added the **enableSharedDeviceMode** and **configurations** properties to the [iosAzureAdSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-iosazureadsinglesignonextension?view=graph-rest-beta) complex type|
|Addition|beta|Added the **settingInstanceId** property to the [managedDeviceMobileAppConfigurationSettingState](/graph/api/resources/intune-deviceconfig-manageddevicemobileappconfigurationsettingstate?view=graph-rest-beta) complex type|
|Addition|beta|Added the **azureAdJoinUsingAzureVmExtension** member to the [deviceEnrollmentType](/graph/api/resources/intune-shared-deviceenrollmenttype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **windows10XProfile** member to the [policyPlatformType](/graph/api/resources/intune-shared-policyplatformtype?view=graph-rest-beta) enum type|

### Files

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the [check in](/graph/api/driveitem-checkin?view=graph-rest-1.0) and [check out](/graph/api/driveitem-checkin?view=graph-rest-1.0) actions on the [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) resource. |
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0        | Added the **expirationDateTime**, **password**, and **message** properties on the [createLink](/graph/api/driveitem-createlink?view=graph-rest-1.0) action on a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) resource. |
| Addition        | v1.0        | Added the **preventsDownload** property on the [sharingLink](/graph/api/resources/sharinglink?view=graph-rest-1.0) resource. |
| Addition        | v1.0        | Added the **permission** property on the [sharedDriveItem](/graph/api/resources/shareddriveitem?view=graph-rest-1.0) resource. |
| Addition        | v1.0        | Added the **expirationDateTime**, **hasPassword**, and **grantedToIdentities** properties on the [permission](/graph/api/resources/permission?view=graph-rest-1.0) resource. |
| Addition        | v1.0        | Added the **expirationDateTime**, and **password** properties on the [invite](/graph/api/driveitem-invite?view=graph-rest-1.0) action on a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) resource. |

### Identity and access

| **Change type** | **Version**   | **Description** |
|:---|:---|:---|
| Addition | beta | Added [unifiedRoleAssignmentMultiple](/graph/api/resources/unifiedroleassignmentmultiple?view=graph-rest-beta), [rbacApplicationMultiple](/graph/api/resources/rbacapplicationmultiple?view=graph-rest-beta), and [appScope](/graph/api/resources/appscope?view=graph-rest-beta) and the following actions:<br><li>[List unifiedRoleAssignmentMultiple](/graph/api/unifiedroleassignmentmultiple-list?view=graph-rest-beta)</li><li>[Get unifiedRoleAssignmentMultiple](/graph/api/unifiedroleassignmentmultiple-get?view=graph-rest-beta)</li><li>[Create unifiedRoleAssignmentMultiple](/graph/api/resources/unifiedroleassignmentmultiple-post?view=graph-rest-beta)</li><li>[Update unifiedRoleAssignmentMultiple](/graph/api/unifiedroleassignmentmultiple-update?view=graph-rest-beta)</li><li>[Delete unifiedRoleAssignmentMultiple](/graph/api/unifiedroleassignmentmultiple-delete?view=graph-rest-beta)</li>. |
| Addition | v1.0 | Added support for [delta queries for application](/graph/api/application-delta?view=graph-rest-1.0).|
| Addition | beta | Added support for [delta queries for administrativeUnits](/graph/api/administrativeunit-delta?view=graph-rest-beta).|
| Addition | beta | Added support for [delta queries for oAuth2PermissionGrant](/graph/api/oauth2permissiongrant-delta?view=graph-rest-beta).|
| Addition | v1.0 | Typed policy resources are grouped under the [policies](/graph/api/resources/policy-overview?view=graph-rest-1.0) URL segment. This update adds five typed policy resources: <br> <li>[activityBasedTimeoutPolicies](/graph/api/resources/activityBasedTimeoutPolicy?view=graph-rest-1.0)</li> <li>[claimsMappingPolicies](/graph/api/resources/claimsMappingPolicy?view=graph-rest-1.0) </li> <li>[homeRealmDiscoveryPolicies](/graph/api/resources/homeRealmDiscoveryPolicy?view=graph-rest-1.0) </li> <li>[tokenLifetimePolicies](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-1.0) and </li> <li>[tokenIssuancePolicies](/graph/api/resources/tokenissuancepolicy?view=graph-rest-1.0)</li>|
| Addition | v1.0 | Added [activityBasedTimeoutPolicy](/graph/api/resources/activityBasedTimeoutPolicy?view=graph-rest-1.0) resource type, which controls automatic sign-out for web sessions after a period of inactivity, for applications that support activity-based timeout functionality.|
| Addition | v1.0 |Added the [claimsMappingPolicy](/graph/api/resources/claimsMappingPolicy?view=graph-rest-1.0) resource type, which controls the claims mapping for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.|
| Addition | v1.0 | Added the [homeRealmDiscoveryPolicy](/graph/api/resources/homeRealmDiscoveryPolicy?view=graph-rest-1.0) resource type, which controls Azure Active Directory authentication behavior for federated users, in particular for auto-acceleration and user authentication restrictions in federated domains. |
| Addition | v1.0 | Added the [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-1.0) resource type, which controls the lifetime duration of access tokens used to access protected resources.|
| Addition | v1.0 | Added the [tokenIssuancePolicy](/graph/api/resources/tokenissuancepolicy?view=graph-rest-1.0) resource type, which controls the characteristics of SAML tokens issued by Azure AD. This allows you to set the signing algorithm, signing options, or SAML token version to be used to issue the SAML token.|
| Addition | beta | Added the [authenticationMethod](/graph/api/resources/authenticationmethod?view=graph-rest-beta), [passwordAuthenticationMethod](/graph/api/resources/passwordauthenticationmethod?view=graph-rest-beta), and [phoneAuthenticationMethod](/graph/api/resources/phoneauthenticationmethod?view=graph-rest-beta) resources and associated methods.
| Addition | beta | Added the **createdByAppId** property to the [group](/graph/api/resources/group?view=graph-rest-beta) entity.|

### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | V1.0          | [Adding file attachments up to 150MB](outlook-large-attachments.md) to a [message](/graph/api/resources/message?view=graph-rest-1.0) instance. |
| Addition        | V1.0          | The [attachmentItem](/graph/api/resources/attachmentitem?view=graph-rest-1.0) complex type, [createUploadSession](/graph/api/attachment-createuploadsession?view=graph-rest-1.0) action for the [attachment](/graph/api/resources/attachment?view=graph-rest-1.0) entity, and the **attachmentType** enumeration. |
| Changed         | V1.0          | Extended the existing [uploadSession](/graph/api/resources/uploadsession?view=graph-rest-1.0) entity that has been used by [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) to apply to **attachment** as well. |

### Reports | Identity and access reports

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added a new resource type [relyingPartyDetailedSummary](/graph/api/resources/relyingpartydetailedsummary?view=graph-rest-beta). This resource type supports [listing](/graph/api/relyingpartydetailedsummary-list?view=graph-rest-beta) the relying parties configured in Active Directory Federation Services.|

### Reports | Microsoft 365 usage reports

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the **Meeting Created** and **Meeting Interacted** properties to the [getEmailActivityCounts](/graph/api/reportroot-getemailactivitycounts?view=graph-rest-beta) API CSV entity. |
| Addition | Beta | Added the **Meeting Created** and **Meeting Interacted** properties to the [getEmailActivityUserCounts](/graph/api/reportroot-getemailactivityusercounts?view=graph-rest-beta) API CSV entity. |
| Addition | Beta | Added the **Meeting Created** and **Meeting Interacted** properties to the [getEmailActivityuserDetail](/graph/api/reportroot-getemailactivityuserdetail?view=graph-rest-beta) API CSV entity. |

### Sites and lists

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | beta        | Added the **followedSites** navigation property to the [user](/graph/api/resources/user?view=graph-rest-beta) entity to [list the sites followed by the signed-in user](/graph/api/sites-list-followed?view=graph-rest-beta). |
| Addition        | v1.0        | Added the **followedSites** navigation property to the [user](/graph/api/resources/user?view=graph-rest-1.0) entity to [list the sites followed by the signed-in user](/graph/api/sites-list-followed?view=graph-rest-1.0). |
| Addition        | v1.0        | Added the **dataLocatonCode** property on the [siteCollection](/graph/api/resources/sitecollection?view=graph-rest-1.0) resource. |
| Addition        | v1.0        | Added the **tenantId** property on the [sharepointIds](/graph/api/resources/sharepointids?view=graph-rest-1.0) resource. |


## March 2020

### Calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the **calendarGroupId** property to the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) entity. |
| Addition | Beta | Added the **isDraft** property to the [event](/graph/api/resources/event?view=graph-rest-beta) entity. |

### Cloud communications | Call

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|v1.0|Added new property **initiator** to the [recordingInfo](/graph/api/resources/recordinginfo?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new complex types:<br/>[recordingInfo](/graph/api/resources/recordinginfo?view=graph-rest-1.0)<br/>[callRoute](/graph/api/resources/callRoute?view=graph-rest-1.0)<br/>[incomingContext](/graph/api/resources/incomingcontext?view=graph-rest-1.0)
|Addition|v1.0|Added new property **recordingInfo** to the [participant](/graph/api/resources/participant?view=graph-rest-1.0) entity.
|Addition|v1.0|Added new property **recordingStatus** to the [recordingInfo](/graph/api/resources/recordinginfo?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new action [updateRecordingStatus](/graph/api/call-updaterecordingstatus?view=graph-rest-1.0) to the [call](/graph/api/resources/call?view=graph-rest-1.0) entity.
|Addition|v1.0|Added new property **endpointType** to the [participantInfo](/graph/api/resources/participantinfo?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new property **countryCode** to the [participantInfo](/graph/api/resources/participantinfo?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new property **incomingContext** to the [call](/graph/api/resources/call?view=graph-rest-1.0) entity.
|Addition|v1.0|Added new property **sourceParticipantId** to the [incomingContext](/graph/api/resources/incomingcontext?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new property **observedParticipantId** to the [incomingContext](/graph/api/resources/incomingcontext?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new property **onBehalfOf** to the [incomingContext](/graph/api/resources/incomingcontext?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new property **transferor** to the [incomingContext](/graph/api/resources/incomingcontext?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new property **CallRoutes** to the [call](/graph/api/resources/call?view=graph-rest-1.0) entity.
|Addition|v1.0|Added new property **final** to the [callRoute](/graph/api/resources/callroute?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new property **original** to the [callRoute](/graph/api/resources/callroute?view=graph-rest-1.0) complex type.
|Addition|v1.0|Added new property **routingType** to the [callRoute](/graph/api/resources/callroute?view=graph-rest-1.0) complex type.
|Addition|Beta and v1.0|Added the [logTeleconferenceDeviceQuality](/graph/api/call-logteleconferencedevicequality) function on the [call](/graph/api/resources/call) collection.|
|Addition|Beta and v1.0|Added the **callChainId** property to the [call](/graph/api/resources/call) entity.|
|Addition|Beta and v1.0|Added new complex types:<br/>[teleconferenceDeviceQuality](/graph/api/resources/teleconferencedevicequality)<br/>[teleconferenceDeviceMediaQuality](/graph/api/resources/teleconferencedevicemediaquality)<br/>[teleconferenceDeviceAudioQuality](/graph/api/resources/teleconferencedeviceaudioquality)<br/>[teleconferenceDeviceVideoQuality](/graph/api/resources/teleconferencedevicevideoquality)<br/>[teleconferenceDeviceScreenSharingQuality](/graph/api/resources/teleconferencedevicescreensharingquality).|

### Cloud communications | Online meeting

| **Change type** | **Version** | **Description** |
|:---|:---|:---|
| Addition | beta | Added the [onlineMeeting: createOrGet](/graph/api/onlinemeeting-createorget) method.|
| Addition | beta | Added an optional **externalId** property to [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta). |
|Addition|beta|Added an optional `Accept-Language` header for [online meetings](/graph/api/resources/onlinemeeting?view=graph-rest-beta).

### Devices and apps | Corporate management

| **Change type** | **Version** | **Description** |
|:---|:---|:---|
|Addition|beta|Added the **executionFrequency**, **retryCount** and **blockExecutionNotifications** properties to the [deviceShellScript](/graph/api/resources/intune-devices-deviceshellscript?view=graph-rest-beta) entity.|
|Addition|beta|Added new entities:<br/>[deviceManagementAutopilotPolicyStatusDetail](/graph/api/resources/intune-troubleshooting-devicemanagementautopilotpolicystatusdetail?view=graph-rest-beta)<br/>[groupPolicyCategory](/graph/api/resources/intune-grouppolicy-grouppolicycategory?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[configurationManagerActionResult](/graph/api/resources/intune-devices-configurationmanageractionresult?view=graph-rest-beta)<br/>[deviceHealthScriptRemediationSummary](/graph/api/resources/intune-devices-devicehealthscriptremediationsummary?view=graph-rest-beta)<br/>[deviceManagementSettingSddlConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingsddlconstraint?view=graph-rest-beta)<br/>[iosAzureAdSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-iosazureadsinglesignonextension?view=graph-rest-beta)<br/>[macOSAssociatedDomainsKeyValuePair](/graph/api/resources/intune-deviceconfig-macosassociateddomainskeyvaluepair?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[configurationManagerActionDeliveryStatus](/graph/api/resources/intune-devices-configurationmanageractiondeliverystatus?view=graph-rest-beta)<br/>[deviceManagementAutopilotPolicyComplianceStatus](/graph/api/resources/intune-troubleshooting-devicemanagementautopilotpolicycompliancestatus?view=graph-rest-beta)<br/>[deviceManagementAutopilotPolicyType](/graph/api/resources/intune-troubleshooting-devicemanagementautopilotpolicytype?view=graph-rest-beta)<br/>[win32LobAppDeliveryOptimizationPriority](/graph/api/resources/intune-apps-win32lobappdeliveryoptimizationpriority?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [generateApplePushNotificationCertificateSigningRequest](/graph/api/intune-devices-applepushnotificationcertificate-generateapplepushnotificationcertificatesigningrequest?view=graph-rest-beta?view=graph-rest-beta) action on [applePushNotificationCertificate](/graph/api/resources/intune-devices-applepushnotificationcertificate?view=graph-rest-beta) |
|Addition|beta|Added the [generateEncryptionPublicKey](/graph/api/intune-enrollment-deponboardingsetting-generateencryptionpublickey?view=graph-rest-beta?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [getSettingNonComplianceReport](/graph/api/intune-reporting-devicemanagementreports-getsettingnoncompliancereport?view=graph-rest-beta?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [getRemediationSummary](/graph/api/intune-devices-devicehealthscript-getremediationsummary?view=graph-rest-beta) function on [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta) collection |
|Deletion|beta|Removed the following complex types:<br/>**groupPolicyObjectFile**<br/>|
|Deletion|beta|Removed the [createMigrationReport](/graph/api/intune-gpanalyticsservice-grouppolicymigrationreport-createmigrationreport?view=graph-rest-beta) action on [groupPolicyMigrationReport](/graph/api/resources/intune-gpanalyticsservice-grouppolicymigrationreport?view=graph-rest-beta) collection |
|Deletion|beta|Removed the **groupPolicyObjectFiles** property from the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceId** property to the [deviceManagementAutopilotEvent](/graph/api/resources/intune-troubleshooting-devicemanagementautopilotevent?view=graph-rest-beta) entity|
|Addition|beta|Added the **groupPolicyCategoryId** property to the [groupPolicyDefinition](/graph/api/resources/intune-grouppolicy-grouppolicydefinition?view=graph-rest-beta) entity|
|Addition|beta|Added the **intuneSettingDefinitionId** property to the [groupPolicySettingMapping](/graph/api/resources/intune-gpanalyticsservice-grouppolicysettingmapping?view=graph-rest-beta) entity|
|Addition|beta|Added the **fileVaultHidePersonalRecoveryKey**, **advancedThreatProtectionRealTime**, **advancedThreatProtectionCloudDelivered**, **advancedThreatProtectionAutomaticSampleSubmission**, **advancedThreatProtectionDiagnosticDataCollection**, **advancedThreatProtectionExcludedFolders**, **advancedThreatProtectionExcludedFiles**, **advancedThreatProtectionExcludedExtensions** and **advancedThreatProtectionExcludedProcesses** properties to the [macOSEndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-macosendpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **directorySizeQuota** property to the [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderAllowScanArchiveFiles**, **defenderAllowBehaviorMonitoring**, **defenderAllowCloudProtection**, **defenderAllowScanRemovableDrivesDuringFullScan**, **defenderAllowScanDownloads**, **defenderAllowIntrusionPreventionSystem**, **defenderAllowOnAccessProtection**, **defenderAllowRealTimeMonitoring**, **defenderAllowScanNetworkFiles**, **defenderAllowScanScriptsLoadedInInternetExplorer**, **defenderAllowEndUserAccess** and **defenderSignatureUpdateIntervalInHours** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity:<br/>**defenderBlockEndUserAccess** from required to optional<br/>**defenderCheckForSignaturesBeforeRunningScan** from required to optional<br/>**defenderCloudBlockLevel** from required to optional<br/>**defenderDisableBehaviorMonitoring** from required to optional<br/>**defenderDisableCatchupFullScan** from required to optional<br/>**defenderDisableCatchupQuickScan** from required to optional<br/>**defenderDisableCloudProtection** from required to optional<br/>**defenderDisableIntrusionPreventionSystem** from required to optional<br/>**defenderDisableOnAccessProtection** from required to optional<br/>**defenderDisableRealTimeMonitoring** from required to optional<br/>**defenderDisableScanArchiveFiles** from required to optional<br/>**defenderDisableScanDownloads** from required to optional<br/>**defenderDisableScanNetworkFiles** from required to optional<br/>**defenderDisableScanRemovableDrivesDuringFullScan** from required to optional<br/>**defenderDisableScanScriptsLoadedInInternetExplorer** from required to optional<br/>**defenderEnableLowCpuPriority** from required to optional<br/>**defenderEnableScanIncomingMail** from required to optional<br/>**defenderEnableScanMappedNetworkDrivesDuringFullScan** from required to optional<br/>**defenderPotentiallyUnwantedAppAction** from required to optional<br/>**defenderScanDirection** from required to optional<br/>**defenderScanType** from required to optional<br/>**defenderScheduledScanDay** from required to optional<br/>**defenderSubmitSamplesConsentType** from required to optional<br/>|
|Addition|beta|Added the **findMyFiles**, **activateAppsWithVoice** and **configureTimeZone** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **groupPolicyCategories** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **policyStatusDetails** navigation property to the [deviceManagementAutopilotEvent](/graph/api/resources/intune-troubleshooting-devicemanagementautopilotevent?view=graph-rest-beta) entity|
|Addition|beta|Added the **category** navigation property to the [groupPolicyDefinition](/graph/api/resources/intune-grouppolicy-grouppolicydefinition?view=graph-rest-beta) entity|
|Addition|beta|Added the **isBlocked** property to the [configurationManagerClientInformation](/graph/api/resources/intune-devices-configurationmanagerclientinformation?view=graph-rest-beta) complex type|
|Addition|beta|Added the **ignoreDevicesForUnsupportedSettingsEnabled** property to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **deliveryOptimizationPriority** property to the [win32LobAppAssignmentSettings](/graph/api/resources/intune-apps-win32lobappassignmentsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **deviceOsHigherThanDesiredOsVersion** member to the [iosUpdatesInstallStatus](/graph/api/resources/intune-deviceconfig-iosupdatesinstallstatus?view=graph-rest-beta) enum type. |

### Files

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | beta and v1.0 | Added **image** and **video** properties on the [remoteItem](/graph/api/resources/remoteitem?view=graph-rest-1.0) resource. These properties allow you to retrieve media type thumbnails when combined with an expand function.  |
| Addition | v1.0 | Added the **grant** action to the [permission](/graph/api/resources/permission?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the **following** navigation property to the [drive](/graph/api/resources/drive?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the [follow](/graph/api/driveitem-follow?view=graph-rest-1.0) action on [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0). |
| Addition        | v1.0        | Added the [unfollow](/graph/api/driveitem-unfollow?view=graph-rest-1.0) action on [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0). |


### Identity and access

| **Change type** | **Version**   | **Description** |
|:---|:---|:---|
| Addition | beta and v1.0 | Added the **authenticationRequirement** property and the **riskEventTypes_v2** property to the [signin](/graph/api/resources/signin?view=graph-rest-1.0) entity. |
| Addition | beta and v1.0 | Added support for [delta queries for orgContact](/graph/api/orgcontact-delta?view=graph-rest-1.0).|
| Addition | v1.0 | Added new user permission [User.ManageIdentities.All](/graph/permissions-reference#user-permissions).|
| Addition | beta | Added the PrivilegedAccess.Read.AzureResources application permission for [Privileged Identity Management - Azure resources](/graph/api/resources/privilegedidentitymanagement-resources?view=graph-rest-beta). |
| Addition | beta | Added the [Auditlogs.Read.All](/graph/permissions-reference#user-permissions) permission for listing the sign-in activity of a user.|
| Addition | beta | Added the [identitySecurityDefaultsEnforcementPolicy API](/graph/api/resources/identitysecuritydefaultsenforcementpolicy?view=graph-rest-beta), which represents Azure Active Directory security defaults policy.|
| Addition | beta | Added support for the `$top` and `$skiptoken` filters to support pagination on the [List provisioningObjectSummary](/api-reference/beta/api/provisioningobjectsummary-list) method. |

### Identity and access | Identity and sign-in

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Change | beta | Updated the conditional access APIs to use the /identity/ segment; for example, /beta/identity/conditionalAccess/policies.|
| Addition | beta | Added the **devices** property to the [conditionalaccessconditionset](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta) entity. |

### Reports | Microsoft 365 usage reports

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Change          | beta and v1.0  | For delegated permissions to allow apps to read Microsoft 365 service usage reports on behalf of a user, added Teams Service Administrator and Teams Communications Administrator as accepted user roles. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](reportroot-authorization.md).|
| Addition        | Beta  | Added **networkDisplayName** property to the [yammerGroupsActivityDetail](/graph/api/resources/yammerGroupsActivityDetail?view=graph-rest-beta) entity.|

### Search

| Change type | Version | Description                                                                                                                                               |
|-------------|---------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Change      | beta    | The [externalFile](/graph/api/resources/externalfile?view=graph-rest-beta) resource has been deprecated.                                                  |
| Change      | beta    | The [externalItem](/graph/api/resources/externalfile?view=graph-rest-beta) resource now supports updating the **content** and **properties** properties.      |
| Change      | beta    | Operations on [externalItem](/graph/api/resources/externalfile?view=graph-rest-beta) resources now return a `Retry-After` header when they are throttled. |

### Sites and lists

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :-------------------------------------- |
| Addition        | v1.0        | Added the [followSite](/graph/api/site-follow?view=graph-rest-1.0) navigation property to the [user](/graph/api/resources/user?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the [unfollowSite](/graph/api/site-unfollow?view=graph-rest-1.0) navigation property to the [user](/graph/api/resources/user?view=graph-rest-1.0) entity. |
| Addition        | v1.0       | Added the **subscriptions** navigation property to the [list](/graph/api/resources/list?view=graph-rest-1.0) entity. |

### Teamwork

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | Beta |Added new property **supportedEntities** to [workforceintegration](/graph/api/resources/workforceintegration?view=graph-rest-beta) entity.|
| Addition | v1.0 | Added new entity [teamwork](/graph/api/resources/teamwork?view=graph-rest-1.0).
| Addition | Beta | Added support for ChannelMessage.Read.All to APIs for reading [chatMessages](/graph/api/resources/chatmessage?view=graph-rest-beta) in channels. |

### Devices and apps | Cloud printing

Added new APIs and resources for managing and printing to printers by using the Universal Print service.

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Addition | beta | Added the [archivedPrintJob](/graph/api/resources/archivedprintjob) entity.|
| Addition | beta | Added the [deviceHealth](/graph/api/resources/devicehealth) complex type.|
| Addition | beta | Added the [integerRange](/graph/api/resources/integerrange) complex type.|
| Addition | beta | Added the [print](/graph/api/resources/print) entity.|
| Addition | beta | Added the [printConnector](/graph/api/resources/printconnector) entity.|
| Addition | beta | Added the [printDocument](/graph/api/resources/printdocument) entity.|
| Addition | beta | Added the [printer](/graph/api/resources/printer) entity.|
| Addition | beta | Added the [printerCapabilities](/graph/api/resources/printercapabilities) complex type.|
| Addition | beta | Added the [printerDefaults](/graph/api/resources/printerdefaults) complex type.|
| Addition | beta | Added the [printerDocumentConfiguration](/graph/api/resources/printerdocumentconfiguration) complex type.|
| Addition | beta | Added the [printerLocation](/graph/api/resources/printerlocation) complex type.|
| Addition | beta | Added the [printerShare](/graph/api/resources/printershare) entity.|
| Addition | beta | Added the [printerStatus](/graph/api/resources/printerstatus) complex type.|
| Addition | beta | Added the [printJob](/graph/api/resources/printJob) entity.|
| Addition | beta | Added the [printJobStatus](/graph/api/resources/printjobstatus) complex type.|
| Addition | beta | Added the [printPageRange](/graph/api/resources/printpagerange) complex type.|
| Addition | beta | Added the [printService](/graph/api/resources/printpagerange) entity.|
| Addition | beta | Added the [printServiceEndpoint](/graph/api/resources/printserviceendpoint) entity.|
| Addition | beta | Added the [printSettings](/graph/api/resources/printsettings) complex type.|
| Addition | beta | Added the [printUsageSummaryByPrinter](/graph/api/resources/printusagesummarybyprinter) entity.|
| Addition | beta | Added the [printUsageSummaryByUser](/graph/api/resources/printusagesummarybyuser) entity.|

## February 2020

### Cloud communications | Call

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added the **initiator** property to the [recordingInfo](/graph/api/resources/recordinginfo?view=graph-rest-beta) complex type.

### Cloud communications | Call records

Added new APIs and resources for subscribing to and retrieving call records from your organization.

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Addition | beta | Added [Get callRecord](/graph/api/callrecords-callrecord-get?view=graph-rest-beta) API.|
| Addition | beta | Added new entities:<br /><li>[callRecord](/graph/api/resources/callrecords-callrecord?view=graph-rest-beta)</li> <li>[session](/graph/api/resources/callrecords-session?view=graph-rest-beta)</li> <li>[segment](/graph/api/resources/callrecords-segment?view=graph-rest-beta)</li>|
| Addition | beta | Added new complex types:<br /><li>[endpoint](/graph/api/resources/callrecords-endpoint?view=graph-rest-beta)</li> <li>[participantEndpoint](/graph/api/resources/callrecords-participantendpoint?view=graph-rest-beta)</li> <li>[serviceEndpoint](/graph/api/resources/callrecords-serviceendpoint?view=graph-rest-beta)</li> <li>[userAgent](/graph/api/resources/callrecords-useragent?view=graph-rest-beta)</li> <li>[serviceUserAgent](/graph/api/resources/callrecords-serviceuseragent?view=graph-rest-beta)</li> <li>[clientUserAgent](/graph/api/resources/callrecords-clientuseragent?view=graph-rest-beta)</li> <li>[userfeedback](/graph/api/resources/callrecords-userfeedback?view=graph-rest-beta)</li> <li>[feedbackTokenSet](/graph/api/resources/callrecords-feedbacktokenset?view=graph-rest-beta)</li> <li>[media](/graph/api/resources/callrecords-media?view=graph-rest-beta)</li> <li>[mediaStream](/graph/api/resources/callrecords-mediastream?view=graph-rest-beta)</li> <li>[networkInfo](/graph/api/resources/callrecords-networkinfo?view=graph-rest-beta)</li> <li>[deviceInfo](/graph/api/resources/callrecords-deviceinfo?view=graph-rest-beta)</li> <li>[failureInfo](/graph/api/resources/callrecords-failureinfo?view=graph-rest-beta)</li> |
| Addition | beta | Added support for [webhook](webhooks.md) subscriptions to call records.|

### Devices and apps | Corporate management

| **Change type** | **Version** | **Description** |
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[macOSMdatpApp](/graph/api/resources/intune-apps-macosmdatpapp)<br/>[unsupportedGroupPolicyExtension](/graph/api/resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension)<br/>[userExperienceAnalyticsDeviceStartupProcess](/graph/api/resources/intune-devices-userexperienceanalyticsdevicestartupprocess)<br/>[userExperienceAnalyticsDeviceStartupProcessPerformance](/graph/api/resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance)<br/>|
|Addition|beta|Added new complex types:<br/>[customUpdateTimeWindow](/graph/api/resources/intune-deviceconfig-customupdatetimewindow)<br/>[iosAvailableUpdateVersion](/graph/api/resources/intune-softwareupdate-iosavailableupdateversion)<br/>[managedDeviceSummarizedAppState](/graph/api/resources/intune-troubleshooting-manageddevicesummarizedappstate)<br/>|
|Addition|beta|Added new enum types:<br/>[enrollmentAvailabilityOptions](/graph/api/resources/intune-shared-enrollmentavailabilityoptions)<br/>[globalDeviceHealthScriptState](/graph/api/resources/intune-devices-globaldevicehealthscriptstate)<br/>[iosSoftwareUpdateScheduleType](/graph/api/resources/intune-deviceconfig-iossoftwareupdatescheduletype)<br/>|
|Addition|beta|Added the [updateGlobalScript](/graph/api/intune-devices-devicehealthscript-updateglobalscript) action on [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript) |
|Addition|beta|Added the [getGlobalScriptHighestAvailableVersion](/graph/api/intune-devices-devicehealthscript-getglobalscripthighestavailableversion) action on [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript) |
|Addition|beta|Added the [enableGlobalScripts](/graph/api/intune-devices-devicehealthscript-enableglobalscripts) action on [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript) collection |
|Addition|beta|Added the [getManagedDevicesWithFailedOrPendingApps](/graph/api/intune-troubleshooting-user-getmanageddeviceswithfailedorpendingapps) function on [user](/graph/api/resources/intune-shared-user) |
|Addition|beta|Added the [areGlobalScriptsAvailable](/graph/api/intune-devices-devicehealthscript-areglobalscriptsavailable) function on [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript) collection |
|Deletion|beta|Removed the following enum types:<br/>**logLevel**<br/>|
|Addition|beta|Added the **certificateSerialNumber** property to the [applePushNotificationCertificate](/graph/api/resources/intune-devices-applepushnotificationcertificate) entity|
|Addition|beta|Added the **isGlobalScript** and **highestAvailableVersion** properties to the [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript) entity|
|Addition|beta|Added the **hasRequiredSetting** property to the [deviceManagementSettingCategory](/graph/api/resources/intune-deviceintent-devicemanagementsettingcategory) entity|
|Addition|beta|Added the **sendDeviceOwnershipChangePushNotification**, **enrollmentAvailability** and **roleScopeTagIds** properties to the [intuneBrandingProfile](/graph/api/resources/intune-wip-intunebrandingprofile) entity|
|Addition|beta|Added the **updateScheduleType** and **customUpdateTimeWindows** properties to the [iosUpdateConfiguration](/graph/api/resources/intune-deviceconfig-iosupdateconfiguration) entity|
|Addition|beta|Added the **appActionIfUnableToAuthenticateUser** property to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection) entity|
|Addition|beta|Added the **userPrincipalName** property to the [termsAndConditionsAcceptanceStatus](/graph/api/resources/intune-companyterms-termsandconditionsacceptancestatus) entity|
|Addition|beta|Added the **responsiveDesktopTimeInMs** property to the [userExperienceAnalyticsDevicePerformance](/graph/api/resources/intune-devices-userexperienceanalyticsdeviceperformance) entity|
|Addition|beta|Added the **responsiveDesktopTimeInMs** property to the [userExperienceAnalyticsDeviceStartupHistory](/graph/api/resources/intune-devices-userexperienceanalyticsdevicestartuphistory) entity|
|Addition|beta|Added the **installLanguage** property to the [win32LobApp](/graph/api/resources/intune-apps-win32lobapp) entity|
|Addition|beta|Added the **displayLanguageLocale** property to the [windowsMicrosoftEdgeApp](/graph/api/resources/intune-apps-windowsmicrosoftedgeapp) entity|
|Addition|beta|Added the **userExperienceAnalyticsDeviceStartupProcesses**, **userExperienceAnalyticsDeviceStartupProcessPerformance** and **userExperienceAnalyticsStartupScoreHistory** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement) entity|
|Addition|beta|Added the **unsupportedGroupPolicyExtensions** navigation property to the [groupPolicyMigrationReport](/graph/api/resources/intune-gpanalyticsservice-grouppolicymigrationreport) entity|
|Addition|beta|Added the **configMgrDeviceCount** property to the [deviceOperatingSystemSummary](/graph/api/resources/intune-devices-deviceoperatingsystemsummary) complex type|
|Addition|beta|Added the **roleScopeTagIds**, **sendDeviceOwnershipChangePushNotification** and **enrollmentAvailability** properties to the [intuneBrand](/graph/api/resources/intune-onboarding-intunebrand) complex type|
|Addition|beta|Added the **troubleshootingErrorDetails** property to the [mobileAppTroubleshootingHistoryItem](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootinghistoryitem) complex type|
|Addition|beta|Added the **xTec** member to the [deviceManagementDerivedCredentialIssuer](/graph/api/resources/intune-rapolicy-devicemanagementderivedcredentialissuer) enum type|
|Addition|beta|Added the **windows10x** member to the [deviceType](/graph/api/resources/intune-deviceconfig-devicetype) enum type|
|Addition|beta|Added the **windowsManagementCloudApi** member to the [managementAgentType](/graph/api/resources/intune-deviceconfig-managementagenttype) enum type|

### Groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the [group: assignLicense API](/graph/api/group-assignlicense?view=graph-rest-1.0), which can be used to assign license to a [group](/graph/api/resources/group?view=graph-rest-1.0). |

### Identity and access

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
| Addition | beta and v1.0 | Added the **latestSupportedTlsVersion** property to the [subscription](/graph/api/resources/subscription?view=graph-rest-1.0) entity. Specifies the latest TLS version that the notification endpoint supports. Allows subscribers to use a deprecated version of TLS for a limited period. For details, see [Microsoft Graph subscriptions - deprecating TLS 1.0 and 1.1](https://developer.microsoft.com/graph/blogs/microsoft-graph-subscriptions-deprecating-tls-1-0-and-1-1/).
| Change | beta |Updated the existing policies collection with a [policies](/graph/api/resources/policy-overview?view=graph-rest-beta) URL segment. Typed policy resources are now grouped under the policies segment as described in [this blog post](https://developer.microsoft.com/identity/blogs/breaking-changes-policy-api-microsoft-graph-beta/). This update adds four typed policy resources: <br> <li>[activityBasedTimeoutPolicies](/graph/api/resources/activityBasedTimeoutPolicy?view=graph-rest-beta)</li> <li>[claimsMappingPolicies](/graph/api/resources/claimsMappingPolicy?view=graph-rest-beta) </li> <li>[homeRealmDiscoveryPolicies](/graph/api/resources/homeRealmDiscoveryPolicy?view=graph-rest-beta) and </li> <li>[tokenLifetimePolicies](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-beta)</li> |
| Addition | beta | Added [activityBasedTimeoutPolicy](/graph/api/resources/activityBasedTimeoutPolicy?view=graph-rest-beta) resource type controls automatic sign-out for web sessions after a period of inactivity, for applications that support activity-based timeout functionality.|
| Addition | beta |Added the [claimsMappingPolicy](/graph/api/resources/claimsMappingPolicy?view=graph-rest-beta) resource type, which controls the claims mapping for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.|
| Addition | beta | Added the [homeRealmDiscoveryPolicy](/graph/api/resources/homeRealmDiscoveryPolicy?view=graph-rest-beta) resource type, which controls Azure Active Directory authentication behavior for federated users, in particular for auto-acceleration and user authentication restrictions in federated domains. |
| Addition | beta | Added the [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-beta) resource type, which controls the lifetime duration of access tokens used to access protected resources.|
| Addition | beta | Added the [tokenIssuancePolicy](/graph/api/resources/tokenissuancepolicy?view=graph-rest-beta) resource type, which controls the characteristics of SAML tokens issued by Azure AD. This allows you to set the signing algorithm, signing options, or SAML token version to be used to issue the SAML token.
| Addition | beta | Added the [error](/graph/api/resources/synchronization-synchronizationError?view=graph-rest-beta) property to the **quarantineStatus** resource type.|
| Change | beta | Updated the [accessPackageAssignmentPolicy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta) with additional properties for requestor, approval and review settings.|
| Addition | beta and v1.0 | Added application-level and delegated Policy.ReadWrite.ApplicationConfiguration permission for read and write operations on application configuration policies.|

### Security

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added [create](/graph/api/informationprotection-post-threatassessmentrequests?view=graph-rest-1.0), [get](/graph/api/threatassessmentrequest-get?view=graph-rest-1.0) and [list](/graph/api/informationprotection-list-threatassessmentrequests?view=graph-rest-1.0) APIs to manage [threatAssessmentRequest](/graph/api/resources/threatAssessmentRequest?view=graph-rest-1.0) resources.|

### Teamwork

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | Beta | Added [notifications](/graph/api/subscription-post-subscriptions?view=graph-rest-beta) for all channel messages in tenant and all chat messages in tenant. |
| Addition | Beta | Added the [swapShiftsChangeRequest: decline](/graph/api/swapshiftschangerequest-decline?view=graph-rest-beta) method to the **swapShiftsChangeRequest** resource. |

### Users

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added the [user: reprocessLicenseAssignment API](/graph/api/user-reprocesslicenseassignment), which can be used to reprocess all group-based license assignments for the [user](/graph/api/resources/user?view=graph-rest-1.0). |

## January 2020

### Devices and apps | Corporate management

| **Change type** | **Version** | **Description** |
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-androiddeviceownerimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[intune-device-comanagementEligibleDeviceEntity](/graph/api/resources/comanagementEligibleDeviceEntity?view=graph-rest-beta)<br/>[comanagementEligibleSummaryEntity](/graph/api/resources/intune-device-comanagementEligibleSummaryEntity?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[appleVpnAlwaysOnConfiguration](/graph/api/resources/intune-deviceconfig-applevpnalwaysonconfiguration?view=graph-rest-beta)<br/>[deviceManagementIntentSettingSecretConstraint](/graph/api/resources/intune-deviceintent-devicemanagementintentsettingsecretconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingAppConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingappconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingCollectionConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingcollectionconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingEnrollmentTypeConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingenrollmenttypeconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingRequiredConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingrequiredconstraint?view=graph-rest-beta)<br/>[iosCredentialSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-ioscredentialsinglesignonextension?view=graph-rest-beta)<br/>[iosRedirectSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-iosredirectsinglesignonextension?view=graph-rest-beta)<br/>[iosSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-iossinglesignonextension?view=graph-rest-beta)<br/>[macOSCredentialSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-macoscredentialsinglesignonextension?view=graph-rest-beta)<br/>[macOSRedirectSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-macosredirectsinglesignonextension?view=graph-rest-beta)<br/>[macOSSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-macossinglesignonextension?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationSettingState](/graph/api/resources/intune-deviceconfig-manageddevicemobileappconfigurationsettingstate?view=graph-rest-beta)<br/>[specifiedCaptiveNetworkPlugins](/graph/api/resources/intune-deviceconfig-specifiedcaptivenetworkplugins?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[coManagementEligibleType](/graph/api/resources/intune-devices-comanagementeligibletype?view=graph-rest-beta)<br/>[vpnServiceExceptionAction](/graph/api/resources/intune-deviceconfig-vpnserviceexceptionaction?view=graph-rest-beta)<br/>[vpnTunnelConfigurationType](/graph/api/resources/intune-deviceconfig-vpntunnelconfigurationtype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [wipeAndBlockManagedApps](/graph/api/api/intune-mam-user-wipeandblockmanagedapps?view=graph-rest-beta) action on [user](/graph/api/resources/intune-shared-user?view=graph-rest-beta) |
|Addition|beta|Added the [unblockManagedApps](/graph/api/intune-mam-user-unblockmanagedapps?view=graph-rest-beta) action on [user](/graph/api/resources/intune-shared-user?view=graph-rest-beta) |
|Addition|beta|Added the [assign](/graph/api/intune-devices-deviceshellscript-assign?view=graph-rest-beta) action on [deviceShellScript](/graph/api/resources/intune-devices-deviceshellscript?view=graph-rest-beta) |
|Addition|beta|Added the [getManagedAppBlockedUsers](/graph/api/intune-mam-user-getmanagedappblockedusers?view=graph-rest-beta) function on [user](/graph/api/resources/intune-shared-user?view=graph-rest-beta) collection |
|Addition|beta|Added the [isManagedAppUserBlocked](/graph/api/intune-mam-user-ismanagedappuserblocked?view=graph-rest-beta) function on [user](/graph/api/resources/intune-shared-user?view=graph-rest-beta) |
|Addition|beta|Added the **proxySettings** and **proxyAutomaticConfigurationUrl** properties to the [androidWorkProfileEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofileenterprisewificonfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **placeholderText** property to the [deviceManagementSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementsettingdefinition?view=graph-rest-beta) entity|
|Addition|beta|Added the **iosSingleSignOnExtension** property to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **kioskModeAppType** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **alwaysOnConfiguration** and **enableAlwaysOnConfiguration** properties to the [iosikEv2VpnConfiguration](/graph/api/resources/intune-deviceconfig-iosikev2vpnconfiguration?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [iosUpdateConfiguration](/graph/api/resources/intune-deviceconfig-iosupdateconfiguration?view=graph-rest-beta) entity:<br/>**utcTimeOffsetInMinutes** from required to optional<br/>|
|Addition|beta|Added the **macOSSingleSignOnExtension** property to the [macOSDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-macosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **settingStates** property to the [managedDeviceMobileAppConfigurationState](/graph/api/resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState?view=graph-rest-beta) entity|
|Addition|beta|Added the **blockedManufacturers** property to the [deviceEnrollmentPlatformRestriction](/graph/api/resources/intune-onboarding-deviceenrollmentplatformrestriction?view=graph-rest-beta) complex type|
|Addition|beta|Added the **realm**, **domains**, **blockAutomaticLogin**, **cacheName**, **credentialBundleIdAccessControlList**, **domainRealms**, **isDefaultRealm**, **passwordBlockModification**, **passwordExpirationDays**, **passwordExpirationNotificationDays**, **userPrincipalName**, **passwordRequireActiveDirectoryComplexity**, **passwordPreviousPasswordBlockCount**, **passwordMinimumLength**, **passwordMinimumAgeDays**, **passwordRequirementsDescription**, **requireUserPresence**, **activeDirectorySiteCode**, **passwordEnableLocalSync**, **blockActiveDirectorySiteAutoDiscovery** and **passwordChangeUrl** properties to the [iosKerberosSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-ioskerberossinglesignonextension?view=graph-rest-beta) complex type|
|Addition|beta|Added the **realm**, **domains**, **blockAutomaticLogin**, **cacheName**, **credentialBundleIdAccessControlList**, **domainRealms**, **isDefaultRealm**, **passwordBlockModification**, **passwordExpirationDays**, **passwordExpirationNotificationDays**, **userPrincipalName**, **passwordRequireActiveDirectoryComplexity**, **passwordPreviousPasswordBlockCount**, **passwordMinimumLength**, **passwordMinimumAgeDays**, **passwordRequirementsDescription**, **requireUserPresence**, **activeDirectorySiteCode**, **passwordEnableLocalSync**, **blockActiveDirectorySiteAutoDiscovery** and **passwordChangeUrl** properties to the [macOSKerberosSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-macoskerberossinglesignonextension?view=graph-rest-beta) complex type|
|Addition|beta|Added the **alwaysOn** member to the [appleVpnConnectionType](/graph/api/resources/intune-deviceconfig-applevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **deviceCompliance** member to the [deviceManagementTemplateType](/graph/api/resources/intune-deviceintent-devicemanagementtemplatetype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **holoLens** member to the [windowsAutopilotDeviceType](/graph/api/resources/intune-enrollment-windowsautopilotdevicetype?view=graph-rest-beta) enum type|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
|Change | beta |Updated the existing policies collection with a [policies](/graph/api/resources/policy-overview?view=graph-rest-beta) URL segment. Typed policy resources are now grouped under the policies segment as described in [this blog post](https://developer.microsoft.com/identity/blogs/breaking-changes-policy-api-microsoft-graph-beta/). This update adds four typed policy resources: <br> <li>[activityBasedTimeoutPolicies](/graph/api/resources/activityBasedTimeoutPolicy?view=graph-rest-beta)</li> <li>[claimsMappingPolicies](/graph/api/resources/claimsMappingPolicy?view=graph-rest-beta) </li> <li>[homeRealmDiscoveryPolicies](/graph/api/resources/homeRealmDiscoveryPolicy?view=graph-rest-beta) and </li> <li>[tokenLifetimePolicies](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-beta)</li> |
| Addition | beta | Added [activityBasedTimeoutPolicy](/graph/api/resources/activityBasedTimeoutPolicy?view=graph-rest-beta) resource type controls automatic sign-out for web sessions after a period of inactivity, for applications that support activity-based timeout functionality.|
| Addition | beta |[claimsMappingPolicy](/graph/api/resources/claimsMappingPolicy?view=graph-rest-beta) resource type controls the claims mapping for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.|
| Addition | beta | [homeRealmDiscoveryPolicy](/graph/api/resources/homeRealmDiscoveryPolicy?view=graph-rest-beta) resource type controls Azure Active Directory authentication behavior for federated users, in particular for auto-acceleration and user authentication restrictions in federated domains. |
| Addition | beta | [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-beta) resource type controls the lifetime duration of access tokens used to access protected resources.|
|Addition| beta| Added the servicePrincipal property to [List provisioningObjectSummary](/graph/api/resources/provisioning-object-summary-list?view=graph-rest-beta).|

### Security

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change | beta and v1.0 | The [Update alert](/graph/api/alert-update?view=graph-rest-1.0&tabs=http) method now updates the **comments** field with the following values only: <br/> `Closed in IPC`, `Closed in MCAS`.|

### Users

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the **identities** property to the [user](/graph/api/resources/user?view=graph-rest-1.0) resource. This property represents the set of identities (like local accounts and social accounts) that this user can use to sign in with.|

## December 2019

### Change notifications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added support for subscribing to notifications that include resource data. Currently supported resources are [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) resources in Microsoft Teams channels and chats. Subscribing apps will have to implement additional authorization and decryption code to benefit from this feature. For more details, see [Set up change notifications for chat messages, including message properties (preview)](webhooks-with-resource-data.md).|

### Cloud communications

Introduced presence in beta and added cloud communications APIs to v1.0.

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
|Addition|beta|Add the [presence](/graph/api/resources/presence?view=graph-rest-beta) resource and associated methods, and introduced the Presence.Read and Presence.Read.All permissions.|
|Addition|v1.0|Added the following APIs: [create call](/graph/api/application-post-calls?view=graph-rest-1.0), [call answer](/graph/api/call-answer?view=graph-rest-1.0), [call reject](/graph/api/call-reject?view=graph-rest-1.0), [call get](/graph/api/call-get?view=graph-rest-1.0), [call delete](/graph/api/call-delete?view=graph-rest-1.0), [call mute](/graph/api/call-mute?view=graph-rest-1.0), [call-unmute](/graph/api/call-unmute?view=graph-rest-1.0), [call change screen sharing role](/graph/api/call-changescreensharingrole?view=graph-rest-1.0), [call transfer](/graph/api/call-transfer?view=graph-rest-1.0), [call redirect](/graph/api/call-redirect?view=graph-rest-1.0), [Play a prompt](/graph/api/call-playprompt?view=graph-rest-1.0), [Record Response](/graph/api/call-recordresponse?view=graph-rest-1.0), [Subscribe to tne](/graph/api/call-subscribetotone?view=graph-rest-1.0), [list participants](/graph/api/call-list-participants?view=graph-rest-1.0), [invite participants](/graph/api/participant-invite?view=graph-rest-1.0), [get participants](/graph/api/participant-get?view=graph-rest-1.0), [mute participants](/graph/api/participant-mute?view=graph-rest-1.0), [create online meeting](/graph/api/application-post-onlinemeeting?view=graph-rest-1.0), [get online meeting](/graph/api/onlinemeeting-get?view=graph-rest-1.0), and [call keep alive](/graph/api/call-keepalive?view=graph-rest-1.0).|
|Addition|v1.0|Added the following resources: [call](/graph/api/resouces/call?view=graph-rest-1.0), [participant](/graph/api/resouces/participant?view=graph-rest-1.0), and [onlineMeeting](/graph/api/resouces/onlinemeeting?view=graph-rest-1.0).|
| Change        | Beta        | Renamed IVR API Record to [recordResponse](/graph/api/call-record?view=graph-rest-beta). |
| Change        | Beta        | Removed [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta) object properties **isCanceled**, **canceledDateTime**, and **entryExitAnnouncement**. Renamed property **joinUrl** to **joinWebUrl**. |
| Addition        | Beta & v1.0       | Added the [delete onlineMeeting](/graph/api/onlinemeeting-delete.md) operation.|

### Devices and apps | Corporate management

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[deviceShellScript](/graph/api/resources/intune-devices-deviceshellscript?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceManagementSettingFileConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingfileconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingProfileConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingprofileconstraint?view=graph-rest-beta)<br/>[redirectSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-redirectsinglesignonextension?view=graph-rest-beta)<br/>[retireScheduledManagedDevice](/graph/api/resources/intune-deviceconfig-retirescheduledmanageddevice?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[defenderRealtimeScanDirection](/graph/api/resources/intune-deviceconfig-defenderrealtimescandirection?view=graph-rest-beta)<br/>[managedAppDataIngestionLocation](/graph/api/resources/intune-mam-managedappdataingestionlocation?view=graph-rest-beta)<br/>[managedDeviceArchitecture](/graph/api/resources/intune-devices-manageddevicearchitecture?view=graph-rest-beta)<br/>[mdmSupportedState](/graph/api/resources/intune-gpanalyticsservice-mdmsupportedstate?view=graph-rest-beta)<br/>[scheduledRetireState](/graph/api/resources/intune-deviceconfig-scheduledretirestate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [getDevicesScheduledToRetire](/graph/api/intune-deviceconfig-devicecompliancepolicy-getdevicesscheduledtoretire?view=graph-rest-beta) action on [deviceCompliancePolicy](/graph/api/resources/intune-shared-devicecompliancepolicy?view=graph-rest-beta) collection |
|Addition|beta|Added the [setScheduledRetireState](/graph/api/intune-deviceconfig-devicecompliancepolicy-setscheduledretirestate?view=graph-rest-beta) action on [deviceCompliancePolicy](/graph/api/resources/intune-shared-devicecompliancepolicy?view=graph-rest-beta) collection |
|Addition|beta|Added the [wipe](/graph/api/intune-devices-manageddevice-wipe) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Deletion|beta|Removed the [wipe](/graph/api/intune-devices-manageddevice-wipe) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|beta|Added the **advancedThreatProtectionRequiredSecurityLevel** and **securityBlockDeviceAdministratorManagedDevices** properties to the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **advancedThreatProtectionRequiredSecurityLevel** property to the [androidDeviceOwnerCompliancePolicy](/graph/api/resources/intune-deviceconfig-androiddeviceownercompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateCredentialConfigurationDisabled** property to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **allowedAndroidDeviceModels** and **appActionIfAndroidDeviceModelNotAllowed** properties to the [androidManagedAppProtection](/graph/api/resources/intune-shared-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **advancedThreatProtectionRequiredSecurityLevel** property to the [androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **subjectNameFormatString**, **certificateStore** and **customSubjectAlternativeNames** properties to the [androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilepkcscertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **allowedAndroidDeviceModels** and **appActionIfAndroidDeviceModelNotAllowed** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **issueRemediatedCumulativeDeviceCount** property to the [deviceHealthScriptRunSummary](/graph/api/resources/intune-devices-devicehealthscriptrunsummary?view=graph-rest-beta) entity|
|Addition|beta|Added the **mdmSupportedState** property to the [groupPolicySettingMapping](/graph/api/resources/intune-gpanalyticsservice-grouppolicysettingmapping?view=graph-rest-beta) entity|
|Addition|beta|Added the **subjectNameFormatString**, **certificateStore** and **customSubjectAlternativeNames** properties to the [iosPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-iospkcscertificateprofile) entity|
|Addition|beta|Added the **channel** property to the [macOSMicrosoftEdgeApp](/graph/api/resources/intune-apps-macosmicrosoftedgeapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **blockDataIngestionIntoOrganizationDocuments** and **allowedDataIngestionLocations** properties to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **physicalMemoryInBytes** and **processorArchitecture** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **isFeatureUpdate** and **operatingSystemVersion** properties to the [userExperienceAnalyticsDeviceStartupHistory](/graph/api/resources/intune-devices-userexperienceanalyticsdevicestartuphistory?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderDisableScanArchiveFiles**, **defenderDisableBehaviorMonitoring**, **defenderDisableCloudProtection**, **defenderEnableScanIncomingMail**, **defenderEnableScanMappedNetworkDrivesDuringFullScan**, **defenderDisableScanRemovableDrivesDuringFullScan**, **defenderDisableScanDownloads**, **defenderDisableIntrusionPreventionSystem**, **defenderDisableOnAccessProtection**, **defenderDisableRealTimeMonitoring**, **defenderDisableScanNetworkFiles**, **defenderDisableScanScriptsLoadedInInternetExplorer**, **defenderBlockEndUserAccess**, **defenderScanMaxCpuPercentage**, **defenderCheckForSignaturesBeforeRunningScan**, **defenderCloudBlockLevel**, **defenderCloudExtendedTimeoutInSeconds**, **defenderDaysBeforeDeletingQuarantinedMalware**, **defenderDisableCatchupFullScan**, **defenderDisableCatchupQuickScan**, **defenderEnableLowCpuPriority**, **defenderFileExtensionsToExclude**, **defenderFilesAndFoldersToExclude**, **defenderProcessesToExclude**, **defenderPotentiallyUnwantedAppAction**, **defenderScanDirection**, **defenderScanType**, **defenderScheduledQuickScanTime**, **defenderScheduledScanDay**, **defenderScheduledScanTime**, **defenderSubmitSamplesConsentType** and **defenderDetectedMalwareActions** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **uninstallBuiltInApps** property to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **subjectNameFormatString**, **certificateStore** and **customSubjectAlternativeNames** properties to the [windows10PkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-windows10pkcscertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceShellScripts** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordChangeUrl** property to the [kerberosSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-kerberossinglesignonextension?view=graph-rest-beta) complex type|
|Addition|beta|Added the **securityOptions**, **userRightsAssignment**, **auditSetting** and **windowsFirewallSettings** members to the [groupPolicySettingType](/graph/api/resources/intune-gpanalyticsservice-grouppolicysettingtype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **contentDownloaded** member to the [resultantAppStateDetail](/graph/api/resources/intune-apps-resultantappstatedetail?view=graph-rest-beta) enum type|

### Education

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the [classSettings](/graph/api/resources/teamclasssettings?view=graph-rest-1.0) property to the [team](/graph/api/resources/team?view=graph-rest-1.0) resource to allow callers to get settings specific to a team of type Class.|

### Groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          |Added the **hideFromAddressLists** and **hideFromOutlookClients** properties to the [group](/graph/api/resources/group?view=graph-rest-1.0) entity, to control the visibility of a group in the Outlook UI.|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
|Change | beta |Updated the behavior of the **appRoleAssignments** and **appRoleAssignedTo** relationships on [servicePrincipal](/graph/api/resources/serviceprincipal.md) to return the roles as documented. **appRoleAssignments** returns app roles granted to the service principal and **appRoleAssignedTo** returns principals granted app roles to the service principal.|
| Addition | beta | Added the new entity type [accessPackageResourceRequest](/graph/api/resources/accesspackageresourcerequest?view=graph-rest-beta). |
|Addition|beta, v1.0|Added support for returning a limited amount of information when your application does not have access to some of the types in a response's collection. For more details, see [Limited information returned for inaccessible member objects](permissions-reference.md#limited-information-returned-for-inaccessible-member-objects).|

### Security

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added [create](/graph/api/informationprotection-post-threatassessmentrequests?view=graph-rest-beta), [get](/graph/api/threatassessmentrequest-get?view=graph-rest-beta) and [list](/graph/api/informationprotection-list-threatassessmentrequests?view=graph-rest-beta) APIs to manage [threatAssessmentRequest](/graph/api/resources/threatAssessmentRequest?view=graph-rest-beta) resources.|
| Addition        | beta        | Added optional request header, User-Agent, to [evaluate application](/graph/api/informationprotectionlabel-evaluateapplication?view=graph-rest-beta), [evaluate classification](/graph/api/informationprotectionlabel-evaluateclassificationresults?view=graph-rest-beta), [evaluate removal](/graph/api/informationprotectionlabel-evaluateremoval?view=graph-rest-beta), [extract label](/graph/api/informationprotectionlabel-extractlabel?view=graph-rest-beta), [list label](/graph/api/informationprotectionlabel-list-labels?view=graph-rest-beta), and [get label](/graph/api/informationprotectionlabel-get?view=graph-rest-beta).

### Microsoft Graph Toolkit

Introduced version 1.1 of the Microsoft Graph Toolkit.

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | NA         | Added the [mgt-get](/graph/toolkit/components/get) component. |
| Addition        | NA         | Added [Proxy provider](/graph/toolkit/providers/proxy). |
| Addition        | NA          | Added the `inherit-details` attribute to the [person card component](/graph/toolkit/components/person). |
| Addition        | NA         | Added the `selectedPeople` property to the [people picker component](/graph/toolkit/components/people-picker). |
| Addition        | NA        | Added the `loading` and `error` templates to the [people picker component](/graph/toolkit/components/people-picker). |
| Addition        | NA        | Added the `task` and `task-details` templates to the [tasks component](/graph/toolkit/components/tasks). |
| Addition        | NA          | Added the `isNewTaskVisible` property to the [tasks component](/graph/toolkit/components/tasks). |
| Addition        | NA        | Added the `group-id` attribute to the [tasks component](/graph/toolkit/components/tasks). |
| Addition        | NA          | Added the `taskFilter` property to the [tasks component](/graph/toolkit/components/tasks). |
| Addition        | NA         | Added the `eventClick` event to the [agenda component](/graph/toolkit/components/agenda). |
| Addition        | NA          | Added the `person-card` attribute to the [people component](/graph/toolkit/components/people). |
| Addition        | NA          | Added the `user-ids` attribute to the [people component](/graph/toolkit/components/people). |
| Fixes        | NA         | [Bug fixes and improvements](https://github.com/microsoftgraph/microsoft-graph-toolkit/releases/tag/v1.1.0). |

### People and workplace intelligence | Insights

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Insights API is available in v1.0. This includes the [officeGraphInsights](/graph/api/resources/officegraphinsights?view=graph-rest-1.0), [trending](/graph/api/resources/insights-trending?view=graph-rest-1.0), [usedInsight](/graph/api/resources/insights-used?view=graph-rest-1.0), and [sharedInsight](/graph/api/resources/insights-shared?view=graph-rest-1.0) resources, and related types and methods. See [Why integrate with document-based insights?](social-intel-concept-overview.md#why-integrate-with-document-based-insights) for more information. |

### Reports | Microsoft 365 usage reports

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Change          | beta and v1.0  | For delegated permissions to allow apps to read Microsoft 365 service usage reports on behalf of a user, the tenant administrator must have assigned the user an Azure AD limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](reportroot-authorization.md).|

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added [notifications](/graph/api/subscription-post-subscriptions?view=graph-rest-beta) for new and edited channel messages, and new and edited chat messages. |
| Addition | Beta | Added the [shiftpreferences](/graph/api/resources/shiftpreferences?view=graph-rest-beta) resource and associated methods.|
| Addition | Beta | Added new relationship `shiftPreferences` to [userSettings](/graph/api/resources/usersettings?view=graph-rest-beta) entity. |
| Change | Beta | Updated the application permissions required to perform read and write operations for shifts resources, including [schedule](/graph/api/resources/schedule?view=graph-rest-beta), [schedulingGroup](/graph/api/resources/schedulinggroup?view=graph-rest-beta), [shift](/graph/api/resources/shift?view=graph-rest-beta), [timeOff](/graph/api/resources/timeoff?view=graph-rest-beta), [timeOffReason](/graph/api/resources/timeoffreason?view=graph-rest-beta), [timeOffRequest](/graph/api/resources/timeoffrequest?view=graph-rest-beta), [swapShiftChangeRequest](/graph/api/resources/swapshiftchangerequest?view=graph-rest-beta), and [openShiftChangeRequest](/graph/api/resources/openshiftchangerequest?view=graph-rest-beta). **Note:** Applications permissions are currently in private preview and are not available for public use.|

## November 2019

### Calendar | Place

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | Beta  | Added the ability to [update a room or roomlist](/graph/api/resources/place-get?view=graph-rest-beta).|

### Cloud communications | Call

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Change        | Beta        | Changed return type for [mute](/graph/api/call-mute?view=graph-rest-beta) and [mute participant](/graph/api/participant-mute?view=graph-rest-beta) methods from [commsOperation](/graph/api/resources/commsoperation?view=graph-rest-beta) to [muteParticipantOperation](/graph/api/resources/muteparticipantoperation?view=graph-rest-beta). |
| Change        | Beta        | Changed return type for [unmute](/graph/api/call-unmute?view=graph-rest-beta) method from [commsOperation](/graph/api/resources/commsoperation?view=graph-rest-beta) to [unmuteParticipantOperation](/graph/api/resources/unmuteparticipantoperation?view=graph-rest-beta). |
| Addition        | Beta        | Added the [keepAlive](/api-reference/beta/api/call-keepalive.md) action to the [call](/api-reference/beta/resources/call.md) entity. |

### Cloud Communications | Recording

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added new action [updateRecordingStatus](/graph/api/call-updaterecordingstatus?view=graph-rest-beta) to [call](/graph/api/resources/call?view=graph-rest-beta) entity.
|Addition|beta|Added new complex type [incomingContext](/graph/api/resources/incomingcontext?view=graph-rest-beta).
|Addition|beta|Added new property `incomingContext` to [call](/graph/api/resources/call?view=graph-rest-beta) entity.
|Addition|beta|Added new property `endpointType` to [participantInfo](/graph/api/resources/participantinfo?view=graph-rest-beta) complex type.
|Addition|beta|Added new property `endpointType` to [invitationParticipantInfo](/graph/api/resources/invitationparticipantinfo?view=graph-rest-beta) complex type.
|Addition|beta|Added new property `recordingStatus` to [recordingInfo](/graph/api/resources/recordinginfo?view=graph-rest-beta) complex type.
|Deletion|beta|Removed property `status` from [recordingInfo](/graph/api/resources/recordinginfo?view=graph-rest-beta) complex type.
|Deletion|beta|Removed inheritance of [participantInfo](/graph/api/resources/participantinfo?view=graph-rest-beta) from [invitationParticipantInfo](/graph/api/resources/invitationparticipantinfo?view=graph-rest-beta) complex type.


### Devices and apps | Corporate management

| **Change type** | **Version**   | **Description**                          |
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[complianceManagementPartner](/graph/api/resources/intune-onboarding-compliancemanagementpartner?view=graph-rest-beta)<br/>[macOSCustomAppConfiguration](/graph/api/resources/intune-deviceconfig-macoscustomappconfiguration?view=graph-rest-beta)<br/>[macOSWiredNetworkConfiguration](/graph/api/resources/intune-deviceconfig-macoswirednetworkconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[companyPortalBlockedAction](/graph/api/resources/intune-shared-companyportalblockedaction?view=graph-rest-beta)<br/>[complianceManagementPartnerAssignment](/graph/api/resources/intune-onboarding-compliancemanagementpartnerassignment?view=graph-rest-beta)<br/>[deviceManagementPartnerAssignment](/graph/api/resources/intune-onboarding-devicemanagementpartnerassignment?view=graph-rest-beta)<br/>[roleScopeTagInfo](/graph/api/resources/intune-auditing-rolescopetaginfo?view=graph-rest-beta)<br/>[rotateBitLockerKeysDeviceActionResult](/graph/api/resources/intune-devices-rotatebitlockerkeysdeviceactionresult?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[companyPortalAction](/graph/api/resources/intune-shared-companyportalaction?view=graph-rest-beta)<br/>[easServices](/graph/api/resources/intune-deviceconfig-easservices?view=graph-rest-beta)<br/>[managedBrowserType](/graph/api/resources/intune-mam-managedbrowsertype?view=graph-rest-beta)<br/>[wiredNetworkInterface](/graph/api/resources/intune-deviceconfig-wirednetworkinterface?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [updateDeviceProperties](/graph/api/intune-enrollment-windowsautopilotdeviceidentity-updatedeviceproperties?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) |
|Addition|beta|Added the [updateDefinitionValues](/graph/api/intune-grouppolicy-grouppolicyconfiguration-updatedefinitionvalues?view=graph-rest-beta) action on [groupPolicyConfiguration](/graph/api/resources/intune-grouppolicy-grouppolicyconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the [getPolicyNonComplianceMetadata](/graph/api/intune-reporting-devicemanagementreports-getpolicynoncompliancemetadata?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Deletion|beta|Removed the following complex types:<br/>**scopeTagInfo**<br/>|
|Deletion|beta|Removed the [getDeviceNoncomplianceReports](/graph/api/intune-reporting-devicemanagementreports-getdevicenoncompliancereports?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Deletion|beta|Removed the [getPolicyNoncomplianceReports](/graph/api/intune-reporting-devicemanagementreports-getpolicynoncompliancereports?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Change|beta|Changed the following properties on the [androidDeviceOwnerCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androiddeviceownercertificateprofilebase?view=graph-rest-beta) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **googleAccountsBlocked** property to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **keyboardsRestricted** and **approvedKeyboards** properties to the [androidManagedAppProtection](/graph/api/resources/intune-shared-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** property to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [deviceCategory](/graph/api/resources/intune-shared-devicecategory?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **orderBy** property from the [deviceManagementExportJob](/graph/api/resources/intune-reporting-devicemanagementexportjob?view=graph-rest-beta) entity|
|Addition|beta|Added the **groupsRequiringPartnerEnrollment** property to the [deviceManagementPartner](/graph/api/resources/intune-onboarding-devicemanagementpartner?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [groupPolicyConfiguration](/graph/api/resources/intune-grouppolicy-grouppolicyconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **companyPortalBlockedActions**, **showAzureADEnterpriseApps** and **showOfficeWebApps** properties to the [intuneBrandingProfile](/graph/api/resources/intune-wip-intunebrandingprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **easServices** and **easServicesUserOverrideEnabled** properties to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **siriDisableServerLogging** property from the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** property to the [iosManagedAppProtection](/graph/api/resources/intune-shared-iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedBrowser** property to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **ethernetMacAddress** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **displayName** property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceCertificateStates** navigation property to the [androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilepkcscertificateprofile?view=graph-rest-beta) entity|
|Change|beta|Changed the type of the following properties on the [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta) entity:<br/>**assignments** from [deviceManagementScriptAssignment](/graph/api/resources/intune-devices-devicemanagementscriptassignment?view=graph-rest-beta) collection to [deviceHealthScriptAssignment](/graph/api/resources/intune-devices-devicehealthscriptassignment?view=graph-rest-beta) collection<br/>|
|Addition|beta|Added the **complianceManagementPartners** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **userRoleScopeTags** property to the [auditActor](/graph/api/resources/intune-auditing-auditactor?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **scopeTags** property from the [auditActor](/graph/api/resources/intune-auditing-auditactor?view=graph-rest-beta) complex type|
|Change|beta|Changed the following properties on the [credentialSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-credentialsinglesignonextension?view=graph-rest-beta) complex type:<br/>**teamIdentifier** from required to optional<br/>|
|Addition|beta|Added the **companyPortalBlockedActions**, **showAzureADEnterpriseApps** and **showOfficeWebApps** properties to the [intuneBrand](/graph/api/resources/intune-onboarding-intunebrand?view=graph-rest-beta) complex type|

### Education

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [classSettings](/graph/api/resources/teamclasssettings?view=graph-rest-beta) property to the [team](/graph/api/resources/team?view=graph-rest-beta) resource to allow callers to get settings specific to a team of type Class.|

### Identity and access

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | v1.0 | Added new entity type: [application](/graph/api/resources/application?view=graph-rest-1.0).|
| Addition | v1.0 | Added new delegated permissions [Application.Read.All](/graph/permissions-reference#application-resource-permissions), [Application.ReadWrite.All](/graph/permissions-reference#application-resource-permissions).|
| Addition | v1.0 | Added new application permission [Application.Read.All](/graph/permissions-reference#application-resource-permissions).|
| Addition | v1.0 | Added new delegated and application permissions [GroupMember.Read.All](permissions-reference.md#group-permissions) and [GroupMember.ReadWrite.All](permissions-reference.md#group-permissions) to get and update the [group](/graph/api/resources/group?view=graph-rest-1.0) resource.
| Addition | v1.0 | Added new application permission [Group.Create](permissions-reference.md#group-permissions) to create the **group** resource.
| Addition | beta and v1.0 | Added the **creationType** property to the [user](/graph/api/resources/user?view=graph-rest-1.0) resource.|
| Addition | v1.0 | Added the [checkMemberObjects](/graph/api/device-checkmemberobjects?view=graph-rest-1.0) operation for the [device](/graph/api/resources/device?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added the [checkMemberObjects](/graph/api/group-checkmemberobjects?view=graph-rest-1.0) operation for the [group](/graph/api/resources/group?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added the [checkMemberObjects](/graph/api/user-checkmemberobjects?view=graph-rest-1.0) operation for the [user](/graph/api/resources/user?view=graph-rest-1.0) resource. |

### Identity and access | Identity and sign-in

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | beta | Added application-level Policy.Read.All permission for read operations in both conditional access policies and named locations.|
| Addition | beta | Added support for report-only state: `enabledForReportingButNotEnforced`.|
| Change | beta | Updated the permissions required to perform write operations for both conditional access policies and named locations.|

### Security

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added new delegated and application permissions [ThreatAssessment.ReadWrite.All](permissions-reference.md#threat-assessment-permissions) and [ThreatAssessment.Read.All](permissions-reference.md#threat-assessment-permissions) to Read and write threat assessment requests |

### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the **conversationIndex** property to [message](/graph/api/resources/message?view=graph-rest-1.0) and its derived type [eventMessage](/graph/api/resources/eventmessage?view=graph-rest-1.0).|
| Addition | Beta | Added support for the [Mail.ReadBasic](/graph/permissions-reference#mail-permissions) delegated permission and [Mail.ReadBasic.All](/graph/permissions-reference#mail-permissions) application permission to [create](/graph/api/subscription-post-subscriptions?view=graph-rest-beta), [get](/graph/api/subscription-get?view=graph-rest-beta), [update](/graph/api/subscription-update?view=graph-rest-beta), and [delete](/graph/api/subscription-delete?view=graph-rest-beta) subscriptions for change notifications on message. |
| Addition | v1.0 | Added support for the Mail.ReadBasic delegated permission and Mail.ReadBasic.All application permission to:<br />- [List messages](/graph/api/user-list-messages?view=graph-rest-1.0)<br />- [Get message](/graph/api/message-get?view=graph-rest-1.0) <br />- [List mail folders](/graph/api/user-list-mailfolders?view=graph-rest-1.0)<br />- [Get mail folder](/graph/api/mailfolder-get?view=graph-rest-1.0)<br />- [List child folders](/graph/api/mailfolder-list-childfolders?view=graph-rest-1.0)<br />- [List messages in folder](/graph/api/mailfolder-list-childfolders?view=graph-rest-1.0)<br />- [Get message delta](/graph/api/message-delta?view=graph-rest-1.0)<br />- [Get mail folder delta](/graph/api/mailfolder-delta?view=graph-rest-1.0) <br />- [Create](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0), [get](/graph/api/subscription-get?view=graph-rest-1.0), [update](/graph/api/subscription-update?view=graph-rest-1.0), and [delete](/graph/api/subscription-delete?view=graph-rest-1.0) subscriptions for change notifications on message|


### People and workplace intelligence

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | Beta | Added the [profile API](/graph/api/resources/profile?view=graph-rest-beta) and associated methods. |

### Search

Microsoft Search is now exposing a way to search and index data in Microsoft Graph.

| **Change type** | **Version** | **Description**                              |
|:----------------|:------------|:---------------------------------------------|
| Addition        | beta        | Added the [Microsoft Search API](search-concept-overview.md) that constitutes [querying](/graph/api/search-query?view=graph-rest-beta) and [indexing](/graph/api/resource/indexing-api-overview?view=graph-rest-beta) capabilities. |
| Addition        | beta        | Added the [query](/graph/api/search-query?view=graph-rest-beta) action. |
| Addition        | beta        | Added the [searchRequest](/graph/api/resources/searchrequest?view=graph-rest-beta), [searchQuery](/graph/api/resources/searchquery?view=graph-rest-beta), [searchQueryString](/graph/api/resources/searchquerystring?view=graph-rest-beta),[searchResponse](/graph/api/resources/searchresponse?view=graph-rest-beta), [searchHitsContainer](/graph/api/resources/searchhitscontainer?view=graph-rest-beta), and [searchHit](/graph/api/resources/searchhit?view=graph-rest-beta) complex types. |
| Addition        | beta        | Added the [externalConnection](/graph/api/resources/externalconnection?view=graph-rest-beta), [schema](/graph/api/resources/schema?view=graph-rest-beta), [externalItem](/graph/api/resources/externalitem?view=graph-rest-beta), and [externalFile](/graph/api/resources/externalfile?view=graph-rest-beta) entities, and methods exposed by these entities. |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the [openshift](/graph/api/resources/openshift?view=graph-rest-beta), [openshiftChangeRequest](/graph/api/resources/openshiftChangeRequest?view=graph-rest-beta), [swapShiftChangeRequest](/graph/api/resources/swapShiftChangeRequest?view=graph-rest-beta), and [timeoffrequest](/graph/api/resources/timeoffrequest?view=graph-rest-beta) resources and associated methods.|
| Addition | Beta | Added the **timeClockEnabled**, **openShiftsEnabled**, **swapShiftsRequestsEnabled**, **offerShiftRequestsEnabled**,  **timeOffRequestsEnabled** properties to the [schedule](/graph/api/resources/schedule?view=graph-rest-beta) resource.|
| Addition        | Beta          | Added an additional route to retrieve a [driveItem] using a team and channel ID, [get driveItem](/graph/api/driveitem-get?view=graph-rest-beta). |

### October 2019

### Calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the **allowNewTimeProposals** property to the [event](/graph/api/resources/event?view=graph-rest-beta) and [eventMessageRequest](/graph/api/resources/eventmessagerequest?view=graph-rest-beta) entities. |
| Addition | Beta | Added the **proposedNewTime** optional parameter to the [tentativelyAccept](/graph/api/event-tentativelyaccept?view=graph-rest-beta) and [decline](/graph/api/event-decline?view=graph-rest-beta) methods of **event**. |
| Addition | Beta | Added the [eventMessageResponse](/graph/api/resources/eventmessageresponse?view=graph-rest-beta) entity that is based on [eventMessage](/graph/api/resources/eventmessage?view=graph-rest-beta), and in addition, includes the **proposedNewTime** and **responseType** properties. |
| Addition | Beta | Added the **proposedNewTime** property to the [attendee](/graph/api/resources/attendee?view=graph-rest-beta) complex type. |

### Identity and access

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | beta and v1.0 | Added the **securityIdentifier** property to the [group](/graph/api/resources/group?view=graph-rest-1.0) resource. |
| Addition | beta and v1.0 | Added the **mdmAppId** property to the [device](/graph/api/resources/group?view=graph-rest-1.0) resource. |
| Addition | Beta | Added the **manufacturer** and **model** properties to the [device](/graph/api/resources/device?view=graph-rest-beta) entity. |
| Addition | v1.0 | Added new entity [certificateBasedAuthConfiguration](/graph/api/resources/certificatebasedauthconfiguration?view=graph-rest-1.0). |
| Addition | v1.0 | Added new complex type [certificateAuthority](/graph/api/resources/certificateauthority?view=graph-rest-1.0). |
| Addition | v1.0 | Added new relationship for **certificateBasedAuthConfiguration** on the [organization](/graph/api/resources/organization?view=graph-rest-1.0) resource. This enables [certificate-based authentication in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started).|
|Addition | Beta | Added new entity [calendarPermission](/graph/api/resources/calendarpermission?view=graph-rest-beta). |
|Addition | Beta | Added [get](/graph/api/calendarpermission-get?view=graph-rest-beta), [update](/graph/api/calendarpermission-update?view=graph-rest-beta) and [delete](/graph/api/calendarpermission-delete?view=graph-rest-beta) APIs to manage [calendarPermission](/graph/api/resources/calendarpermission?view=graph-rest-beta) resources on [calendar](/graph/api/resources/calendar?view=graph-rest-beta). |
|Addition | Beta | Added new complex type [onlineMeetingInfo](/graph/api/resources/onlinemeetinginfo?view=graph-rest-beta). |
| Addition | Beta | Added the **isOnlineMeeting**, **onlineMeetingProvider** and **onlineMeeting** properties to the [event](/graph/api/resources/event?view=graph-rest-beta) entity. **isOnlineMeeting** and **onlineMeetingProvider** are optional parameters to the [create](/graph/api/user-post-events?view=graph-rest-beta) and [update](/graph/api/event-update?view=graph-rest-beta) methods of **event**. |
| Addition | Beta | Added the **defaultOnlineMeetingProviders** and **allowedOnlineMeetingProviders** properties to the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) entity. |
| Addition | Beta | Added the **isTallyingResponses** property to the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) entity. |
| Addition | Beta | Added the **isRemovable** property to the [calendar](/graph/api/resources/calendar?view=graph-rest-beta) entity. |
| Addition | Beta | Added the **delegateMeetingMessageDeliveryOptions** property to the [mailboxSettings](/graph/api/resources/mailboxSettings?view=graph-rest-beta) entity. |

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[deviceHealthScriptAssignment](/graph/api/resources/intune-devices-devicehealthscriptassignment?view=graph-rest-beta)<br/>[deviceHealthScriptDeviceState](/graph/api/resources/intune-devices-devicehealthscriptdevicestate?view=graph-rest-beta)<br/>[deviceHealthScriptRunSummary](/graph/api/resources/intune-devices-devicehealthscriptrunsummary?view=graph-rest-beta)<br/>[deviceManagementCachedReportConfiguration](/graph/api/resources/intune-reporting-devicemanagementcachedreportconfiguration?view=graph-rest-beta)<br/>[deviceManagementExportJob](/graph/api/resources/intune-reporting-devicemanagementexportjob?view=graph-rest-beta)<br/>[deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta)<br/>[deviceManagementReportSchedule](/graph/api/resources/intune-reporting-devicemanagementreportschedule?view=graph-rest-beta)<br/>[groupPolicyMigrationReport](/graph/api/resources/intune-gpanalyticsservice-grouppolicymigrationreport?view=graph-rest-beta)<br/>[groupPolicySettingMapping](/graph/api/resources/intune-gpanalyticsservice-grouppolicysettingmapping?view=graph-rest-beta)<br/>[macOSMicrosoftEdgeApp](/graph/api/resources/intune-apps-macosmicrosoftedgeapp?view=graph-rest-beta)<br/>[macOSPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-macospkcscertificateprofile?view=graph-rest-beta)<br/>[userExperienceAnalyticsDevicePerformance](/graph/api/resources/intune-devices-userexperienceanalyticsdeviceperformance?view=graph-rest-beta)<br/>[userExperienceAnalyticsDeviceStartupHistory](/graph/api/resources/intune-devices-userexperienceanalyticsdevicestartuphistory?view=graph-rest-beta)<br/>[userExperienceAnalyticsRegressionSummary](/graph/api/resources/intune-devices-userexperienceanalyticsregressionsummary?view=graph-rest-beta)<br/>[windowsDefenderApplicationControlSupplementalPolicy](/graph/api/resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy?view=graph-rest-beta)<br/>[windowsDefenderApplicationControlSupplementalPolicyAssignment](/graph/api/resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment?view=graph-rest-beta)<br/>[windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](/graph/api/resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus?view=graph-rest-beta)<br/>[windowsDefenderApplicationControlSupplementalPolicyDeploymentSummary](/graph/api/resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentsummary?view=graph-rest-beta)<br/>[windowsMicrosoftEdgeApp](/graph/api/resources/intune-apps-windowsmicrosoftedgeapp?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[androidDeviceOwnerGlobalProxy](/graph/api/resources/intune-deviceconfig-androiddeviceownerglobalproxy?view=graph-rest-beta)<br/>[androidDeviceOwnerGlobalProxyAutoConfig](/graph/api/resources/intune-deviceconfig-androiddeviceownerglobalproxyautoconfig?view=graph-rest-beta)<br/>[androidDeviceOwnerGlobalProxyDirect](/graph/api/resources/intune-deviceconfig-androiddeviceownerglobalproxydirect?view=graph-rest-beta)<br/>[groupPolicyObjectFile](/graph/api/resources/intune-gpanalyticsservice-grouppolicyobjectfile?view=graph-rest-beta)<br/>[mobileAppInstallTimeSettings](/graph/api/resources/intune-shared-mobileappinstalltimesettings?view=graph-rest-beta)<br/>[scopeTagInfo](/graph/api/resources/intune-auditing-scopetaginfo?view=graph-rest-beta)<br/>[win32LobAppRestartSettings](/graph/api/resources/intune-shared-win32lobapprestartsettings?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[deviceManagementReportFileFormat](/graph/api/resources/intune-reporting-devicemanagementreportfileformat?view=graph-rest-beta)<br/>[deviceManagementReportStatus](/graph/api/resources/intune-reporting-devicemanagementreportstatus?view=graph-rest-beta)<br/>[deviceManagementScheduledReportRecurrence](/graph/api/resources/intune-reporting-devicemanagementscheduledreportrecurrence?view=graph-rest-beta)<br/>[diskType](/graph/api/resources/intune-devices-disktype?view=graph-rest-beta)<br/>[groupPolicyMigrationReadiness](/graph/api/resources/intune-gpanalyticsservice-grouppolicymigrationreadiness?view=graph-rest-beta)<br/>[groupPolicySettingScope](/graph/api/resources/intune-gpanalyticsservice-grouppolicysettingscope?view=graph-rest-beta)<br/>[groupPolicySettingType](/graph/api/resources/intune-gpanalyticsservice-grouppolicysettingtype?view=graph-rest-beta)<br/>[managedAppDeviceThreatLevel](/graph/api/resources/intune-mam-managedappdevicethreatlevel?view=graph-rest-beta)<br/>[microsoftEdgeChannel](/graph/api/resources/intune-apps-microsoftedgechannel?view=graph-rest-beta)<br/>[remediationState](/graph/api/resources/intune-devices-remediationstate?view=graph-rest-beta)<br/>[userExperienceAnalyticsSummarizedBy](/graph/api/resources/intune-devices-userexperienceanalyticssummarizedby?view=graph-rest-beta)<br/>[win32LobAppRestartBehavior](/graph/api/resources/intune-apps-win32lobapprestartbehavior?view=graph-rest-beta)<br/>[windowsDefenderApplicationControlSupplementalPolicyStatuses](/graph/api/resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicystatuses?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [approveApps](/graph/api/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-approveapps?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [executeAction](/graph/api/api/intune-devices-manageddevice-executeaction?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) collection |
|Addition|beta|Added the [assign](/graph/api/intune-devices-devicehealthscript-assign?view=graph-rest-beta) action on [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta) |
|Addition|beta|Added the [createMigrationReport](/graph/api/intune-gpanalyticsservice-grouppolicymigrationreport-createmigrationreport?view=graph-rest-beta)) action on [groupPolicyMigrationReport](/graph/api/resources/intune-gpanalyticsservice-grouppolicymigrationreport?view=graph-rest-beta) collection |
|Addition|beta|Added the [getDeviceNoncomplianceReports](/graph/api/intune-reporting-devicemanagementreports-getdevicenoncompliancereports?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [getPolicyNoncomplianceReports](/graph/api/intune-reporting-devicemanagementreports-getpolicynoncompliancereports?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [getDeviceNonComplianceReport](/graph/api/intune-reporting-devicemanagementreports-getdevicenoncompliancereport?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [getPolicyNonComplianceReport](/graph/api/intune-reporting-devicemanagementreports-getpolicynoncompliancereport?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [getHistoricalReport](/graph/api/intune-reporting-devicemanagementreports-gethistoricalreport?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [getCachedReport](/graph/api/intune-reporting-devicemanagementreports-getcachedreport?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [assign](/graph/api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy-assign?view=graph-rest-beta) action on [windowsDefenderApplicationControlSupplementalPolicy](/graph/api/resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy?view=graph-rest-beta) |
|Addition|beta|Added the [summarizeDevicePerformanceDevices](/graph/api/intune-devices-userexperienceanalyticsdeviceperformance-summarizedeviceperformancedevices?view=graph-rest-beta) function on [userExperienceAnalyticsDevicePerformance](/graph/api/resources/intune-devices-userexperienceanalyticsdeviceperformance?view=graph-rest-beta) collection |
|Addition|beta|Added the [summarizeDeviceRegressionPerformance](/graph/api/intune-devices-userexperienceanalyticsregressionsummary-summarizedeviceregressionperformance?view=graph-rest-beta) function on [userExperienceAnalyticsRegressionSummary](/graph/api/resources/intune-devices-userexperienceanalyticsregressionsummary?view=graph-rest-beta) |
|Deletion|beta|Removed the following complex types:<br/>**deviceHealthScriptComplianceRule**<br/>|
|Deletion|beta|Removed the following enum types:<br/>**deviceHealthScriptComplianceRuleOperator**<br/>**deviceHealthScriptDetectionType**<br/>|
|Deletion|beta|Removed the [executeAction](/graph/api/intune-devices-manageddevice-executeaction?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) collection |
|Addition|beta|Added the **globalProxy** property to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **workProfileBlockPersonalAppInstallsFromUnknownSources** property to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumRequiredCompanyPortalVersion**, **minimumWarningCompanyPortalVersion** and **minimumWipeCompanyPortalVersion** properties to the [androidManagedAppProtection](/graph/api/resources/intune-shared-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **workProfileBlockPersonalAppInstallsFromUnknownSources** property to the [androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **remediation** property to the [appVulnerabilityTask](/graph/api/resources/intune-partnerintegration-appvulnerabilitytask?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumRequiredCompanyPortalVersion**, **minimumWarningCompanyPortalVersion** and **minimumWipeCompanyPortalVersion** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **configurationWebUrl** property to the [depEnrollmentBaseProfile](/graph/api/resources/intune-enrollment-depenrollmentbaseprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **source** and **sourceId** properties to the [deviceCompliancePolicyAssignment](/graph/api/resources/intune-deviceconfig-devicecompliancepolicyassignment?view=graph-rest-beta) entity|
|Addition|beta|Added the **publisher**, **version**, **displayName**, **description**, **detectionScriptContent**, **createdDateTime**, **lastModifiedDateTime**, **runAsAccount**, **enforceSignatureCheck**, **runAs32Bit** and **roleScopeTagIds** properties to the [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **complianceRule** property from the [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta) entity|
|Addition|beta|Added the **groupPolicyObjectFiles** property to the [deviceManagement](/graph/api/resources/intune-gpanalyticsservice-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **runSchedule** property from the [deviceManagementScript](/graph/api/resources/intune-shared-devicemanagementscript?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **lastSyncDateTime**, **preRemediationDetectionScriptOutput**, **remediationScriptError** and **postRemediationDetectionScriptOutput** properties from the [deviceManagementScriptDeviceState](/graph/api/resources/intune-devices-devicemanagementscriptdevicestate?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **compliantDeviceCount**, **notCompliantDeviceCount** and **pendingDeviceCount** properties from the [deviceManagementScriptRunSummary](/graph/api/resources/intune-devices-devicemanagementscriptrunsummary?view=graph-rest-beta) entity|
|Addition|beta|Added the **platformType** property to the [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) entity|
|Addition|beta|Added the **source** and **sourceId** properties to the [enrollmentConfigurationAssignment](/graph/api/resources/intune-onboarding-enrollmentconfigurationassignment?view=graph-rest-beta) entity|
|Addition|beta|Added the **mdmAppId** and **securityIdentifier** properties to the [group](/graph/api/resources/group?view=graph-rest-beta) entity|
|Addition|beta|Added the **isDeleted** property to the [importedAppleDeviceIdentity](/graph/api/resources/intune-enrollment-importedappledeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **filesNetworkDriveAccessBlocked**, **filesUsbDriveAccessBlocked** and **wifiPowerOnForced** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **wiFiBlockPowerModification** property from the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **previousPinBlockCount**, **maximumAllowedDeviceThreatLevel** and **mobileThreatDefenseRemediationAction** properties to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **source** and **sourceId** properties to the [mobileAppAssignment](/graph/api/resources/intune-apps-mobileappassignment?view=graph-rest-beta) entity|
|Addition|beta|Added the **androidMobileApplicationManagementEnabled** and **iosMobileApplicationManagementEnabled** properties to the [mobileThreatDefenseConnector](/graph/api/resources/intune-onboarding-mobilethreatdefenseconnector?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity:<br/>**energySaverOnBatteryThresholdPercentage** from required to optional<br/>**energySaverPluggedInThresholdPercentage** from required to optional<br/>|
|Addition|beta|Added the **source** and **sourceId** properties to the [windowsAutopilotDeploymentProfileAssignment](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofileassignment?view=graph-rest-beta) entity|
|Addition|beta|Added the [filesFolder](/graph/api/channel-get-filesfolder?view=graph-rest-beta) navigation property to the [channel](/graph/api/resources/channel?view=graph-rest-beta) entity|
|Addition|beta|Added the **wdacSupplementalPolicies** navigation property to the [deviceAppManagement](/graph/api/resources/intune-unlock-deviceappmanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignments**, **runSummary** and **deviceRunStates** navigation properties to the [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceHealthScripts**, **userExperienceAnalyticsDevicePerformance**, **userExperienceAnalyticsRegressionSummary**, **userExperienceAnalyticsDeviceStartupHistory**, **groupPolicyMigrationReports** and **reports** navigation properties to the [deviceManagement](/graph/api/resources/intune-devices-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **singleSignOnExtensionPkinitCertificate** navigation property to the [
