---
title: "Changelog for Microsoft Graph"
description: "This changelog covers what's changed in Microsoft Graph, including the v1.0 and beta endpoint Microsoft Graph APIs."
author: "MSGraphDocsVteam"
localization_priority: Priority
---

# Changelog for Microsoft Graph

This changelog covers specific API-level changes in Microsoft Graph v1.0 and beta.

For a summary of the value of these API changes, as well as recent tools, components, guidance, and tutorial additions, see [What's new in Microsoft Graph](whats-new-overview.md).

## October 2020

### Applications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the **AlternateIdLogin** field to the [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-1.0) policy definition.|
| Addition | beta | Added the **AlternateIdLogin** field to the [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-beta) policy definition.|
| Addition | beta | Added the [fido2AuthenticationMethodConfiguration](/graph/api/resources/fido2AuthenticationMethodConfiguration?view=graph-rest-beta) entity for managing users' FIDO2 Security Keys authentication method policy. |
| Addition | beta | Added the [passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](/graph/api/resources/passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration?view=graph-rest-beta) entity for managing users' Microsoft Authenticator Passwordless Phone Sign-in authentication method policy. |
| Addition | beta | Added the [emailauthenticationmethod](/graph/api/resources/emailauthenticationmethod?view=graph-rest-beta) entity for managing users' email authentication method. |
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
| Addition | v1.0 | Added [List members in a channel](/graph/api/channel-list-members), [Add a member to a channel](/graph/api/channel-add-members),  [Update the role of a member in a channel](/graph/api/channel-update-members), [Delete a member from a channel](/graph/api/channel-delete-members), updated [channel](/graph/api/resources/channel) resource file.|
|Addition|beta|Added support for **completeMigration** to the [channel](/graph/api/resources/channel?view=graph-rest-beta) and [team](/graph/api/resources/team?view=graph-rest-beta) resources.
|Addition|beta|Added the **teamCreationMode** property to the  [team](/graph/api/resources/team?view=graph-rest-beta) resource.|
|Addition|beta|Added the **channelCreationMode** property to the [channel](/graph/api/resources/channel?view=graph-rest-beta) resource.|

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
|Addition|beta|Added the **singleSignOnExtensionPkinitCertificate** navigation property to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **singleSignOnExtensionPkinitCertificate** navigation property to the [macOSDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-macosdevicefeaturesconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **scopeTags** property to the [auditActor](/graph/api/resources/intune-auditing-auditactor?view=graph-rest-beta) complex type|
|Addition|beta|Added the **androidDedicatedCount**, **androidDeviceAdminCount**, **androidFullyManagedCount** and **androidWorkProfileCount** properties to the [deviceOperatingSystemSummary](/graph/api/resources/intune-devices-deviceoperatingsystemsummary?view=graph-rest-beta) complex type|
|Addition|beta|Added the **restartSettings** and **installTimeSettings** properties to the [win32LobAppAssignmentSettings](/graph/api/resources/intune-shared-win32lobappassignmentsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **deviceRestartBehavior** property to the [win32LobAppInstallExperience](/graph/api/resources/intune-apps-win32lobappinstallexperience?view=graph-rest-beta) complex type|
|Addition|beta|Added the **customPassword** member to the [androidDeviceOwnerRequiredPasswordType](/graph/api/resources/intune-deviceconfig-androiddeviceownerrequiredpasswordtype?view=graph-rest-beta) enum type|
|Deletion|beta|Removed the **appleUserEnrollmentWithAzureAD** member from the [deviceEnrollmentType](/graph/api/resources/intune-shared-deviceenrollmenttype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **microsoftEdgeSecurityBaseline** and **microsoftOffice365ProPlusSecurityBaseline** members to the [deviceManagementTemplateType](/graph/api/resources/intune-deviceintent-devicemanagementtemplatetype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **setDeviceName** member to the [managedDeviceRemoteAction](/graph/api/resources/intune-devices-manageddeviceremoteaction?view=graph-rest-beta) enum type|
|Addition|beta|Added the **scriptError** and **notApplicable** members to the [runState](/graph/api/resources/intune-shared-runstate?view=graph-rest-beta) enum type|
|Deletion|beta|Removed the **error** member from the [runState](/graph/api/resources/intune-shared-runstate?view=graph-rest-beta) enum type|
|Addition|beta|Added the **userExperienceAnalytics** member to the [windowsHealthMonitoringScope](/graph/api/resources/intune-deviceconfig-windowshealthmonitoringscope?view=graph-rest-beta) enum type|

### Education

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Deletion | beta | Removed [previously announced](https://developer.microsoft.com/onenote/blogs/breaking-change-education-api-updates-in-microsoft-graph-beta) deprecated properties **grade** and **feedback** from [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta). Access grades and feedback only through [educationOutcome](/graph/api/educationsubmission-list-outcomes?view=graph-rest-beta).|

### Groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          |Added the **hideFromAddressLists** and **hideFromOutlookClients** properties to the [group](/graph/api/resources/group?view=graph-rest-beta) entity, to control the visibility of a group in the Outlook user interface.|
| Addition | Beta | Added the [assignLicense](/graph/api/group-assignlicense?view=graph-rest-beta) method which can be used to add or remove licenses on users in a [group](/graph/api/resources/group?view=graph-rest-beta). |

### Identity and access

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | Beta | Added new entities: <br/>[authenticationDetail](/graph/api/resources/authenticationDetail?view=graph-rest-beta)<br/>[keyValue](/graph/api/resources/keyValue?view=graph-rest-beta)<br/>[networkLocationDetail](/graph/api/resources/networkLocationDetail?view=graph-rest-beta)|
| Addition | Beta | Added the **alternateSignInName**, **ServicePrincipalId**, **ServicePrincipalName**, and **authenticationProcessingDetails** properties to the [signIn](/graph/api/resources/signin?view=graph-rest-beta) resource. |
| Deletion | Beta | Moved the reference to [mfaDetail](/graph/api/resources/mfadetail?view=graph-rest-beta) from [signIn](/graph/api/resources/signin?view=graph-rest-beta) to [authenticationDetail](/graph/api/resources/authenticationDetail?view=graph-rest-beta). |
| Addition | Beta | Added the **signInActivity** property to the [user](/graph/api/resources/user?view=graph-rest-beta) resource. |
| Addition | Beta | Added a new entity type: [Trustframeworkkeyset](/graph/api/resources/trustframeworkkeyset?view=graph-rest-beta) |
| Addition | Beta | Added new entity type: [Identityuserflow](/graph/api/resources/identityuserflow?view=graph-rest-beta) |
| Addition | Beta | Added new [entitlement management](/graph/api/resources/entitlementmanagement-root?view=graph-rest-beta) resources. |
| Addition | Beta | Added [removePassword](/graph/api/application-removepassword?view=graph-rest-beta) method to the [application](/graph/resources/application?view=graph-rest-beta) resource. |
| Addition | Beta | Added **addIns** property to the [application](/graph/resources/application?view=graph-rest-beta). |
| Addition | Beta | Added [addPassword](/graph/api/serviceprincipal-addpassword?view=graph-rest-beta) and [removePassword](/graph/api/serviceprincipal-removepassword?view=graph-rest-beta) methods to the [serviceprincipal](/graph/resources/serviceprincipal?view=graph-rest-beta) resource. |
| Addition | Beta and v1.0 | Added the **onPremisesDomainName**, **onPremisesNetBiosName**, and **onPremisesSamAccountName** properties to the [group](/graph/api/resources/group?view=graph-rest-1.0) entity. |
| Addition | Beta and v1.0 | Added the **securityIdentifier** property to the [group](/graph/api/resources/group?view=graph-rest-1.0) resource. |
| Addition | Beta and v1.0 | Added the **mdmAppId** property to the [device](/graph/api/resources/group?view=graph-rest-1.0) resource. |
| Addition | Beta and v1.0 | Added the **manufacturer** and **model** properties to the [device](/graph/api/resources/device?view=graph-rest-1.0) entity. |
| Addition | v1.0 | Added new [orgContact](/graph/api/resources/orgcontact?view=graph-rest-1.0) resource. These contacts are managed by the organization, and are different from [personal contacts](outlook-contacts-concept-overview.md)|
| Addition | v1.0 | Added new [physicalOfficeAddress](/graph/api/resources/physicalOfficeAddress?view=graph-rest-1.0) resource. |
| Addition | v1.0 | Added new entity [certificateBasedAuthConfiguration](/graph/api/resources/certificatebasedauthconfiguration?view=graph-rest-1.0). |
| Addition | v1.0 | Added new complex type [certificateAuthority](/graph/api/resources/certificateauthority?view=graph-rest-1.0). |
| Addition | v1.0 | Added new relationship for **certificateBasedAuthConfiguration** on the [organization](/graph/api/resources/organization?view=graph-rest-1.0) resource. This enables [certificate-based authentication in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started).|

### Identity and access | Identity and sign-in

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | Beta | Added new entity types:<br/>[conditionalAccessPolicy](/graph/api/resources/conditionalAccessPolicy)<br/>
| Addition | Beta | Added new complex types:<br/>[conditionalAccessSessionControl](/graph/api/resources/conditionalAccessSessionControl)<br/>[applicationEnforcedRestrictionsSessionControl](/graph/api/resources/applicationEnforcedRestrictionsSessionControl)<br/>[cloudAppSecuritySessionControl](/graph/api/resources/cloudAppSecuritySessionControl)<br/>[signInFrequencySessionControl](/graph/api/resources/signInFrequencySessionControl)<br/>[persistentBrowserSessionControl](/graph/api/resources/persistentBrowserSessionControl)<br/>[conditionalAccessSessionControls](/graph/api/resources/conditionalAccessSessionControls)<br/>[conditionalAccessApplications](/graph/api/resources/conditionalAccessApplications)<br/>[conditionalAccessUsers](/graph/api/resources/conditionalAccessUsers)<br/>[conditionalAccessPlatforms](/graph/api/resources/conditionalAccessPlatforms)<br/>[conditionalAccessLocations](/graph/api/resources/conditionalAccessLocations)<br/>[conditionalAccessDeviceStates](/graph/api/resources/conditionalAccessDeviceStates)<br/>[conditionalAccessConditionSet](/graph/api/resources/conditionalAccessConditionSet)<br/>[conditionalAccessGrantControls](/graph/api/resources/conditionalAccessGrantControls)<br/>|
| Addition | Beta | Added the [namedLocation API](/graph/api/resources/namedLocation?view=graph-rest-beta), which represents named locations in Azure AD conditional access. |

### Security

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | beta          | Changed **detectedSensitiveContent** entity name to [classificationResult](/graph/api/resources/classificationresult?view=graph-rest-beta).  |
| Deletion        | beta          | Removed **displayName**, **uniqueCount**, and **matches** properties from [classificationResult](/graph/api/resources/classificationresult?view=graph-rest-beta).  |
| Change          | beta          | Changed **id** to **sensitiveTypeId** properties of [classificationResult](/graph/api/resources/classificationresult?view=graph-rest-beta).   |
| Change          | beta          | Changed **confidence** to **confidenceLevel** property of [classificationResult](/graph/api/resources/classificationresult?view=graph-rest-beta).   |
| Addition        | beta          | Added **count** property to [classificationResult](/graph/api/resources/classificationresult?view=graph-rest-beta)/.  |
| Deletion        | beta          | Removed **actionSource** property from [labelingOptions](/graph/api/resources/labelingoptions?view=graph-rest-beta). |
| Deletion        | beta          | Removed **auditInfo** entity. |
| Change          | beta          | Changed **protectByDoNotForwardAction** to [protectDoNotForwardAction](/graph/api/resources/protectdonotforwardaction?view=graph-rest-beta). |
| Addition        | beta          | Added **alignment** property to [addContentHeaderAction](/graph/api/resources/addcontentheaderaction?view=graph-rest-beta). |
| Change          | beta          | Changed **labelId** property to **label** in [recommendLabelAction](/graph/api/resources/recommendedlabelaction?view=graph-rest-beta). |
| Change          | beta          | Changed **classificationIds** property to **responsibleSensitivityTypeIds** in [recommendLabelAction](/graph/api/resources/recommendedlabelaction?view=graph-rest-beta). |
| Addition        | beta          | Added **actionSource** property to [recommendLabelAction](/graph/api/resources/recommendedlabelaction?view=graph-rest-beta). |
| Change          | beta          | Changed **labelId** property to **label** in [applyLabelAction](/graph/api/resources/applylabelaction?view=graph-rest-beta). |
| Change          | beta          | Changed **classificationIds** property to **responsibleSensitivityTypeIds** in [applyLabelAction](/graph/api/resources/applylabelaction?view=graph-rest-beta). |
| Addition        | beta          | Added **actionSource** property to [applyLabelAction](/graph/api/resources/applylabelaction?view=graph-rest-beta). |
| Change          | beta          | Change [contentFormat](/graph/api/resources/enums?view=graph-rest-beta)) enum value **file** to **default**. |
| Deletion        | beta          | Removed **mandatory** value from [actionSource](/graph/api/resources/enums?view=graph-rest-beta)) enum. |
| Change          | beta          | Removed [actionSource](/graph/api/resources/enums?view=graph-rest-beta)) enum value **policyDefault** to **default**. |
| Deletion        | beta          | Removed **auditMetadataKey**. |
| Change          | beta          | Change **applyLabel** API to [evaluateApplication](/graph/api/informationprotectionlabel-evaluateapplication?view=graph-rest-beta). |
| Change          | beta          | Change **applyLabelFromClassification** API to [evaluateClassificationResults](/graph/api/informationprotectionlabel-evaluateclassificationresults?view=graph-rest-beta). |
| Change          | beta          | Change **removeLabel** API to [evaluateRemoval](/graph/api/informationprotectionlabel-evaluateremoval?view=graph-rest-beta). |
| Deletion        | beta          | Removed **auditInfo** from [extractLabel](/graph/api/informationprotectionlabel-extractlabel?view=graph-rest-beta). |

### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | [Adding file attachments up to 150MB](outlook-large-attachments.md) to a [message](/graph/api/resources/message?view=graph-rest-beta) instance. |
| Addition        | Beta          | The [attachmentItem](/graph/api/resources/attachmentitem?view=graph-rest-beta) complex type, [createUploadSession](/graph/api/attachment-createuploadsession?view=graph-rest-beta) action for the [attachment](/graph/api/resources/attachment?view=graph-rest-beta) entity, and the **attachmentType** enumeration. |
| Changed         | Beta          | Extended the existing [uploadSession](/graph/api/resources/uploadsession?view=graph-rest-beta) entity that has been used by [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) to apply to **attachment** as well. |

### Notifications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta            |Added the [Create and send notifications](/graph/api/user-post-notifications?view=graph-rest-beta) API to enable targeting users without managing the on-behalf-of tokens. |
| Addition        | Beta          | Introduced the **targetPolicy** property on the [notification](/graph/api/resources/projectrome-notification?view=graph-rest-beta) resource to enable web endpoints to be targeted via webpush. |
| Addition        | Beta            |  Added the **fallbackPolicy** property on the [notification](/graph/api/resources/projectrome-notification?view=graph-rest-beta) resource to enable guaranteed delivery on iOS for high-priority notifications. |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the [Get team photo](/graph/api/team-get-photo?view=graph-rest-beta) and [Update team photo](/graph/api/team-update-photo?view=graph-rest-beta) methods. |
| Addition | Beta | [Reading images in messages](/graph/api/chatmessagehostedcontent-get?view=graph-rest-beta) now support application permissions. |

### Users
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added the new **lastPasswordChangeDateTime** property to the [user](/graph/api/resources/user?view=graph-rest-1.0) resource. |
| Addition | beta | Added the [user: reprocessLicenseAssignment API](/graph/api-reference/beta/api/user-reprocesslicense?view=graph-rest-beta), which can be used to reprocess all group-based license assignments for the [user](/graph/api/resources/user?view=graph-rest-beta). |
| Addition        | V1.0        | The **dateFormat** and **timeFormat** properties to the [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-1.0) resource. The properties represent the user's preferred date and time formats.|

## September 2019

### Calendar, mail, groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | Added the capability to [get the raw contents of a file or item attachment](/graph/api/attachment-get?view=graph-rest-1.0#get-the-raw-contents-of-a-file-or-item-attachment) to an event, message, or group post. |

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androiddeviceownerscepcertificateprofile)<br/>[androidManagedStoreWebApp](/graph/api/resources/intune-apps-androidmanagedstorewebapp)<br/>[appleEnrollmentProfileAssignment](/graph/api/resources/intune-enrollment-appleenrollmentprofileassignment)<br/>[appleUserInitiatedEnrollmentProfile](/graph/api/resources/intune-enrollment-appleuserinitiatedenrollmentprofile)<br/>[deviceCompliancePolicyPolicySetItem](/graph/api/resources/intune-policyset-devicecompliancepolicypolicysetitem)<br/>[deviceConfigurationPolicySetItem](/graph/api/resources/intune-policyset-deviceconfigurationpolicysetitem)<br/>[deviceManagementAutopilotEvent](/graph/api/resources/intune-troubleshooting-devicemanagementautopilotevent)<br/>[deviceManagementScriptPolicySetItem](/graph/api/resources/intune-policyset-devicemanagementscriptpolicysetitem)<br/>[enrollmentRestrictionsConfigurationPolicySetItem](/graph/api/resources/intune-policyset-enrollmentrestrictionsconfigurationpolicysetitem)<br/>[iosLobAppProvisioningConfigurationPolicySetItem](/graph/api/resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem)<br/>[macManagedAppProtection](/graph/api/resources/intune-policyset-macmanagedappprotection)<br/>[managedAppProtectionPolicySetItem](/graph/api/resources/intune-policyset-managedappprotectionpolicysetitem)<br/>[managedDeviceMobileAppConfigurationPolicySetItem](/graph/api/resources/intune-policyset-manageddevicemobileappconfigurationpolicysetitem)<br/>[mdmWindowsInformationProtectionPolicyPolicySetItem](/graph/api/resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem)<br/>[mobileAppPolicySetItem](/graph/api/resources/intune-policyset-mobileapppolicysetitem)<br/>[policySet](/graph/api/resources/intune-policyset-policyset)<br/>[policySetAssignment](/graph/api/resources/intune-policyset-policysetassignment)<br/>[policySetItem](/graph/api/resources/intune-policyset-policysetitem)<br/>[targetedManagedAppConfigurationPolicySetItem](/graph/api/resources/intune-policyset-targetedmanagedappconfigurationpolicysetitem)<br/>[windows10EnrollmentCompletionPageConfigurationPolicySetItem](/graph/api/resources/intune-policyset-windows10enrollmentcompletionpageconfigurationpolicysetitem)<br/>[windowsAutopilotDeploymentProfilePolicySetItem](/graph/api/resources/intune-policyset-windowsautopilotdeploymentprofilepolicysetitem)<br/>[windowsFeatureUpdateProfile](/graph/api/resources/intune-softwareupdate-windowsfeatureupdateprofile)<br/>[windowsFeatureUpdateProfileAssignment](/graph/api/resources/intune-softwareupdate-windowsfeatureupdateprofileassignment)<br/>|
|Addition|beta|Added new complex types:<br/>[appleOwnerTypeEnrollmentType](/graph/api/resources/intune-enrollment-appleownertypeenrollmenttype)<br/>[configurationManagerAction](/graph/api/resources/intune-devices-configurationmanageraction)<br/>[credentialSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-credentialsinglesignonextension)<br/>[hasPayloadLinkResultItem](/graph/api/resources/intune-policyset-haspayloadlinkresultitem)<br/>[iosKerberosSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-ioskerberossinglesignonextension)<br/>[kerberosSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-kerberossinglesignonextension)<br/>[keyBooleanValuePair](/graph/api/resources/intune-deviceconfig-keybooleanvaluepair)<br/>[keyIntegerValuePair](/graph/api/resources/intune-deviceconfig-keyintegervaluepair)<br/>[keyRealValuePair](/graph/api/resources/intune-deviceconfig-keyrealvaluepair)<br/>[keyStringValuePair](/graph/api/resources/intune-deviceconfig-keystringvaluepair)<br/>[keyTypedValuePair](/graph/api/resources/intune-deviceconfig-keytypedvaluepair)<br/>[macOSKerberosSingleSignOnExtension](/graph/api/resources/intune-deviceconfig-macoskerberossinglesignonextension)<br/>[singleSignOnExtension](/graph/api/resources/intune-deviceconfig-singlesignonextension)<br/>|
|Addition|beta|Added new enum types:<br/>[appleUserInitiatedEnrollmentType](/graph/api/resources/intune-enrollment-appleuserinitiatedenrollmenttype)<br/>[bitLockerRecoveryPasswordRotationType](/graph/api/resources/intune-deviceconfig-bitlockerrecoverypasswordrotationtype)<br/>[configurationManagerActionType](/graph/api/resources/intune-devices-configurationmanageractiontype)<br/>[deviceAndAppManagementAssignmentSource](/graph/api/resources/intune-shared-deviceandappmanagementassignmentsource)<br/>[errorCode](/graph/api/resources/intune-policyset-errorcode)<br/>[logLevel](/graph/api/resources/intune-troubleshooting-loglevel)<br/>[policySetStatus](/graph/api/resources/intune-policyset-policysetstatus)<br/>[userExperienceAnalyticsHealthState](/graph/api/resources/intune-devices-userexperienceanalyticshealthstate)<br/>[userExperienceAnalyticsInsightSeverity](/graph/api/resources/intune-devices-userexperienceanalyticsinsightseverity)<br/>[windowsAutopilotDeploymentState](/graph/api/resources/intune-troubleshooting-windowsautopilotdeploymentstate)<br/>[windowsAutopilotEnrollmentType](/graph/api/resources/intune-troubleshooting-windowsautopilotenrollmenttype)<br/>|
|Addition|beta|Added the [update](/graph/api/intune-policyset-policyset-update.md) action on [policySet](/graph/api/resources/intune-policyset-policyset) |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-mobileapp-haspayloadlinks.md) action on [mobileApp](/graph/api/resources/intune-apps-mobileapp) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-targetedmanagedappconfiguration-haspayloadlinks.md) action on [targetedManagedAppConfiguration](/graph/api/resources/intune-mam-targetedmanagedappconfiguration) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-ioslobappprovisioningconfiguration-haspayloadlinks.md) action on [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-androidmanagedappprotection-haspayloadlinks.md) action on [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-macmanagedappprotection-haspayloadlinks.md) action on [macManagedAppProtection](/graph/api/resources/intune-policyset-macmanagedappprotection) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-mdmwindowsinformationprotectionpolicy-haspayloadlinks.md) action on [mdmWindowsInformationProtectionPolicy](/graph/api/resources/intune-mam-mdmwindowsinformationprotectionpolicy) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-ioslobappprovisioningconfiguration-haspayloadlinks.md) action on [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration) collection |
|Addition|beta|Added the [getPolicySets](/graph/api/intune-policyset-policyset-getpolicysets.md) action on [policySet](/graph/api/resources/intune-policyset-policyset) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-devicemanagementscript-haspayloadlinks.md) action on [deviceManagementScript](/graph/api/resources/intune-devices-devicemanagementscript) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-deviceconfiguration-haspayloadlinks.md) action on [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-devicecompliancepolicy-haspayloadlinks.md) action on [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-windowsautopilotdeploymentprofile-haspayloadlinks.md) action on [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile) collection |
|Addition|beta|Added the [hasPayloadLinks](/graph/api/intune-shared-deviceenrollmentconfiguration-haspayloadlinks.md) action on [deviceEnrollmentConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentconfiguration) collection |
|Addition|beta|Added the [triggerConfigurationManagerAction](/graph/api/intune-devices-manageddevice-triggerconfigurationmanageraction.md) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice) |
|Addition|beta|Added the [setPriority](/graph/api/intune-enrollment-appleuserinitiatedenrollmentprofile-setpriority.md) action on [appleUserInitiatedEnrollmentProfile](/graph/api/resources/intune-enrollment-appleuserinitiatedenrollmentprofile) |
|Addition|beta|Added the [assign](/graph/api/intune-softwareupdate-windowsfeatureupdateprofile-assign.md) action on [windowsFeatureUpdateProfile](/graph/api/resources/intune-softwareupdate-windowsfeatureupdateprofile) |
|Addition|beta|Added the [getExpiringVppTokenCount](/graph/api/intune-enrollment-deponboardingsetting-getexpiringvpptokencount?view=graph-rest-beta) function on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting) collection |
|Addition|beta|Added the **deviceThreatProtectionEnabled**, **deviceThreatProtectionRequiredSecurityLevel**, **securityRequireSafetyNetAttestationBasicIntegrity** and **securityRequireSafetyNetAttestationCertifiedDevice** properties to the [androidDeviceOwnerCompliancePolicy](/graph/api/resources/intune-deviceconfig-androiddeviceownercompliancepolicy) entity|
|Addition|beta|Added the **workProfileAllowWidgets** property to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration) entity|
|Addition|beta|Added the **isPrivate** and **isSystemApp** properties to the [androidManagedStoreApp](/graph/api/resources/intune-apps-androidmanagedstoreapp) entity|
|Addition|beta|Added the **workProfileAllowWidgets** property to the [androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration) entity|
|Addition|beta|Added the **screenTimeScreenDisabled** property to the [depEnrollmentBaseProfile](/graph/api/resources/intune-enrollment-depenrollmentbaseprofile) entity|
|Addition|beta|Added the **appearanceScreenDisabled**, **expressLanguageScreenDisabled**, **preferredLanguageScreenDisabled**, **deviceToDeviceMigrationDisabled** and **welcomeScreenDisabled** properties to the [depIOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depiosenrollmentprofile) entity|
|Deletion|beta|Removed the **screenTimeScreenDisabled** property from the [depIOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depiosenrollmentprofile) entity|
|Addition|beta|Added the **source** and **sourceId** properties to the [deviceConfigurationAssignment](/graph/api/resources/intune-deviceconfig-deviceconfigurationassignment) entity|
|Deletion|beta|Removed the **runRemediationScript** property from the [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript) entity|
|Addition|beta|Added the **singleSignOnExtension** property to the [iosDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-iosdevicefeaturesconfiguration) entity|
|Addition|beta|Added the **kioskModeEnableVoiceControl** and **kioskModeAllowVoiceControlModification** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration) entity|
|Addition|beta|Added the **associatedDomains** and **singleSignOnExtension** properties to the [macOSDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-macosdevicefeaturesconfiguration) entity|
|Addition|beta|Added the **source** and **sourceId** properties to the [targetedManagedAppPolicyAssignment](/graph/api/resources/intune-mam-targetedmanagedapppolicyassignment) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [termsAndConditions](/graph/api/resources/intune-companyterms-termsandconditions) entity|
|Addition|beta|Added the **isBuiltIn** and **createdDateTime** properties to the [userExperienceAnalyticsBaseline](/graph/api/resources/intune-devices-userexperienceanalyticsbaseline) entity|
|Deletion|beta|Removed the **overallScore** and **overallRegressionThreshold** properties from the [userExperienceAnalyticsBaseline](/graph/api/resources/intune-devices-userexperienceanalyticsbaseline) entity|
|Deletion|beta|Removed the **displayName** and **overallScore** properties from the [userExperienceAnalyticsCategory](/graph/api/resources/intune-devices-userexperienceanalyticscategory) entity|
|Deletion|beta|Removed the **displayName** property from the [userExperienceAnalyticsMetric](/graph/api/resources/intune-devices-userexperienceanalyticsmetric) entity|
|Deletion|beta|Removed the **overallScore**, **deviceBootPerformanceOverallScore** and **bestPracticesOverallScore** properties from the [userExperienceAnalyticsOverview](/graph/api/resources/intune-devices-userexperienceanalyticsoverview) entity|
|Addition|beta|Added the **attackSurfaceReductionRules** and **bitLockerRecoveryPasswordRotation** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration) entity|
|Addition|beta|Added the **trackInstallProgressForAutopilotOnly** and **disableUserStatusTrackingAfterFirstUser** properties to the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune-onboarding-windows10enrollmentcompletionpageconfiguration) entity|
|Addition|beta|Added the **policySets** navigation property to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement) entity|
|Addition|beta|Added the **appleUserInitiatedEnrollmentProfiles**, **autopilotEvents** and **windowsFeatureUpdateProfiles** navigation properties to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement) entity|
|Addition|beta|Added the **value** property to the [insightValueDouble](/graph/api/resources/intune-devices-insightvaluedouble) complex type|
|Addition|beta|Added the **value** property to the [insightValueInt](/graph/api/resources/intune-devices-insightvalueint) complex type|
|Addition|beta|Added the **v13_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune-apps-iosminimumoperatingsystem) complex type|
|Addition|beta|Added the **v10_14** and **v10_15** properties to the [macOSMinimumOperatingSystem](/graph/api/resources/intune-apps-macosminimumoperatingsystem) complex type|
|Addition|beta|Added the **values** and **severity** properties to the [userExperienceAnalyticsInsight](/graph/api/resources/intune-devices-userexperienceanalyticsinsight) complex type|
|Deletion|beta|Removed the **value** property from the [userExperienceAnalyticsInsight](/graph/api/resources/intune-devices-userexperienceanalyticsinsight) complex type|
|Addition|beta|Added the **appleUserEnrollment**, **appleUserEnrollmentWithServiceAccount** and **appleUserEnrollmentWithAzureAD** members to the [deviceEnrollmentType](/graph/api/resources/intune-shared-deviceenrollmenttype) enum type|
|Addition|beta|Added the **securityTemplate** member to the [deviceManagementTemplateType](/graph/api/resources/intune-deviceintent-devicemanagementtemplatetype) enum type|
|Addition|beta|Added the **rebootNow** member to the [managedDeviceRemoteAction](/graph/api/resources/intune-devices-manageddeviceremoteaction) enum type|
|Addition|beta|Added the **rotateBitLockerKeys** member to the [remoteAction](/graph/api/resources/intune-devices-remoteaction) enum type|
| Addition | Beta | Added application permissions support for write operations: DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementRBAC.ReadWrite.All, DeviceManagementServiceConfig.ReadWrite.All |
| Addition | v1.0 | Added the **v13_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune-apps-iosminimumoperatingsystem) complex type. |

### Education

| **Change type** | **Version** | **Description**                                                                                                                                                                              |
|:----------------|:------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Addition        | beta        | Added new property **closeDateTime** to [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta).                                                                |
| Change          | beta        | Changed property names **mkcd** to **projectId** and **url** to **hostWebUrl** in [educationMakeCodeResource](/graph/api/resources/educationMakeCodeResource?view=graph-rest-beta) resource. |

### Cloud communications | Online meeting

| **Change type** | **Version** | **Description**                                                                                                                                                      |
|:----------------|:------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Addition        | Beta        | Added /communications/* APIs for all calls and online meetings. The `/app` path is deprecated. Going forward, use the `/communications` path.                        |
| Removal         | Beta        | Deprecated the `/app` path.                                                                                                                                          |
| Deletion        | Beta        | Removed the properties **createdDateTime** and **lastActionDateTime** from the [commsOperation](/graph/.api/resource/commsOperation?view=graph-rest-beta) resource.  |
| Deletion        | Beta        | Removed the property **meetingType** from the [onlineMeeting](/graph/api/resources/onlineMeeting?view=graph-rest-beta) resource.                                     |
| Addition        | Beta        | Added the property **isBroadcast** to the [onlineMeeting](/graph/api/resources/onlineMeeting?view=graph-rest-beta) resource.                                         |
| Change          | Beta        | Renamed the **resource** property to **resourceUrl** on the [commsNotification](/graph/api/resources/commsNotification?view=graph-rest-beta) resource.               |
| Change          | Beta        | Changed the type of the **code** and **subCode** properties from string to Int32 on the [resultInfo](/graph/api/resources/resultInfo?view=graph-rest-beta) resource. |
| Change          | Beta        | Renamed the **subcode** property to **subCode** on the [resultInfo](/graph/api/resources/resultInfo?view=graph-rest-beta) resource.                                  |

### Files

| **Change type** | **Version** | **Description**                                                                                                                                                                                                                                                                                                               |
|:----------------|:------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Addition        | Beta        | Added the [pendingOperations](/graph/api/resources/pendingOperations?view=graph-rest-beta) and [pendingContentUpdate](/graph/api/resources/pendingContentUpdate?view=graph-rest-beta) resources. The **pendingOperations** resource applies to the [driveItem](/graph/api/resources/driveItem?view=graph-rest-beta) resource. |
| Addition        | Beta        | Added the [restore](/graph/api/driveitem-restore?view=graph-rest-beta) action to the [driveItem](/graph/api/resources/driveItem?view=graph-rest-beta) resource.                                                                                                                                                               |
| Addition        | Beta        | Added the **orientation** property to the [photo](/graph/api/resources/photo?view=graph-rest-beta) resource.                                                                                                                                                                                                                  |
| Addition        | Beta        | Added the **sha256Hash** property to the [hashes](/graph/api/resources/hashes?view=graph-rest-beta) resource.                                                                                                                                                                                                                 |

### Identity and access

| **Change type** | **Version** | **Description**                                                                                                                                                          |
|:----------------|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Addition        | Beta        | Added the [objectIdentity](/graph/api/resources/objectIdentity?view=graph-rest-beta) resource that represents an identity used to sign in to a user account.             |
| Addition        | Beta        | Added **synchronizationJobSettings** property to the [synchronizationJob](/graph/api/resources/synchronization-synchronizationjob?view=graph-rest-beta) resource.        |
| Addition        | Beta        | Added new possible values for the **reason** property in the [synchronizationQuarantine](/graph/api/resources/synchronization-quarantine?view=graph-rest-beta) resource. |
| Addition        | Beta        | Added the capability to manage password single sign on credentials on the [servicePrincipal object](/graph/api/resources/serviceprincipal?view=graph-rest-beta).         |

### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | Added the capability to [get the MIME content of a message](outlook-get-mime-message.md). |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta| Added the [primaryChannel](/graph/api/team-get-primarychannel?view=graph-rest-beta) property to the [team](/graph/api/resources/team?view=graph-rest-beta) resource.|
|Addition |beta| Added the **allowCreatePrivateChannels** property to the [teamMemberSettings](/graph/api/resources/teammembersettings?view=graph-rest-beta) resource.|

### Users

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the **identities** property to the [user](/graph/api/resources/user?view=graph-rest-beta) resource. This property represents the set of identities that this user can use to sign in with.|
| Addition        | v1.0          | Added the [translateExchangeIds](/graph/api/user-translateexchangeids?view=graph-rest-1.0) method.|
| Addition        | Beta        | The **dateFormat** and **timeFormat** properties to the [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-beta) resource. The properties represent the user's preferred date and time formats.|

## August 2019

### Devices and apps | Corporate management

| Change type | Version | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:------------|:--------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Addition    | beta    | Added new entities:<br/>[androidDeviceOwnerCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androiddeviceownercertificateprofilebase?view=graph-rest-beta)<br/>[androidDeviceOwnerEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownerenterprisewificonfiguration?view=graph-rest-beta)<br/>[androidDeviceOwnerTrustedRootCertificate](/graph/api/resources/intune-deviceconfig-androiddeviceownertrustedrootcertificate?view=graph-rest-beta)<br/>[androidDeviceOwnerVpnConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownervpnconfiguration?view=graph-rest-beta)<br/>[deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta)<br/>[userExperienceAnalyticsBaseline](/graph/api/resources/intune-devices-userexperienceanalyticsbaseline?view=graph-rest-beta)<br/>[userExperienceAnalyticsCategory](/graph/api/resources/intune-devices-userexperienceanalyticscategory?view=graph-rest-beta)<br/>[userExperienceAnalyticsMetric](/graph/api/resources/intune-devices-userexperienceanalyticsmetric?view=graph-rest-beta)<br/>[userExperienceAnalyticsOverview](/graph/api/resources/intune-devices-userexperienceanalyticsoverview?view=graph-rest-beta)<br/>[vpnConfiguration](/graph/api/resources/intune-deviceconfig-vpnconfiguration?view=graph-rest-beta)<br/> |
| Addition    | beta    | Added new complex types:<br/>[configurationManagerClientInformation](/graph/api/resources/intune-devices-configurationmanagerclientinformation?view=graph-rest-beta)<br/>[deviceHealthScriptComplianceRule](/graph/api/resources/intune-devices-devicehealthscriptcompliancerule?view=graph-rest-beta)<br/>[insightValueDouble](/graph/api/resources/intune-devices-insightvaluedouble?view=graph-rest-beta)<br/>[insightValueInt](/graph/api/resources/intune-devices-insightvalueint?view=graph-rest-beta)<br/>[userExperienceAnalyticsInsight](/graph/api/resources/intune-devices-userexperienceanalyticsinsight?view=graph-rest-beta)<br/>[userExperienceAnalyticsInsightValue](/graph/api/resources/intune-devices-userexperienceanalyticsinsightvalue?view=graph-rest-beta)<br/>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Addition    | beta    | Added new enum types:<br/>[androidDeviceOwnerVirtualHomeButtonType](/graph/api/resources/intune-deviceconfig-androiddeviceownervirtualhomebuttontype?view=graph-rest-beta)<br/>[deviceHealthScriptComplianceRuleOperator](/graph/api/resources/intune-devices-devicehealthscriptcomplianceruleoperator?view=graph-rest-beta)<br/>[deviceHealthScriptDetectionType](/graph/api/resources/intune-devices-devicehealthscriptdetectiontype?view=graph-rest-beta)<br/>[powerActionType](/graph/api/resources/intune-deviceconfig-poweractiontype?view=graph-rest-beta)<br/>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Addition    | beta    | Added the [enableAndroidDeviceAdministratorEnrollment](/graph/api/intune-deviceconfig-devicemanagement-enableandroiddeviceadministratorenrollment?view=graph-rest-beta) action on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Addition    | beta    | Added the executeAction action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) collection                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Addition    | beta    | Added the [sendCustomNotificationToCompanyPortal](/graph/api/intune-devices-manageddevice-sendcustomnotificationtocompanyportal?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Deletion    | beta    | Removed the executeAction action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) collection                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Addition    | beta    | Added the **roleScopeTagIds** property to the [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Deletion    | beta    | Removed the **scopeTags** property from the [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Addition    | beta    | Added the **kioskModeScreenSaverConfigurationEnabled**, **kioskModeScreenSaverImageUrl**, **kioskModeScreenSaverDisplayTimeInSeconds**, **kioskModeScreenSaverStartDelayInSeconds**, **kioskModeScreenSaverDetectMediaDisabled**, **kioskModeVirtualHomeButtonType**, **kioskModeFlashlightConfigurationEnabled** and **kioskModeMediaVolumeConfigurationEnabled** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Addition    | beta    | Added the **lastSyncDateTime**, **preRemediationDetectionScriptOutput**, **remediationScriptError** and **postRemediationDetectionScriptOutput** properties to the [deviceManagementScriptDeviceState](/graph/api/resources/intune-devices-devicemanagementscriptdevicestate?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Addition    | beta    | Added the **compliantDeviceCount**, **notCompliantDeviceCount** and **pendingDeviceCount** properties to the [deviceManagementScriptRunSummary](/graph/api/resources/intune-devices-devicemanagementscriptrunsummary?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Addition    | beta    | Added the **isRemoveDeviceDisabled** and **isFactoryResetDisabled** properties to the [intuneBrandingProfile](/graph/api/resources/intune-wip-intunebrandingprofile?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Addition    | beta    | Added the **continuousPathKeyboardBlocked**, **findMyDeviceInFindMyAppBlocked**, **findMyFriendsInFindMyAppBlocked**, **wiFiBlockPowerModification** and **iTunesBlocked** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Addition    | beta    | Added the **iCloudBlockActivityContinuation** property to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Addition    | beta    | Added the **configurationManagerClientInformation** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Addition    | beta    | Added the **managedDeviceId** property to the [remoteActionAudit](/graph/api/resources/intune-devices-remoteactionaudit?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Addition    | beta    | Added the **isBuiltIn** property to the [roleScopeTag](/graph/api/resources/intune-rbac-rolescopetag?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Deletion    | beta    | Removed the **userRightsRegisterProcessAsService** property from the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Addition    | beta    | Added the **energySaverOnBatteryThresholdPercentage**, **energySaverPluggedInThresholdPercentage**, **powerLidCloseActionOnBattery**, **powerLidCloseActionPluggedIn**, **powerButtonActionOnBattery**, **powerButtonActionPluggedIn**, **powerSleepButtonActionOnBattery**, **powerSleepButtonActionPluggedIn**, **powerHybridSleepOnBattery** and **powerHybridSleepPluggedIn** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Addition    | beta    | Added the **deadlineForFeatureUpdatesInDays**, **deadlineForQualityUpdatesInDays**, **deadlineGracePeriodInDays** and **postponeRebootUntilAfterDeadline** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Addition    | beta    | Added the **userExperienceAnalyticsOverview**, **userExperienceAnalyticsBaselines** and **userExperienceAnalyticsCategories** navigation properties to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Deletion    | beta    | Removed the **healthSummary** navigation property from the [windowsManagementApp](/graph/api/resources/intune-devices-windowsmanagementapp?view=graph-rest-beta) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Addition    | beta    | Added the **shareUserExperienceAnalyticsData** property to the [adminConsent](/graph/api/resources/intune-devices-adminconsent?view=graph-rest-beta) complex type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Addition    | beta    | Added the **osBuildNumber** property to the [hardwareInformation](/graph/api/resources/intune-devices-hardwareinformation?view=graph-rest-beta) complex type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Addition    | beta    | Added the **isRemoveDeviceDisabled** and **isFactoryResetDisabled** properties to the [intuneBrand](/graph/api/resources/intune-onboarding-intunebrand?view=graph-rest-beta) complex type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Addition    | beta    | Added the **uninstallOnDeviceRemoval** property to the [iosLobAppAssignmentSettings](/graph/api/resources/intune-apps-ioslobappassignmentsettings?view=graph-rest-beta) complex type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Addition    | beta    | Added the **uninstallOnDeviceRemoval** property to the [iosStoreAppAssignmentSettings](/graph/api/resources/intune-apps-iosstoreappassignmentsettings?view=graph-rest-beta) complex type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Addition    | beta    | Added the **uninstallOnDeviceRemoval** property to the [iosVppAppAssignmentSettings](/graph/api/resources/intune-apps-iosvppappassignmentsettings?view=graph-rest-beta) complex type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Addition    | beta    | Added the **customTextNotification** member to the [managedDeviceRemoteAction](/graph/api/resources/intune-devices-manageddeviceremoteaction?view=graph-rest-beta) enum type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Addition    | beta    | Added the **setDeviceName** member to the [remoteAction](/graph/api/resources/intune-devices-remoteaction?view=graph-rest-beta) enum type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Addition    | beta    | Added the **error** and **pending** members to the [runState](/graph/api/resources/intune-shared-runstate?view=graph-rest-beta) enum type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Addition    | beta    | Added the **noScheduledScan** member to the [weeklySchedule](/graph/api/resources/intune-deviceconfig-weeklyschedule?view=graph-rest-beta) enum type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Addition    | beta    | Added the **derivedCredentials** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement) entity                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |

### Education

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added new property **grade** to [educationClass](/graph/api/resources/educationClass?view=graph-rest-beta).|
| Addition | beta | Added the new [educationRubric](/graph/api/resources/educationRubric?view=graph-rest-beta) resource.|
| Addition | beta | Added APIs to manage [educationRubric](/graph/api/resources/educationRubric?view=graph-rest-beta) resources on [educationUser](/graph/api/resources/educationUser?view=graph-rest-beta) and [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta).|
| Addition | beta | Added the new [educationOutcome](/graph/api/resources/educationOutcome?view=graph-rest-beta) resource.|
| Addition | beta | Added APIs to manage [educationOutcome](/graph/api/resources/educationOutcome?view=graph-rest-beta) resources on [educationSubmission](/graph/api/resources/educationSubmission?view=graph-rest-beta).|
| Addition | beta | Added the new [educationMakeCodeResource](/graph/api/resources/educationMakeCodeResource?view=graph-rest-beta) resource.|
| Addition    | beta    | Added new property **grade** to [educationClass](/graph/api/resources/educationClass?view=graph-rest-beta). |

### Files

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the [unfollow](/graph/api/driveitem-unfollow?view=graph-rest-beta) action on [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) |

### Identity and access

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Change | Beta | Changed the [List provisioningObjectSummary](/graph/api/resources/provisioning-object-summary-list?view=graph-rest-beta) namespace.|
| Addition | Beta | Added the [roleManagement](/graph/api/resources/roleManagement?view=graph-rest-beta) resource that provides access to role definitions and role assignments surfaced from RBAC providers. |
| Addition | Beta | Added the [unifiedRoleDefinition](/graph/api/resources/unifiedRoleDefinition?view=graph-rest-beta) resource that represents a collection of permissions listing the operations that can be performed. |
| Addition | Beta | Added the [unifiedRoleAssignment](/graph/api/resources/unifiedRoleAssignment?view=graph-rest-beta) resource that grants access to resources. |
| Addition | Beta | Added these operations to support the unifiedRoleDefinition resource: <br><ul><li>[List unifiedRoleDefinitions](/graph/api/rbacapplication-list-roledefinitions?view=graph-rest-beta) - Get a list of unifiedRoleDefinition objects for the provider.</li><li>[Create unifiedRoleDefinition](/graph/api/rbacapplication-post-roledefinitions?view=graph-rest-beta) - Create a new unifiedRoleDefinition object.</li><li>[Get unifiedRoleDefinition](/graph/api/unifiedroledefinition-get?view=graph-rest-beta) - Retrieve the properties and relationships of a unified role definition object.</li><li>[Update unifiedRoleDefinition](/graph/api/unifiedroledefinition-update?view=graph-rest-beta) - Update the properties of a unifiedRoleDefinition object.</li><li>[Delete unifiedRoleDefinition](/graph/api/unifiedroledefinition-delete?view=graph-rest-beta) - Delete a unifiedRoleDefinition object.</li></ul> |
| Addition | Beta | Added these operations to support the unifiedRoleAssignment resource: <br><ul><li>[List unifiedRoleAssignments](/graph/api/rbacapplication-list-roleassignments?view=graph-rest-beta) - Get a list of unifiedRoleAssignment objects for the provider.</li><li>[Create unifiedRoleAssignment]() - Create a new unifiedRoleAssignment object.</li><li>[Get unifiedRoleAssignment](/graph/api/unifiedroleassignment-get?view=graph-rest-beta) - Retrieve the properties and relationships of a unifiedRoleAssignment object.</li><li>[Delete unifiedRoleAssignment](/graph/api/unifiedroleassignment-delete?view=graph-rest-beta) - Delete a unifiedRoleAssignment object. |
| Addition | Beta | Added the [List accessReviews](/graph/api/accessreview-list?view=graph-rest-beta) operation. |
| Addition | Beta | Added the [checkMemberObjects](/graph/api/device-checkmemberobjects?view=graph-rest-beta) operation for the [device](/graph/api/resources/device?view=graph-rest-beta) resource. |
| Addition | Beta | Added the [checkMemberObjects](/graph/api/directoryobject-checkmemberobjects?view=graph-rest-beta) operation for the [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-beta) resource. |
| Addition | Beta | Added the [checkMemberObjects](/graph/api/directoryrole-checkmemberobjects?view=graph-rest-beta) operation for the [directoryRole](/graph/api/resources/directoryrole?view=graph-rest-beta) resource. |
| Addition | Beta | Added the [checkMemberObjects](/graph/api/group-checkmemberobjects?view=graph-rest-beta) operation for the [group](/graph/api/resources/group?view=graph-rest-beta) resource. |
| Addition | Beta | Added the [checkMemberObjects](/graph/api/serviceprincipal-checkmemberobjects?view=graph-rest-beta) operation for the [servicePrincipal](/graph/api/resources/serviceprinciple?view=graph-rest-beta) resource. |
| Addition | Beta | Added the [checkMemberObjects](/graph/api/user-checkmemberobjects?view=graph-rest-beta) operation for the [user](/graph/api/resources/user?view=graph-rest-beta) resource. |
| Addition | Beta | Added delegated and application [permissions for reading organizational contacts](permissions-reference.md#organizational-contact-permissions): OrgContact.Read.All |
| Addition | beta | Added new entity [certificateBasedAuthConfiguration](/graph/api/resources/certificatebasedauthconfiguration?view=graph-rest-beta). |
| Addition | beta | Added new complex type [certificateAuthority](/graph/api/resources/certificateauthority?view=graph-rest-beta). |
| Addition | beta | Added new relationship for **certificateBasedAuthConfiguration** on the [organization](/graph/api/resources/organization?view=graph-rest-beta) resource. This enables [certificate-based authentication in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started)|

### Reports

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | v1.0  | Added the **deletedItemCount** and **deletedItemSizeInBytes** property to the [mailboxUsageDetail](/graph/api/resources/mailboxUsageDetail?view=graph-rest-beta) entity.|
| Addition        | v1.0  | Added the **groupId** property to the [office365GroupsActivityDetail](/graph/api/resources/office365GroupsActivityDetail?view=graph-rest-beta) entity.|
| Addition        | v1.0  | Added the **ownerPrincipalName** property to the [oneDriveUsageAccountDetail](/graph/api/resources/oneDriveUsageAccountDetail?view=graph-rest-beta) entity.|
| Addition        | v1.0  | Added the **ownerPrincipalName** property to the [sharePointSiteUsageDetail](/graph/api/resources/sharePointSiteUsageDetail?view=graph-rest-beta) entity.|
| Addition        | v1.0  | Added the **office365Active** and **office365Inactive** properties to the [office365ServicesUserCounts](/graph/api/resources/office365ServicesUserCounts?view=graph-rest-beta) entity.|

### People and workplace intelligence

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | Beta | Introduced the new workplace intelligence [analytics API](/graph/api/resources/useranalytics?view=graph-rest-beta) that enables you to get analytics about how users spend their time on various activities during and outside of working hours, including calls, chats (instant messages), emails, focus work, and meetings. |
| Addition | Beta | Introduced the new workplace intelligence [settings API](/graph/api/resources/settings?view=graph-rest-beta) that represents the current required settings for a user to use the [analytics API](/graph/api/resources/useranalytics?view=graph-rest-beta). |
| Addition | Beta | Introduced the new [activityStatistics](/graph/api/resources/activitystatistics?view=graph-rest-beta) resource type and the following new resource types that are derived from it: [callActivityStatistics](/graph/api/resources/callactivitystatistics?view=graph-rest-beta), [chatActivityStatistics](/graph/api/resources/chatactivitystatistics?view=graph-rest-beta),[emailActivityStatistics](/graph/api/resources/emailactivitystatistics?view=graph-rest-beta), [focusActivityStatistics](/graph/api/resources/focusactivitystatistics?view=graph-rest-beta), and [meetingActivityStatistics](/graph/api/resources/meetingactivitystatistics?view=graph-rest-beta). |

### Tasks and plans

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added the **priority** property to the [plannerTask](/graph/api/resources/plannertask?view=graph-rest-beta) entity.|

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the ability to pull incremental messages from channels with the [channel messages delta query API](/graph/api/channel-messages-delta?view=graph-rest-beta).|
| Addition | Beta | Added the ability to [add members to a private channel](/graph/api/conversationmember-add?view=graph-rest-beta). |
| Addition | Beta | Added the ability to [remove members from a private channel](/graph/api/conversationmember-delete?view=graph-rest-beta). |
| Addition | Beta | Added the ability to [update a member's role in a private channel](/graph/api/conversationmember-update?view=graph-rest-beta). |
| Addition | Beta | Added the `membershipType` property to the [channel](/graph/api/resources/channel?view=graph-rest-beta) resource to show if a particular channel is private or standard. |

## July 2019

### Calendar | Place

Debut of the places API which provides rich details for locations in apps.

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | Beta  | Added the [room list](/graph/api/resources/roomlist?view=graph-rest-beta) resource|
| Addition        | Beta  | Added the [room](/graph/api/resources/room?view=graph-rest-beta) resource|
| Addition        | Beta  | Added the [place](/graph/api/resources/place?view=graph-rest-beta) resource|
|Addition         | Beta  | Added delegated and application [permissions for the places API](permissions-reference.md#places-permissions): Place.Read.All |

### Devices and apps | Corporate management

|Change type|Version|Description|
|:----------------|:------------|:-----------------------------------------|
|Addition|beta|Added new entities:<br/>[managedAllDeviceCertificateState](/graph/api/resources/intune-deviceconfig-managedalldevicecertificatestate?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[windowsKioskForceUpdateSchedule](/graph/api/resources/intune-deviceconfig-windowskioskforceupdateschedule?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[fileVaultState](/graph/api/resources/intune-deviceconfig-filevaultstate?view=graph-rest-beta)<br/>[windowsDefenderTamperProtectionOptions](/graph/api/resources/intune-deviceconfig-windowsdefendertamperprotectionoptions?view=graph-rest-beta)<br/>|
|Addition|beta|Added the getRoleScopeTagsById action on [roleScopeTag](/graph/api/resources/intune-rbac-rolescopetag?view=graph-rest-beta) collection |
|Addition|beta|Added the [createInstance](/graph/api/intune-deviceintent-devicemanagementtemplate-createinstance?view=graph-rest-beta) action on [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) |
|Addition|beta|Added the hasCustomRoleScopeTag function on [roleScopeTag](/graph/api/resources/intune-rbac-rolescopetag?view=graph-rest-beta) collection |
|Deletion|beta|Removed the [createInstance](/graph/api/intune-deviceintent-devicemanagementtemplate-createinstance?view=graph-rest-beta) action on [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) |
|Deletion|beta|Removed the [autopilotDeviceStream](/graph/api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-autopilotdevicestream?view=graph-rest-beta) function on [importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload?view=graph-rest-beta) |
|Addition|beta|Added the **scopeTags** property to the [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **nestedSchemaItems** property to the [androidManagedStoreAppConfigurationSchema](/graph/api/resources/intune-androidforwork-androidmanagedstoreappconfigurationschema?view=graph-rest-beta) entity|
|Addition|beta|Added the **groupTag** property to the [importedWindowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **fileVaultStates** property to the [managedDeviceEncryptionState](/graph/api/resources/intune-deviceconfig-manageddeviceencryptionstate?view=graph-rest-beta) entity|
|Addition|beta|Added the **userRightsDenyLocalLogOn** and **windowsDefenderTamperProtection** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **localGuestAccountName** and **assessmentAppUserModelId** properties to the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **cacheServerHostNames**, **cacheServerForegroundDownloadFallbackToHttpDelayInSeconds** and **cacheServerBackgroundDownloadFallbackToHttpDelayInSeconds** properties to the [windowsDeliveryOptimizationConfiguration](/graph/api/resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **windowsKioskForceUpdateSchedule** property to the [windowsKioskConfiguration](/graph/api/resources/intune-deviceconfig-windowskioskconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceConfigurationsAllManagedDeviceCertificateStates** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **importedWindowsAutopilotDeviceIdentityUploads** navigation property from the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceUpdateStates** navigation property to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **index** and **parentIndex** properties to the [androidManagedStoreAppConfigurationSchemaItem](/graph/api/resources/intune-androidforwork-androidmanagedstoreappconfigurationschemaitem?view=graph-rest-beta) complex type|
|Addition|beta|Added the **androidDeviceAdministratorEnrollmentEnabled** property to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **edgeTraversal** property to the [windowsFirewallRule](/graph/api/resources/intune-deviceconfig-windowsfirewallrule?view=graph-rest-beta) complex type|
|Addition|beta|Added the **localGuestAccount** member to the [secureAssessmentAccountType](/graph/api/resources/intune-deviceconfig-secureassessmentaccounttype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **empty** and **clientCertificateSubjectName** members to the [vpnLocalIdentifier](/graph/api/resources/intune-deviceconfig-vpnlocalidentifier?view=graph-rest-beta) enum type|
|Addition|beta|Added the **revision** property to the [groupPolicyDefinitionFile](/graph/api/resources/intune-grouppolicy-grouppolicydefinitionfile?view=graph-rest-beta) entity|
|Addition|beta|Added the **valuePrefix** property to the [groupPolicyPresentationListBox](/graph/api/resources/intune-grouppolicy-grouppolicypresentationlistbox?view=graph-rest-beta) entity|

### Files

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added the **expirationDatetime** and **password** properties to the [createLink](/graph/api/driveitem-createlink?view=graph-rest-beta) action. |

### Identity and access

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | v1.0 | Added [new delegated and application permissions](/graph/permissions-reference?#organization-permissions) _Organization.Read.All_ and _Organization.ReadWrite.All_ to get and update the [organization API](/graph/api/resources/organization?view=graph-rest-1.0) resource and get the [subcribedSku](/graph/api/resources/subscribedSku?view=graph-rest-1.0) resource. |
| Addition | Beta | Added [new delegated and application permissions](/graph/permissions-reference?#organization-permissions) _Organization.Read.All_ and _Organization.ReadWrite.All_ to get and update the [organization API](/graph/api/resources/organization?view=graph-rest-beta) resource and get the [subcribedSku](/graph/api/resources/subscribedSku?view=graph-rest-beta) resource. |
| Addition | v1.0 | Added the [group:validateProperties function](/graph/api/group-validateproperties?view=graph-rest-1.0) and [directoryobject:validateProperties function](/graph/api/group-validateproperties?view=graph-rest-1.0) on [groups](/graph/api/group-delta?view=graph-rest-1.0), which validates that a Microsoft 365 group's display name or mail nickname complies with naming policies. |
| Addition | Beta |Added 'version', 'discoveryDateTime', 'discoverabilities' properties to resource type [directoryDefinition](/graph/api/resources/synchronization-directorydefinition?view=graph-rest-beta).|
| Addition | Beta |Added the [directoryDefinition: discover](/graph/api/resources/directorydefinition-discover?view=graph-rest-beta) method.|
| Addition | Beta | Added [new delegated and application permissions](/graph/permissions-reference?#organization-permissions) _AdministrativeUnit.Read.All_ and _AdministrativeUnit.ReadWrite.All_ to get and update the [administrative unit API](/graph/api/resources/administrativeunit?view=graph-rest-beta) resource. |
| Addition | v1.0 | Added [new delegated and application permissions](/graph/permissions-reference?#organization-permissions) _RoleManagement.Read.Directory_ and _RoleManagement.ReadWrite.Directory_ to get and update the [directory role API](/graph/api/resources/directoryRole?view=graph-rest-1.0) resource and get the [directory role template API](/graph/api/resources/directoryRoleTemplate?view=graph-rest-1.0) resource. |
| Addition | Beta | Added [new application permission](/graph/permissions-reference?#accessreviews-permissions) _AccessReview.ReadWrite.Membership_ to get, create, update and delete in the [access reviews API](/graph/api/resources/accessreviews-root?view=graph-rest-beta). |
| Addition | Beta | Added new resource type [**featureRolloutPolicy**](/graph/api/resources/featureRolloutPolicy?view=graph-rest-beta) to the [directory](/graph/api/resources/directory?view=graph-rest-beta) resource. Feature rollout policy helps tenant administrators to pilot features to specific groups before enabling them for entire organization.|


### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added support for the Mail.ReadBasic.All application permission in mailFolder API: [list mailfolders](/graph/api/user-list-mailfolders?view=graph-rest-beta), [get a mailfolder](/graph/api/mailfolder-get?view=graph-rest-beta), [list child folders](/graph/api/mailfolder-list-childfolders?view=graph-rest-beta) and [list messages in a mail folder](/graph/api/mailfolder-list-childfolders?view=graph-rest-beta). Also added Mail.ReadBasic.All support in [delta query for message](/graph/api/message-delta?view=graph-rest-beta) and [delta query for mailFolder](/graph/api/mailfolder-delta?view=graph-rest-beta).|

### Sites

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added the **subscriptions** navigation property to the [list](/graph/api/resources/list?view=graph-rest-beta) entity. |

### Reports

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | Beta  | Added **deletedItemCount** property to the [mailboxUsageDetail](/graph/api/resources/mailboxUsageDetail?view=graph-rest-beta) entity.|
| Addition        | Beta  | Added **deletedItemSizeInBytes** property to the [mailboxUsageDetail](/graph/api/resources/mailboxUsageDetail?view=graph-rest-beta) entity.|
| Addition        | Beta  | Added **groupId** property to the [office365GroupsActivityDetail](/graph/api/resources/office365GroupsActivityDetail?view=graph-rest-beta) entity.|

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added support for application permissions to [List channel messages](/graph/api/channel-list-messages?view=graph-rest-beta), [Get channel message](/graph/api/channel-get-message?view=graph-rest-beta), [List replies to a message](/graph/api/channel-list-messagereplies?view=graph-rest-beta), and [Get a reply to a message](/graph/api/channel-get-messagereply?view=graph-rest-beta). |
| Addition | beta | Added support for application permissions to [List messages in a chat](/graph/api/chatmessage-list?view=graph-rest-beta) and [Get message in chat](/graph/api/chatmessage-get?view=graph-rest-beta). |
| Addition | beta | Added the **installedApps** property to the [chat](/graph/api/resources/chat?view=graph-rest-beta) resource.|
| Addition | beta | Added navigation binding for **chats** property of the [user](/graph/api/resources/user?view=graph-rest-beta) resource.|
| Addition | beta | Added the [teamwork](/graph/api/resources/teamwork?view=graph-rest-beta) resource. |
| Addition | beta | Added the [userTeamwork](/graph/api/resources/userteamwork?view=graph-rest-beta) resource. |
| Addition | beta | Added new methods to the [user](/graph/api/resources/user?view=graph-rest-beta) resource enabling the following methods with personal apps for users: <br>[List apps installed for user](/graph/api/user-list-teamsappinstallation?view=graph-rest-beta) <br>[Install app for user](/graph/api/user-add-teamsappinstallation?view=graph-rest-beta) <br>[Uninstall app for user](/graph/api/user-delete-teamsappinstallation?view=graph-rest-beta) <br>[Upgrade app installed for user](/graph/api/user-upgrade-teamsappinstallation?view=graph-rest-beta)|

### Cloud communications

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | Beta        | Added **mediaState** property to [call](/api-reference/beta/resources/call.md) resource|
| Change          | Beta        | Renamed **recordResourceLocation** property in [recordOperation](/api-reference/beta/resources/recordOperation.md) resource to **recordingLocation**|
| Change          | Beta        | Renamed **recordResourceAccessToken** property in [recordOperation](/api-reference/beta/resources/recordOperation.md) resource to **recordingAccessToken**|
| Addition        | Beta        | Added **capabilities** property to [onlineMeeting](/api-reference/beta/resources/onlinemeeting.md) resource |
| Addition        | Beta        | Added **videoTeleconferenceId** property to [onlineMeeting](/api-reference/beta/resources/onlinemeeting.md) resource |
| Addition        | Beta        | Added **producers** property to [meetingParticipants](/api-reference/beta/resources/meetingparticipants.md) resource |
| Addition        | Beta        | Added **contributors** property to [meetingParticipants](/api-reference/beta/resources/meetingparticipants.md) resource |

## June 2019

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[appVulnerabilityManagedDevice](/graph/api/resources/intune-partnerintegration-appvulnerabilitymanageddevice?view=graph-rest-beta)<br/>[appVulnerabilityMobileApp](/graph/api/resources/intune-partnerintegration-appvulnerabilitymobileapp?view=graph-rest-beta)<br/>[appVulnerabilityTask](/graph/api/resources/intune-partnerintegration-appvulnerabilitytask?view=graph-rest-beta)<br/>[deviceAppManagementTask](/graph/api/resources/intune-partnerintegration-deviceappmanagementtask?view=graph-rest-beta)<br/>[deviceManagementDomainJoinConnector](/graph/api/resources/intune-odj-devicemanagementdomainjoinconnector?view=graph-rest-beta)<br/>[iosikEv2VpnConfiguration](/graph/api/resources/intune-deviceconfig-iosikev2vpnconfiguration?view=graph-rest-beta)<br/>[roleScopeTagAutoAssignment](/graph/api/resources/intune-rbac-rolescopetagautoassignment?view=graph-rest-beta)<br/>[windows10DeviceFirmwareConfigurationInterface](/graph/api/resources/intune-deviceconfig-windows10devicefirmwareconfigurationinterface?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceManagementApplicabilityRuleDeviceMode](/graph/api/resources/intune-deviceconfig-devicemanagementapplicabilityruledevicemode?view=graph-rest-beta)<br/>[deviceManagementApplicabilityRuleOsEdition](/graph/api/resources/intune-deviceconfig-devicemanagementapplicabilityruleosedition?view=graph-rest-beta)<br/>[deviceManagementApplicabilityRuleOsVersion](/graph/api/resources/intune-deviceconfig-devicemanagementapplicabilityruleosversion?view=graph-rest-beta)<br/>[deviceManagementSettingComparison](/graph/api/resources/intune-deviceintent-devicemanagementsettingcomparison?view=graph-rest-beta)<br/>[iosVpnSecurityAssociationParameters](/graph/api/resources/intune-deviceconfig-iosvpnsecurityassociationparameters?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[appInstallControlType](/graph/api/resources/intune-deviceconfig-appinstallcontroltype?view=graph-rest-beta)<br/>[appVulnerabilityTaskMitigationType](/graph/api/resources/intune-partnerintegration-appvulnerabilitytaskmitigationtype?view=graph-rest-beta)<br/>[changeUefiSettingsPermission](/graph/api/resources/intune-deviceconfig-changeuefisettingspermission?view=graph-rest-beta)<br/>[deviceAppManagementTaskCategory](/graph/api/resources/intune-partnerintegration-deviceappmanagementtaskcategory?view=graph-rest-beta)<br/>[deviceAppManagementTaskPriority](/graph/api/resources/intune-partnerintegration-deviceappmanagementtaskpriority?view=graph-rest-beta)<br/>[deviceAppManagementTaskStatus](/graph/api/resources/intune-partnerintegration-deviceappmanagementtaskstatus?view=graph-rest-beta)<br/>[deviceManagementApplicabilityRuleType](/graph/api/resources/intune-deviceconfig-devicemanagementapplicabilityruletype?view=graph-rest-beta)<br/>[deviceManagementComparisonResult](/graph/api/resources/intune-deviceintent-devicemanagementcomparisonresult?view=graph-rest-beta)<br/>[deviceManagementDomainJoinConnectorState](/graph/api/resources/intune-odj-devicemanagementdomainjoinconnectorstate?view=graph-rest-beta)<br/>[deviceManagementTemplateType](/graph/api/resources/intune-deviceintent-devicemanagementtemplatetype?view=graph-rest-beta)<br/>[macOSFileVaultRecoveryKeyTypes](/graph/api/resources/intune-deviceconfig-macosfilevaultrecoverykeytypes?view=graph-rest-beta)<br/>[managedAppNotificationRestriction](/graph/api/resources/intune-mam-managedappnotificationrestriction?view=graph-rest-beta)<br/>[mobileAppDependencyType](/graph/api/resources/intune-apps-mobileappdependencytype?view=graph-rest-beta)<br/>[secureBootWithDMAType](/graph/api/resources/intune-deviceconfig-securebootwithdmatype?view=graph-rest-beta)<br/>[vpnClientAuthenticationType](/graph/api/resources/intune-deviceconfig-vpnclientauthenticationtype?view=graph-rest-beta)<br/>[vpnDeadPeerDetectionRate](/graph/api/resources/intune-deviceconfig-vpndeadpeerdetectionrate?view=graph-rest-beta)<br/>[vpnEncryptionAlgorithmType](/graph/api/resources/intune-deviceconfig-vpnencryptionalgorithmtype?view=graph-rest-beta)<br/>[vpnIntegrityAlgorithmType](/graph/api/resources/intune-deviceconfig-vpnintegrityalgorithmtype?view=graph-rest-beta)<br/>[vpnLocalIdentifier](/graph/api/resources/intune-deviceconfig-vpnlocalidentifier?view=graph-rest-beta)<br/>[vpnServerCertificateType](/graph/api/resources/intune-deviceconfig-vpnservercertificatetype?view=graph-rest-beta)<br/>[windows10DeviceModeType](/graph/api/resources/intune-deviceconfig-windows10devicemodetype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [updateStatus](/graph/api/intune-partnerintegration-deviceappmanagementtask-updatestatus?view=graph-rest-beta) action on [deviceAppManagementTask](/graph/api/resources/intune-partnerintegration-deviceappmanagementtask?view=graph-rest-beta) |
|Addition|beta|Added the [assign](/graph/api/intune-rbac-rolescopetag-assign?view=graph-rest-beta) action on [roleScopeTag](/graph/api/resources/intune-rbac-rolescopetag?view=graph-rest-beta) |
|Addition|beta|Added the [compare](/graph/api/intune-deviceintent-devicemanagementtemplate-compare?view=graph-rest-beta) function on [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) |
|Addition|beta|Added the [compare](/graph/api/intune-deviceintent-devicemanagementintent-compare?view=graph-rest-beta) function on [deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta) |
|Deletion|beta|Removed the following enum types:<br/>**mobileAppDependecyType**<br/>|
|Addition|beta|Added the **deviceManagementApplicabilityRuleOsEdition**, **deviceManagementApplicabilityRuleOsVersion** and **deviceManagementApplicabilityRuleDeviceMode** properties to the [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **securityKeyForSignIn** property to the [deviceEnrollmentWindowsHelloForBusinessConfiguration](/graph/api/resources/intune-onboarding-deviceenrollmentwindowshelloforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta) entity|
|Addition|beta|Added the **templateType** and **publishedDateTime** properties to the [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) entity|
|Addition|beta|Added the **customPrivacyMessage** property to the [intuneBrandingProfile](/graph/api/resources/intune-wip-intunebrandingprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **fileVaultEnabled**, **fileVaultSelectedRecoveryKeyTypes**, **fileVaultInstitutionalRecoveryKeyCertificate**, **fileVaultInstitutionalRecoveryKeyCertificateFileName**, **fileVaultPersonalRecoveryKeyHelpMessage**, **fileVaultAllowDeferralUntilSignOut**, **fileVaultNumberOfTimesUserCanIgnore**, **fileVaultDisablePromptAtSignOut** and **fileVaultPersonalRecoveryKeyRotationInMonths** properties to the [macOSEndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-macosendpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **notificationRestriction** property to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Change|beta|Changed the type of the following properties on the [mobileAppDependency](/graph/api/resources/intune-apps-mobileappdependency?view=graph-rest-beta) entity:<br/>**dependencyType** from [mobileAppDependecyType](/graph/api/resources/intune-apps-mobileappdependecytype?view=graph-rest-beta) to [mobileAppDependencyType](/graph/api/resources/intune-apps-mobileappdependencytype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **deviceGuardSecureBootWithDMA** property to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **smartScreenAppInstallControl** and **lockScreenActivateAppsWithVoice** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceAppManagementTasks** navigation property to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **domainJoinConnectors** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignments** navigation property to the [roleScopeTag](/graph/api/resources/intune-rbac-rolescopetag?view=graph-rest-beta) entity|
|Addition|beta|Added the **isReadOnly** property to the [omaSettingInteger](/graph/api/resources/intune-deviceconfig-omasettinginteger?view=graph-rest-beta) complex type|
|Addition|beta|Added the **v10_1809** and **v10_1903** properties to the [windowsMinimumOperatingSystem](/graph/api/resources/intune-apps-windowsminimumoperatingsystem?view=graph-rest-beta) complex type|
|Addition|beta|Added the **wpa2Enterprise** member to the [androidWiFiSecurityType](/graph/api/resources/intune-deviceconfig-androidwifisecuritytype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **ikEv2** member to the [appleVpnConnectionType](/graph/api/resources/intune-deviceconfig-applevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **rotateFileVaultKey** and **getFileVaultKey** members to the [remoteAction](/graph/api/resources/intune-devices-remoteaction?view=graph-rest-beta) enum type|
|Addition|beta|Added the **sharedSecret** member to the [vpnAuthenticationMethod](/graph/api/resources/intune-deviceconfig-vpnauthenticationmethod?view=graph-rest-beta) enum type|
|Addition|beta|Added the **windows10Home**, **windows10HomeChina**, **windows10HomeN**, **windows10HomeSingleLanguage**, **windows10Mobile**, **windows10IoTCore** and **windows10IoTCoreCommercial** members to the [windows10EditionType](/graph/api/resources/intune-deviceconfig-windows10editiontype?view=graph-rest-beta) enum type|

### Identity and access

| **Change type** | **Version** | **Description**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|:----------------|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Addition        | beta        | Added the [riskDetection API](/graph/api/resources/riskdetection?view=graph-rest-beta), which represents risk detections in Azure AD Identity Protection.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Addition        | Beta        | Introduced the new resource type [applicationTemplate](/graph/api/resources/applicationtemplate.md). This resource type supports [instantiate](/graph/api/applicationtemplate-instantiate.md), [list](/graph/api/applicationtemplate-instantiate.md) and [get](/graph/api/applicationtemplate-get.md) applications from the Azure AD application gallery.                                                                                                                                                                                                                                                                                                                                                                   |
| Addition        | beta        | Added new resources: </br> [detailsInfo](/graph/api/resources/detailsInfo?view=graph-rest-beta)</br> [initiator](/graph/api/resources/initiator?view=graph-rest-beta)</br> [modifiedProperty](/graph/api/resources/modifiedProperty?view=graph-rest-beta)</br> [provisionedIdentity](/graph/api/resources/provisionedIdentity?view=graph-rest-beta)</br> [provisioningObjectsummary](/graph/api/resources/provisioningObjectsummary?view=graph-rest-beta)</br> [provisioningStep](/graph/api/resources/provisioningStep?view=graph-rest-beta)</br> [provisioningsystemDetails](/graph/api/resources/provisioningsystemDetails?view=graph-rest-beta)</br> [statusBase](/graph/api/resources/statusBase?view=graph-rest-beta) |
| Addition        | beta        | Added the [List provisioningObjectSummary](/graph/api/resources/provisioning-object-summary-list?view=graph-rest-beta) operation</br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Addition        | v1.0        | Added the **signInSessionsValidFromDateTime** property on the [user](/graph/api/resources/user?view=graph-rest-1.0) resource.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Addition        | v1.0        | Added the [revokeSignInSessions](/graph/api/user-revokesigninsessions?view=graph-rest-1.0) action on the [user](/graph/api/resources/user?view=graph-rest-1.0) resource.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |

### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added support for the Mail.ReadBasic permission in mailFolder API: [list mailfolders](/graph/api/user-list-mailfolders?view=graph-rest-beta), [get a mailfolder](/graph/api/mailfolder-get?view=graph-rest-beta), [list child folders](/graph/api/mailfolder-list-childfolders?view=graph-rest-beta) and [list messages in a mail folder](/graph/api/mailfolder-list-childfolders?view=graph-rest-beta). Also added Mail.ReadBasic support in [delta query for message](/graph/api/message-delta?view=graph-rest-beta) and [delta query for mailFolder](/graph/api/mailfolder-delta?view=graph-rest-beta).|

### Reports | Identity and access reports

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition|beta| Added new reports for retrieving user registration and usage information:<br/><ul><li>[reportroot-getcredentialusagesummary](/graph/api/reportroot-getcredentialusagesummary?view=graph-rest-beta) - Reports usage of self-service password reset.</li><li>[reportroot-getcredentialuserregistrationcount](/graph/api/reportroot-getcredentialuserregistrationcount?view=graph-rest-beta) - Reports the number of registrations for self-service password reset and multi-factor authentication.</li><li>[reportroot-list-credentialuserregistrationdetails](/graph/api/reportroot-list-credentialuserregistrationdetails?view=graph-rest-beta) - Reports usage of self-service password reset and multi-factor authentication.</li><li>[reportroot-list-usercredentialusagedetails](/graph/api/resources/reportroot-list-usercredentialusagedetails?view=graph-rest-beta) - Reports usage of self-service password reset for a user.</li></ul> |

### Sites and lists

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the [followSite](/graph/api/follow-site?view=graph-rest-beta) navigation property to the [user](/graph/api/resources/user?view=graph-rest-beta) entity set |
| Addition        | Beta        | Added the [unfollowSite](/graph/api/unfollow-site?view=graph-rest-beta) navigation property to the [user](/graph/api/resources/user?view=graph-rest-beta) entity set |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [teamDiscoverySettings](/api-reference/beta/resources/teamdiscoverysettings.md) resource and associated methods. |

### Users

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **lastPasswordChangeDateTime** property to the [user](/graph/api/resources/user?view=graph-rest-beta) entity. |

## May 2019

### Calendar, mail, personal contacts

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 and beta | Added the capability for administrators to limit app access to only specific mailboxes, even when an app has been granted application permissions to mail, mailbox settings, calendars, or contacts. For more details, see [Scoping application permissions to specific Exchange Online mailboxes](auth-limit-mailbox-access.md). |

### Devices and apps | Corporate management
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[deviceManagementDerivedCredentialSettings](/graph/api/resources/intune-deviceconfig-devicemanagementderivedcredentialsettings?view=graph-rest-beta)<br/>[iosDerivedCredentialAuthenticationConfiguration](/graph/api/resources/intune-deviceconfig-iosderivedcredentialauthenticationconfiguration?view=graph-rest-beta)<br/>[securityBaselineCategoryStateSummary](/graph/api/resources/intune-deviceintent-securitybaselinecategorystatesummary?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[deviceManagementDerivedCredentialIssuer](/graph/api/resources/intune-deviceconfig-devicemanagementderivedcredentialissuer?view=graph-rest-beta)<br/>[deviceManagementDerivedCredentialNotificationType](/graph/api/resources/intune-deviceconfig-devicemanagementderivedcredentialnotificationtype?view=graph-rest-beta)<br/>[emailCertificateType](/graph/api/resources/intune-deviceconfig-emailcertificatetype?view=graph-rest-beta)<br/>[mobileAppDependencyType](/graph/api/resources/intune-apps-mobileappdependencytype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the executeAction action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) collection |
|Addition|beta|Added the [rotateFileVaultKey](/graph/api/intune-devices-manageddevice-rotatefilevaultkey?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|beta|Added the [migrateToTemplate](/graph/api/intune-deviceintent-devicemanagementintent-migratetotemplate?view=graph-rest-beta) action on [deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta) |
|Addition|beta|Added the [getFileVaultKey](/graph/api/intune-devices-manageddevice-getfilevaultkey?view=graph-rest-beta) function on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Deletion|beta|Removed the following enum types:<br/>**mobileAppDependecyType**<br/>|
|Deletion|beta|Removed the executeAction action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) collection |
|Addition|beta|Added the **usernameFormatString**, **passwordFormatString** and **preSharedKey** properties to the [androidEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidenterprisewificonfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customBrowserPackageId** and **customBrowserDisplayName** properties to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **customBrowserProtocol**, **customBrowserPackageId** and **customBrowserDisplayName** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **thirdPartyKeyboardsBlocked** property from the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [deviceManagementAbstractComplexSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance?view=graph-rest-beta) entity:<br/>**implementationId** from required to optional<br/>|
|Addition|beta|Added the **versionInfo**, **isDeprecated** and **intentCount** properties to the [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignedUserPrincipalName** property to the [importedWindowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **signingCertificateType** and **encryptionCertificateType** properties to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **usernameFormatString** and **passwordFormatString** properties to the [iosEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-iosenterprisewificonfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **kioskModeBlockAutoLock**, **kioskModeBlockRingerSwitch**, **kioskModeBlockScreenRotation**, **kioskModeBlockSleepButton**, **kioskModeBlockTouchscreen**, **cellularBlockPersonalHotspotModification** and **siriDisableServerLogging** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customBrowserProtocol** property to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **thirdPartyKeyboardsBlocked** property from the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **iCloudBlockPhotoLibrary**, **screenCaptureBlocked**, **classroomAppBlockRemoteScreenObservation**, **classroomAppForceUnpromptedScreenObservation**, **classroomForceAutomaticallyJoinClasses**, **classroomForceRequestPermissionToLeaveClasses** and **classroomForceUnpromptedAppAndDeviceLock** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **retireAfterDateTime** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Change|beta|Changed the type of the following properties on the [mobileAppDependency](/graph/api/resources/intune-apps-mobileappdependency?view=graph-rest-beta) entity:<br/>**dependencyType** from [mobileAppDependecyType](/graph/api/resources/intune-apps-mobileappdependecytype?view=graph-rest-beta) to [mobileAppDependencyType](/graph/api/resources/intune-apps-mobileappdependencytype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **tpmRequired** property to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **configDeviceHealthMonitoringCustomScope** property to the [windowsHealthMonitoringConfiguration](/graph/api/resources/intune-deviceconfig-windowshealthmonitoringconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **migratableTo** navigation property to the [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) entity|
|Addition|beta|Added the **derivedCredentialSettings** navigation property to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **derivedCredentialSettings** navigation property to the [iosEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-iosenterprisewificonfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **derivedCredentialSettings** navigation property to the [iosVpnConfiguration](/graph/api/resources/intune-deviceconfig-iosvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **categoryDeviceStateSummaries** navigation property to the [securityBaselineTemplate](/graph/api/resources/intune-deviceintent-securitybaselinetemplate?view=graph-rest-beta) entity|
|Addition|beta|Added the **wpaEnterprise** member to the [androidDeviceOwnerWiFiSecurityType](/graph/api/resources/intune-deviceconfig-androiddeviceownerwifisecuritytype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **unknown** member to the [devicePlatformType](/graph/api/resources/intune-shared-deviceplatformtype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **derivedCredential** member to the [easAuthenticationMethod](/graph/api/resources/intune-deviceconfig-easauthenticationmethod?view=graph-rest-beta) enum type|
|Addition|beta|Added the **wipe** member to the [managedDeviceRemoteAction](/graph/api/resources/intune-devices-manageddeviceremoteaction?view=graph-rest-beta) enum type|
|Change|beta|Changed the type of the following properties on the [managedDeviceRemoteAction](/graph/api/resources/intune-devices-manageddeviceremoteaction?view=graph-rest-beta) enum type:<br/>**fullScan** from 2 to 3<br/>**quickScan** from 3 to 4<br/>**signatureUpdate** from 4 to 5<br/>|
|Addition|beta|Added the **derivedCredential** member to the [vpnAuthenticationMethod](/graph/api/resources/intune-deviceconfig-vpnauthenticationmethod?view=graph-rest-beta) enum type|
|Addition|beta|Added the **derivedCredential** member to the [wiFiAuthenticationMethod](/graph/api/resources/intune-deviceconfig-wifiauthenticationmethod?view=graph-rest-beta) enum type|

### Files
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the [bundle](/graph/api/resources/bundle?view=graph-rest-beta) complex type |
| Addition | Beta | Added the [album](/graph/api/resources/album?view=graph-rest-beta) complex type |
| Addition | Beta | Added the **bundles** navigation property to the [drive](/graph/api/resources/drive?view=graph-rest-beta) entity |
| Addition | Beta | Added the **bundle** property to the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) entity |
| Addition | Beta | Added the **grant** action to the [permission](/graph/api/resources/permission?view=graph-rest-beta) entity |

### Education
| Change type | Version | Description                                                                                                                                                      |
| :---------- | :------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Addition    | beta    | Added taughtClasses to [educationUser](/graph/api/resources/educationUser?view=graph-rest-beta).                                                                  |
| Addition    | beta    | Added [educationCourse](/graph/api/resources/educationCourse?view=graph-rest-beta) to [educationClass](/graph/api/resources/educationClass?view=graph-rest-beta). |
| Addition    | beta    | Added [delta](/graph/delta-query-overview) support to [educationUser](/graph/api/resources/educationUser?view=graph-rest-beta).                                   |
| Addition    | beta    | Added [delta](/graph/delta-query-overview) to [educationSchool](/graph/api/resources/educationSchool?view=graph-rest-beta).                                       |
| Addition    | beta    | Added [delta](/graph/delta-query-overview) to [educationClass](/graph/api/resources/educationClass?view=graph-rest-beta).                                         |
| Addition    | beta    | Added `faculty` option to [educationUserRole](/graph/api/resources/enums?view=graph-rest-beta#educationuserrole-values) enumeration.                              |

### Groups
| **Change type** | **Version** | **Description** |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added **assignedlabels** property to the [group](/graph/api/resources/group?view=graph-rest-beta) entity. This property represents the list of sensitivity label pairs (label ID, label name) associated with a group.

### Identity and access | Identity and sign-in

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the [riskyUserHistoryItem](/graph/api/resources/riskyuserhistoryitem?view=graph-rest-beta) entity. |
| Addition | Beta | Added the [list history](/graph/api/riskyuser-list-history?view=graph-rest-beta) operation. |

### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the [mailSearchFolder](/graph/api/resources/mailsearchfolder?graph-rest-1.0) entity, which is derived from and supports the methods of the [mailFolder](/graph/api/resources/mailfolder?graph-rest-1.0) entity. |

### Reports | Microsoft 365 usage reports

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | Beta  | Added **ownerPrincipalName** property to the [oneDriveUsageAccountDetail](/graph/api/resources/oneDriveUsageAccountDetail?view=graph-rest-beta) entity.|
| Addition        | Beta  | Added **ownerPrincipalName** property to the [sharePointSiteUsageDetail](/graph/api/resources/sharePointSiteUsageDetail?view=graph-rest-beta) entity.|

### Security

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0       | Added the Secure Score APIs to the [security API](/graph/api/resources/securescore-api-overview?view=graph-rest-1.0), including the following resources and operations:<br/>[secureScore](/graph/api/resources/securescore?view=graph-rest-1.0) (and related entities)<br/>[List secureScores](/graph/api/securescores-list?view=graph-rest-1.0)<br/>[secureScoreControlProfile](/graph/api/resources/securescorecontrolprofile?view=graph-rest-1.0)<br/>[List secureScoreControlProfiles](/graph/api/securescorecontrolprofiles-list?view=graph-rest-1.0)<br/>[Update secureScoreControlProfile](/graph/api/securescorecontrolprofiles-update?view=graph-rest-1.0) |

### Teamwork

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | Beta        | Added **urgent** property to the **chatMessageImportance** enum.|
| Addition        | Beta        | Added **hostedContents** navigation property to the [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) entity.|
| Addition        | Beta        | Added **chatMessageHostedContent** entity to represent content hosted by Microsoft Teams associated with a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta). |


## April 2019

### Change notifications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added two types of lifecycle notifications, `subscriptionRemoved` and `missed`, available for Outlook resources. Subscribing apps can take appropriate actions to mitigate notification interruptions. For more details, see [Reduce missing subscriptions and notifications for Outlook resources (preview)](webhooks-lifecycle.md).|

### Devices and apps | Corporate management
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerCompliancePolicy](/graph/api/resources/intune-deviceconfig-androiddeviceownercompliancepolicy?view=graph-rest-beta)<br/><br/>[macOSExtensionsConfiguration](/graph/api/resources/intune-deviceconfig-macosextensionsconfiguration?view=graph-rest-beta)<br/><br/>[mobileAppDependency](/graph/api/resources/intune-apps-mobileappdependency?view=graph-rest-beta)<br/><br/>[mobileAppRelationship](/graph/api/resources/intune-apps-mobileapprelationship?view=graph-rest-beta)<br/><br/>|
|Addition|beta|Added new complex types:<br/>[macOSKernelExtension](/graph/api/resources/intune-deviceconfig-macoskernelextension?view=graph-rest-beta)<br/><br/>[macOSLaunchItem](/graph/api/resources/intune-deviceconfig-macoslaunchitem?view=graph-rest-beta)<br/><br/>[mobileAppRelationshipState](/graph/api/resources/intune-apps-mobileapprelationshipstate?view=graph-rest-beta)<br/><br/>[win32LobAppFileSystemRequirement](/graph/api/resources/intune-apps-win32lobappfilesystemrequirement?view=graph-rest-beta)<br/><br/>[win32LobAppPowerShellScriptRequirement](/graph/api/resources/intune-apps-win32lobapppowershellscriptrequirement?view=graph-rest-beta)<br/><br/>[win32LobAppRegistryRequirement](/graph/api/resources/intune-apps-win32lobappregistryrequirement?view=graph-rest-beta)<br/><br/>[win32LobAppRequirement](/graph/api/resources/intune-apps-win32lobapprequirement?view=graph-rest-beta)<br/><br/>|
|Addition|beta|Added new enum types:<br/>[androidDeviceOwnerPlayStoreMode](/graph/api/resources/intune-deviceconfig-androiddeviceownerplaystoremode?view=graph-rest-beta)<br/><br/>[mobileAppDependecyType](/graph/api/resources/intune-apps-mobileappdependecytype?view=graph-rest-beta)<br/><br/>[win32LobAppPowerShellScriptDetectionType](/graph/api/resources/intune-apps-win32lobapppowershellscriptdetectiontype?view=graph-rest-beta)<br/><br/>|
|Addition|beta|Added the [updateRelationships](/graph/api/intune-apps-mobileapp-updaterelationships?view=graph-rest-beta)<br/> action on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta)<br/> |
|Addition|beta|Added the **import** action on [importedWindowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentity?view=graph-rest-beta)<br/> collection |
|Addition|beta|Added the [getRelatedAppStates](/graph/api/intune-apps-mobileapp-getrelatedappstates?view=graph-rest-beta)<br/> function on [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta)<br/> |
|Addition|beta|Added the **kioskModeBluetoothConfigurationEnabled**, **kioskModeWiFiConfigurationEnabled**, **passwordMinimumLetterCharacters**, **passwordMinimumLowerCaseCharacters**, **passwordMinimumNonLetterCharacters**, **passwordMinimumNumericCharacters**, **passwordMinimumSymbolCharacters**, **passwordMinimumUpperCaseCharacters** and **playStoreMode** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidForWorkCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidforworkcertificateprofilebase?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidForWorkPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkpkcscertificateprofile?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidForWorkScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkscepcertificateprofile?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidWorkProfileCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidworkprofilecertificateprofilebase?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilepkcscertificateprofile?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidWorkProfileScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilescepcertificateprofile?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **deviceNameTemplate** property to the [depEnrollmentBaseProfile](/graph/api/resources/intune-enrollment-depenrollmentbaseprofile?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **importId** property to the [importedWindowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentity?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **autoLaunchItems**, **adminShowHostInfo**, **loginWindowText**, **authorizedUsersListHidden**, **authorizedUsersListHideLocalUsers**, **authorizedUsersListHideMobileAccounts**, **authorizedUsersListIncludeNetworkUsers**, **authorizedUsersListHideAdminUsers**, **authorizedUsersListShowOtherManagedUsers**, **shutDownDisabled**, **restartDisabled**, **sleepDisabled**, **consoleAccessDisabled**, **shutDownDisabledWhileLoggedIn**, **restartDisabledWhileLoggedIn**, **powerOffDisabledWhileLoggedIn**, **logOutDisabledWhileLoggedIn** and **screenLockDisableImmediate** properties to the [macOSDeviceFeaturesConfiguration](/graph/api/resources/intune-deviceconfig-macosdevicefeaturesconfiguration?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **dependentAppCount** property to the [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **requirementRules** property to the [win32LobApp](/graph/api/resources/intune-apps-win32lobapp?view=graph-rest-beta)<br/> entity|
|Deletion|beta|Removed the **tpmRequired** property from the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **groupTag** property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **users** navigation property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **relationships** navigation property to the [mobileApp](/graph/api/resources/intune-apps-mobileapp?view=graph-rest-beta)<br/> entity|
|Addition|beta|Added the **customPrivacyMessage** property to the [intuneBrand](/graph/api/resources/intune-onboarding-intunebrand?view=graph-rest-beta)<br/> complex type|
|Addition|beta|Added the **dependencyFailedToInstall**, **dependencyWithRequirementsNotMet**, **dependencyPendingReboot**, **dependencyWithAutoInstallDisabled**, **autoInstallDisabled**, **installingDependencies**, **powerShellScriptRequirementNotMet**, **registryRequirementNotMet** and **fileSystemRequirementNotMet** members to the [resultantAppStateDetail](/graph/api/resources/intune-apps-resultantappstatedetail?view=graph-rest-beta)<br/> enum type|
|Addition|beta|Added the **doesNotExist** member to the [win32LobAppFileSystemDetectionType](/graph/api/resources/intune-apps-win32lobappfilesystemdetectiontype?view=graph-rest-beta)<br/> enum type|

### Devices and apps | Corporate management
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[deviceManagementAbstractComplexSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementabstractcomplexsettingdefinition?view=graph-rest-beta)<br/>[deviceManagementAbstractComplexSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementabstractcomplexsettinginstance?view=graph-rest-beta)<br/>[deviceManagementBooleanSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementbooleansettinginstance?view=graph-rest-beta)<br/>[deviceManagementCollectionSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementcollectionsettingdefinition?view=graph-rest-beta)<br/>[deviceManagementCollectionSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementcollectionsettinginstance?view=graph-rest-beta)<br/>[deviceManagementComplexSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementcomplexsettingdefinition?view=graph-rest-beta)<br/>[deviceManagementComplexSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementcomplexsettinginstance?view=graph-rest-beta)<br/>[deviceManagementIntegerSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementintegersettinginstance?view=graph-rest-beta)<br/>[deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta)<br/>[deviceManagementIntentAssignment](/graph/api/resources/intune-deviceintent-devicemanagementintentassignment?view=graph-rest-beta)<br/>[deviceManagementIntentDeviceSettingStateSummary](/graph/api/resources/intune-deviceintent-devicemanagementintentdevicesettingstatesummary?view=graph-rest-beta)<br/>[deviceManagementIntentDeviceState](/graph/api/resources/intune-deviceintent-devicemanagementintentdevicestate?view=graph-rest-beta)<br/>[deviceManagementIntentDeviceStateSummary](/graph/api/resources/intune-deviceintent-devicemanagementintentdevicestatesummary?view=graph-rest-beta)<br/>[deviceManagementIntentSettingCategory](/graph/api/resources/intune-deviceintent-devicemanagementintentsettingcategory?view=graph-rest-beta)<br/>[deviceManagementIntentUserState](/graph/api/resources/intune-deviceintent-devicemanagementintentuserstate?view=graph-rest-beta)<br/>[deviceManagementIntentUserStateSummary](/graph/api/resources/intune-deviceintent-devicemanagementintentuserstatesummary?view=graph-rest-beta)<br/>[deviceManagementSettingCategory](/graph/api/resources/intune-deviceintent-devicemanagementsettingcategory?view=graph-rest-beta)<br/>[deviceManagementSettingDefinition](/graph/api/resources/intune-deviceintent-devicemanagementsettingdefinition?view=graph-rest-beta)<br/>[deviceManagementSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementsettinginstance?view=graph-rest-beta)<br/>[deviceManagementStringSettingInstance](/graph/api/resources/intune-deviceintent-devicemanagementstringsettinginstance?view=graph-rest-beta)<br/>[deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta)<br/>[deviceManagementTemplateSettingCategory](/graph/api/resources/intune-deviceintent-devicemanagementtemplatesettingcategory?view=graph-rest-beta)<br/>[securityBaselineDeviceState](/graph/api/resources/intune-deviceintent-securitybaselinedevicestate?view=graph-rest-beta)<br/>[securityBaselineSettingState](/graph/api/resources/intune-deviceintent-securitybaselinesettingstate?view=graph-rest-beta)<br/>[securityBaselineState](/graph/api/resources/intune-deviceintent-securitybaselinestate?view=graph-rest-beta)<br/>[securityBaselineStateSummary](/graph/api/resources/intune-deviceintent-securitybaselinestatesummary?view=graph-rest-beta)<br/>[securityBaselineTemplate](/graph/api/resources/intune-deviceintent-securitybaselinetemplate?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceManagementConstraint](/graph/api/resources/intune-deviceintent-devicemanagementconstraint?view=graph-rest-beta)<br/>[deviceManagementEnumConstraint](/graph/api/resources/intune-deviceintent-devicemanagementenumconstraint?view=graph-rest-beta)<br/>[deviceManagementEnumValue](/graph/api/resources/intune-deviceintent-devicemanagementenumvalue?view=graph-rest-beta)<br/>[deviceManagementSettingBooleanConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingbooleanconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingDependency](/graph/api/resources/intune-deviceintent-devicemanagementsettingdependency?view=graph-rest-beta)<br/>[deviceManagementSettingIntegerConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingintegerconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingRegexConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingregexconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingStringLengthConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingstringlengthconstraint?view=graph-rest-beta)<br/>[deviceManagementSettingXmlConstraint](/graph/api/resources/intune-deviceintent-devicemanagementsettingxmlconstraint?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[deviceManangementIntentValueType](/graph/api/resources/intune-deviceintent-devicemanangementintentvaluetype?view=graph-rest-beta)<br/>[securityBaselineComplianceState](/graph/api/resources/intune-deviceintent-securitybaselinecompliancestate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [createInstance](/graph/api/intune-deviceintent-devicemanagementtemplate-createinstance?view=graph-rest-beta) action on [deviceManagementTemplate](/graph/api/resources/intune-deviceintent-devicemanagementtemplate?view=graph-rest-beta) |
|Addition|beta|Added the [updateSettings](/graph/api/intune-deviceintent-devicemanagementintent-updatesettings?view=graph-rest-beta) action on [deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta) |
|Addition|beta|Added the [assign](/graph/api/intune-deviceintent-devicemanagementintent-assign?view=graph-rest-beta) action on [deviceManagementIntent](/graph/api/resources/intune-deviceintent-devicemanagementintent?view=graph-rest-beta) |
|Addition|beta|Added the **intents**, **settingDefinitions**, **templates** and **categories** navigation properties to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **securityBaselineStates** navigation property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|

### Sites and lists

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the **analytics** property to the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added the **analytics** property to the [site](/graph/api/resources/site?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added the **analytics** property to the [listItem](/graph/api/resources/listitem?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added the **getActivitiesByInterval** function on the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added the **getActivitiesByInterval** function on the [site](/graph/api/resources/site?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added the **getActivitiesByInterval** function on the [listItem](/graph/api/resources/listitem?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added the [itemAnalytics](/graph/api/resources/itemanalytics?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added the [itemActivityStat](/graph/api/resources/itemactivity?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added the [itemActionStat](/graph/api/resources/itemactionstat?view=graph-rest-beta) complex type. |
| Addition        | v1.0        | Added the [accessAction](/graph/api/resources/accessaction?view=graph-rest-beta) complex type. |
| Addition        | v1.0        | Added the [incompleteData](/graph/api/resources/incompletedata?view=graph-rest-beta) complex type. |
| Addition        | v1.0        | Added the **access** property to the [itemActivity](/graph/api/resources/itemactivity?view=graph-rest-beta) complex type. |
| Addition        | v1.0        | Added the **location** property to the [itemActivity](/graph/api/resources/itemactivity?view=graph-rest-beta) complex type. |

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 |  Introduced the new **audit logs APIs for Azure AD** providing activity logs for directory management tasks through [directoryAudit](/graph/api/resources/directoryAudit?view=graph-rest-1.0) and sign-in activity through [signIns](/graph/api/resources/signIns?view=graph-rest-1.0).|
| Addition | beta | Added new application permissions for **access reviews** APIs: AccessReview.Read.All, ProgramControl.Read.All and ProgramControl.ReadWrite.All. For details, see the [access reviews API reference](/graph/api/resources/accessreviews-root?view=graph-rest-beta). |
| Addition | beta | Add the **signInSessionsValidFromDateTime** property on the [user](/graph/api/resources/user?view=graph-rest-beta) resource. This is a rename of the **refreshTokensValidFromDateTime** properties, but both properties will be supported to allow clients to migrate smoothly. In the next couple months the old property, **refreshTokensValidFromDateTime** will be removed.|
| Addition | beta | Add the **revokeSignInSessions** action on the [user](/graph/api/resources/user?view=graph-rest-beta) resource. This is a rename of the **invalidateAllRefreshTokens** action, but both service actions will be supported to allow clients to migrate smoothly. In the next couple months the old service action, **invalidateAllRefreshTokens** will be removed. |
| Addition | Beta |Introduced a new resource type [trustFrameworkPolicy](/graph/api/resources/trustframeworkpolicy?view=graph-rest-beta) to support [Azure Active Directory B2C](https://docs.microsoft.com/azure/active-directory-b2c/active-directory-b2c-overview). This resource type supports  [create](/graph/api/trustframework-post-trustframeworkpolicy?view=graph-rest-beta), [list](/graph/api/trustframework-list-trustframeworkpolicies?view=graph-rest-beta), [get](/graph/api/trustframeworkpolicy-get?view=graph-rest-beta), [update](/graph/api/trustframework-put-trustframeworkpolicy?view=graph-rest-beta), and [delete](/graph/api/trustframerkpolicy-delete?view=graph-rest-beta) operations.|

### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added support for a new [Mail.ReadBasic (preview) permission](permissions-reference.md#mail-permissions) for [List Messages](/graph/api/user-list-messages?view=graph-rest-beta) and [Get Message](/graph/api/message-get?view=graph-rest-beta).            |
| Addition        | Beta          | Added the capability to [get the MIME content of a message](outlook-get-mime-message.md). |
| Addition        | Beta          | Added the capability to [get the raw contents of a file or item attachment](/graph/api/attachment-get?view=graph-rest-beta#get-the-raw-contents-of-a-file-or-item-attachment) to an event, message, Outlook task, or group post. |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |v1.0 | Added support for application permissions to the [installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-1.0) resource.|
|Addition |v1.0| Added the **email** and **webUrl** properties to [channel](/graph/api/resources/channel?view=graph-rest-1.0).|
|Addition | beta | Added the [chat](/api-reference/beta/resources/chat.md) resources and associated methods. |
|Addition |beta| Added APIs to read [images](/graph/api/resources/chatmessagehostedimage?view=graph-rest-beta) in messages.|
|Addition | beta | Added the [conversation member](/api-reference/beta/resources/conversationmember.md) resources and associated methods. |


## March 2019

### Calendar
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition | v1.0 | Added the [getSchedule](/graph/api/calendar-getschedule?view=graph-rest-1.0) action, and the [freeBusyError](/graph/api/resources/freebusyerror?view=graph-rest-1.0), [scheduleInformation](/graph/api/resources/scheduleinformation?view=graph-rest-1.0), and [scheduleItem](/graph/api/resources/scheduleitem?view=graph-rest-1.0) complex types to support [getting the free/busy, availability information for users, distribution lists, and resources for a given period of time](outlook-get-free-busy-schedule.md). |
|Change | Beta | Rolled back the type changes related to [findMeetingTimes](/graph/api/user-findmeetingtimes?view=graph-rest-beta) documented in [February 2019](#february-2019). The specific changes are listed in the following rows.|
|Change | Beta | Changed the data type of the following parameters of [findMeetingTimes](/graph/api/user-findmeetingtimes?view=graph-rest-beta): <br>**attendees**: from **attendeeDataModel** back to [attendeeBase](/graph/api/resources/attendeebase?view=graph-rest-beta) <br>**locationConstraint**: from **locationConstraints** back to [locationConstraint](/graph/api/resources/locationconstraint?view=graph-rest-beta) <br> **timeConstraint**: from **findMeetingTimesTimeConstraints** back to [timeConstraint](/graph/api/resources/timeconstraint?view=graph-rest-beta)|
|Change | Beta | Changed the return type of **findMeetingTimes** from **findMeetingTimesResponse** back to [meetingTimeSuggestionsResult](/graph/api/resources/meetingTimeSuggestionsResult?view=graph-rest-beta) |
|Change | Beta | Changed the base type of [locationConstraintItem](/graph/api/resources/locationconstraintitem?view=graph-rest-beta) from **locationDataModel** back to [location](/graph/api/resources/location?view=graph-rest-beta) |
|Change | Beta | Changed the data types of the following properties of [meetingTimeSuggestion](/graph/api/resources/meetingtimesuggestion?view=graph-rest-beta): <br> **attendeeAvailability**: from collection of **attendeeAvailabilityDataModel** back to collection of [attendeeAvailability](/graph/api/resources/attendeeavailability?view=graph-rest-beta) <br> **locations**: from collection of **locationDataModel** back to collection of [location](/graph/api/resources/location?view=graph-rest-beta) <br> **meetingTimeSlot**: from **meetingTimeSlotDataModel** back to [timeSlot](/graph/api/resources/timeslot?view=graph-rest-beta) <br> **organizerAvailability**: from **availabilityStatus** back to **freeBusyStatus** |
|Deletion | Beta | Complex types: <br> **attendeeAvailabilityDataModel** <br> **attendeeDataModel** <br> **findMeetingTimesResponse** <br> **findMeetingTimesTimeConstraints** <br> **locationConstraints** <br> **meetingTimeSlotDataModel** <br> **searchWindowTimeSlot**|
|Deletion | Beta | Enumerations: <br> **addressType** <br> **availabilityStatus** |
|Addition | Beta | Restored the following complex types: <br> [attendeeAvailability](/graph/api/resources/attendeeavailability?view=graph-rest-beta) <br> [locationConstraint](/graph/api/resources/locationconstraint?view=graph-rest-beta) <br> [meetingTimeSuggestionsResult](/graph/api/resources/meetingtimesuggestionsresult?view=graph-rest-beta) <br>[timeConstraint](/graph/api/resources/timeconstraint?view=graph-rest-beta) |

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[windowsHealthMonitoringConfiguration](/graph/api/resources/intune-deviceconfig-windowshealthmonitoringconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[windowsFirewallRule](/graph/api/resources/intune-deviceconfig-windowsfirewallrule?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidManagedAppSafetyNetAppsVerificationType](/graph/api/resources/intune-mam-androidmanagedappsafetynetappsverificationtype?view=graph-rest-beta)<br/>[androidManagedAppSafetyNetDeviceAttestationType](/graph/api/resources/intune-mam-androidmanagedappsafetynetdeviceattestationtype?view=graph-rest-beta)<br/>[windowsAutopilotDeviceType](/graph/api/resources/intune-enrollment-windowsautopilotdevicetype?view=graph-rest-beta)<br/>[windowsFirewallRuleInterfaceTypes](/graph/api/resources/intune-deviceconfig-windowsfirewallruleinterfacetypes?view=graph-rest-beta)<br/>[windowsFirewallRuleNetworkProfileTypes](/graph/api/resources/intune-deviceconfig-windowsfirewallrulenetworkprofiletypes?view=graph-rest-beta)<br/>[windowsFirewallRuleTrafficDirectionType](/graph/api/resources/intune-deviceconfig-windowsfirewallruletrafficdirectiontype?view=graph-rest-beta)<br/>[windowsHealthMonitoringScope](/graph/api/resources/intune-deviceconfig-windowshealthmonitoringscope?view=graph-rest-beta)<br/>[windowsUpdateNotificationDisplayOption](/graph/api/resources/intune-deviceconfig-windowsupdatenotificationdisplayoption?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [searchExistingIdentities](/graph/api/intune-enrollment-importeddeviceidentity-searchexistingidentities?view=graph-rest-beta) action on [importedDeviceIdentity](/graph/api/resources/intune-enrollment-importeddeviceidentity?view=graph-rest-beta) collection |
|Addition|beta|Added the [assignResourceAccountToDevice](/graph/api/intune-enrollment-windowsautopilotdeviceidentity-assignresourceaccounttodevice?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) |
|Addition|beta|Added the [unassignResourceAccountFromDevice](/graph/api/intune-enrollment-windowsautopilotdeviceidentity-unassignresourceaccountfromdevice?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) |
|Deletion|beta|Removed the following enum types:<br/>**defenderScheduleScanDay**<br/>|
|Addition|beta|Added the **requiredAndroidSafetyNetDeviceAttestationType**, **appActionIfAndroidSafetyNetDeviceAttestationFailed**, **requiredAndroidSafetyNetAppsVerificationType** and **appActionIfAndroidSafetyNetAppsVerificationFailed** properties to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **supportsOemConfig** property to the [androidManagedStoreApp](/graph/api/resources/intune-apps-androidmanagedstoreapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **appSupportsOemConfig** property to the [androidManagedStoreAppConfiguration](/graph/api/resources/intune-apps-androidmanagedstoreappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **requiredAndroidSafetyNetDeviceAttestationType**, **appActionIfAndroidSafetyNetDeviceAttestationFailed**, **requiredAndroidSafetyNetAppsVerificationType** and **appActionIfAndroidSafetyNetAppsVerificationFailed** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **iCloudStorageDisabled** and **chooseYourLockScreenDisabled** properties to the [depMacOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depmacosenrollmentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [iosLobAppProvisioningConfiguration](/graph/api/resources/intune-apps-ioslobappprovisioningconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **allowedOutboundClipboardSharingExceptionLength** property to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **fastFirstSignIn** property to the [sharedPCConfiguration](/graph/api/resources/intune-deviceconfig-sharedpcconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **tpmRequired** property to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **firewallRules** property to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **authenticationWebSignIn**, **privacyDisableLaunchExperience** and **appManagementPackageFamilyNamesToLaunchAfterLogOn** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **defenderScheduleScanDay** property from the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceType** property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **resourceName**, **skuNumber**, **systemFamily**, **azureActiveDirectoryDeviceId** and **managedDeviceId** properties to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **edgeKioskResetAfterIdleTimeInMinutes** property from the [windowsKioskConfiguration](/graph/api/resources/intune-deviceconfig-windowskioskconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **userWindowsUpdateScanAccess** and **updateNotificationLevel** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **teams** property to the [excludedApps](/graph/api/resources/intune-apps-excludedapps?view=graph-rest-beta) complex type|
|Addition|beta|Added the **autoLaunch** property to the [windowsKioskAppBase](/graph/api/resources/intune-deviceconfig-windowskioskappbase?view=graph-rest-beta) complex type|
|Addition|beta|Added the **allowAccessToDownloadsFolder** property to the [windowsKioskMultipleApps](/graph/api/resources/intune-deviceconfig-windowskioskmultipleapps?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lowSecurityBiometric** member to the [androidDeviceOwnerRequiredPasswordType](/graph/api/resources/intune-deviceconfig-androiddeviceownerrequiredpasswordtype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **androidBootloaderUnlocked** and **androidFactoryRomModified** members to the [managedAppFlaggedReason](/graph/api/resources/intune-mam-managedappflaggedreason?view=graph-rest-beta) enum type|

### Education
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Add the new [educationCategory](/graph/api/resources/educationCategory?view=graph-rest-beta) resource.|
| Addition | beta | Add APIs to manage [educationCategory](/graph/api/resources/educationCategory?view=graph-rest-beta) resources on [educationClass](/graph/api/resources/educationClass?view=graph-rest-beta) and [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta).|
| Addition | beta | Add the new [educationFormResource](/graph/api/resources/educationFormResource?view=graph-rest-beta) resource.|
| Addition | beta | Add the **recipients** property on the [educationAssignmentIndividualRecipient](/graph/api/resources/educationAssignmentIndividualRecipient?view=graph-rest-beta) resource.|

### Files

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the **subscriptions** navigation property to the [driveItem](/graph/api/resources/driveItem?view=graph-rest-1.0) entity |
| Addition        | Beta        | Added the **expirationDateTime** property to the [driveItem_invite](/graph/api/resources/driveItem_invite?view=graph-rest-beta) DateTimeOffset type. |
| Addition        | Beta        | Added the **password** property to the [driveItem_invite](/graph/api/resources/driveItem_invite?view=graph-rest-beta) string type. |

### Financials

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added financials APIs for Dynamics 365 Business Central. For details, see the [Financials API reference](/graph/api/resources/dynamics-graph-reference?view=graph-rest-1.0).|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Add the **passwordNotificationWindowInDays** and **passwordValidityPeriodInDays** properties on the [domain](/graph/api/resources/domain?view=graph-rest-1.0) resource.|
| Addition | beta and v1.0 | Add the **complianceExpirationDateTime**, **profileType** and **systemLabels** properties on the [device](/graph/api/resources/device?view=graph-rest-1.0) resource.|
| Addition | beta and v1.0 | Add the **isResourceAccount** property on the [user](/graph/api/resources/user?view=graph-rest-1.0) resource.|

### Identity and access | Identity and sign-in

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta| Introduced [Confirm riskyUsers compromised](/graph/api/resources/riskyusers-confirmcompromised?view=graph-rest-beta) method, which allows admins to confirm users as compromised in Azure AD Identity Protection. |
|Addition |beta| Introduced [Dismiss riskyUsers](/graph/api/resources/riskyusers-dismiss?view=graph-rest-beta) method, which allows admins to dismiss users marked as risky in Azure AD Identity Protection. |
|Addition |beta| Introduced **isProcessing** property to the [riskyUser](/graph/api/resources/riskyuser?view=graph-rest-beta) resource. |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Removal |beta| Removed the **deleted** property from [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta). Use **deletedDateTime** instead. |
| Addition | beta | Added the [schedule](/api-reference/beta/resources/schedule.md), [schedulingGroup](/api-reference/beta/resources/schedulinggroup.md), [shift](/api-reference/beta/resources/shift.md), [timeOffReason](/api-reference/beta/resources/timeoffreason.md) and [timeOff](/api-reference/beta/resources/timeoff.md) resources and associated methods. |


## February 2019

### Calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Change | Beta | Changed the data type of the following parameters of [findMeetingTimes](/graph/api/user-findmeetingtimes?view=graph-rest-beta): <br>**attendees**: from **attendeeBase** to [attendeeDataModel](/graph/api/resources/attendeedatamodel?view=graph-rest-beta) <br>**locationConstraint**: from **locationConstraint** to [locationConstraints](/graph/api/resources/locationconstraints?view=graph-rest-beta) <br> **timeConstraint**: from **timeConstraint** to [findMeetingTimesTimeConstraints](/graph/api/resources/findmeetingtimestimeconstraints?view=graph-rest-beta)|
|Change | Beta | Changed the return type of **findMeetingTimes** from **meetingTimeSuggestionsResult** to [findMeetingTimesResponse](/graph/api/resources/findmeetingtimesresponse?view=graph-rest-beta) |
|Change | Beta | Changed the response payload of **findMeetingTimes** to exclude the **type** of each attendee that identifies whether the attendee is required, optional, or is a resource |
|Change | Beta | Changed the base type of [locationConstraintItem](/graph/api/resources/locationconstraintitem?view=graph-rest-beta) from [location](/graph/api/resources/location?view=graph-rest-beta) to [locationDataModel](/graph/api/resources/locationdatamodel?view=graph-rest-beta) |
|Change | Beta | Changed the data types of the following properties of [meetingTimeSuggestion](/graph/api/resources/meetingtimesuggestion?view=graph-rest-beta): <br> **attendeeAvailability**: from collection of **attendeeAvailability** to collection of [attendeeAvailabilityDataModel](/graph/api/resources/attendeeavailabilitydatamodel?view=graph-rest-beta) <br> **locations**: from collection of [location](/graph/api/resources/location?view=graph-rest-beta) to collection of [locationDataModel](/graph/api/resources/locationdatamodel?view=graph-rest-beta) <br> **meetingTimeSlot**: from [timeSlot](/graph/api/resources/timeslot?view=graph-rest-beta) to [meetingTimeSlotDataModel](/graph/api/resources/meetingtimeslotdatamodel?view=graph-rest-beta) <br> **organizerAvailability**: from **freeBusyStatus** to **availabilityStatus** |
|Addition | Beta | New complex types: <br> [attendeeAvailabilityDataModel](/graph/api/resources/attendeeavailabilitydatamodel?view=graph-rest-beta) <br> [attendeeDataModel](/graph/api/resources/attendeedatamodel?view=graph-rest-beta) <br> [findMeetingTimesResponse](/graph/api/resources/findmeetingtimesresponse?view=graph-rest-beta) <br> [findMeetingTimesTimeConstraints](/graph/api/resources/findmeetingtimestimeconstraints?view=graph-rest-beta) <br> [locationConstraints](/graph/api/resources/locationconstraints?view=graph-rest-beta) <br> [locationDataModel](/graph/api/resources/locationdatamodel?view=graph-rest-beta) <br> [meetingTimeSlotDataModel](/graph/api/resources/meetingtimeslotdatamodel?view=graph-rest-beta) <br> [postalAddress](/graph/api/resources/postaladdress?view=graph-rest-beta) <br> [searchWindowTimeSlot](/graph/api/resources/searchwindowtimeslot?view=graph-rest-beta)|
|Addition | Beta | New enumerations: <br> **addressType** <br> **availabilityStatus** |
|Addition | Beta | Added the **order** property to [meetingTimeSuggestion](/graph/api/resources/meetingtimesuggestion?view=graph-rest-beta) |
|Deletion | Beta | Removed the following complex types: <br> **attendeeAvailability** <br> **locationConstraint** <br> **meetingTimeSuggestionsResult** <br>**timeConstraint** |

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidOmaCpConfiguration](/graph/api/resources/intune-deviceconfig-androidomacpconfiguration?view=graph-rest-beta)<br/>[managedDeviceEncryptionState](/graph/api/resources/intune-deviceconfig-manageddeviceencryptionstate?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deliveryOptimizationBandwidth](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidth?view=graph-rest-beta)<br/>[deliveryOptimizationBandwidthAbsolute](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidthabsolute?view=graph-rest-beta)<br/>[deliveryOptimizationBandwidthBusinessHoursLimit](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidthbusinesshourslimit?view=graph-rest-beta)<br/>[deliveryOptimizationBandwidthHoursWithPercentage](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidthhourswithpercentage?view=graph-rest-beta)<br/>[deliveryOptimizationBandwidthPercentage](/graph/api/resources/intune-deviceconfig-deliveryoptimizationbandwidthpercentage?view=graph-rest-beta)<br/>[deliveryOptimizationGroupIdCustom](/graph/api/resources/intune-deviceconfig-deliveryoptimizationgroupidcustom?view=graph-rest-beta)<br/>[deliveryOptimizationGroupIdSource](/graph/api/resources/intune-deviceconfig-deliveryoptimizationgroupidsource?view=graph-rest-beta)<br/>[deliveryOptimizationGroupIdSourceOptions](/graph/api/resources/intune-deviceconfig-deliveryoptimizationgroupidsourceoptions?view=graph-rest-beta)<br/>[deliveryOptimizationMaxCacheSize](/graph/api/resources/intune-deviceconfig-deliveryoptimizationmaxcachesize?view=graph-rest-beta)<br/>[deliveryOptimizationMaxCacheSizeAbsolute](/graph/api/resources/intune-deviceconfig-deliveryoptimizationmaxcachesizeabsolute?view=graph-rest-beta)<br/>[deliveryOptimizationMaxCacheSizePercentage](/graph/api/resources/intune-deviceconfig-deliveryoptimizationmaxcachesizepercentage?view=graph-rest-beta)<br/>[encryptionReportPolicyDetails](/graph/api/resources/intune-deviceconfig-encryptionreportpolicydetails?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[advancedBitLockerState](/graph/api/resources/intune-deviceconfig-advancedbitlockerstate?view=graph-rest-beta)<br/>[deliveryOptimizationGroupIdOptionsType](/graph/api/resources/intune-deviceconfig-deliveryoptimizationgroupidoptionstype?view=graph-rest-beta)<br/>[deliveryOptimizationRestrictPeerSelectionByOptions](/graph/api/resources/intune-deviceconfig-deliveryoptimizationrestrictpeerselectionbyoptions?view=graph-rest-beta)<br/>[deviceTypes](/graph/api/resources/intune-deviceconfig-devicetypes?view=graph-rest-beta)<br/>[edgeKioskModeRestrictionType](/graph/api/resources/intune-deviceconfig-edgekioskmoderestrictiontype?view=graph-rest-beta)<br/>[encryptionReadinessState](/graph/api/resources/intune-deviceconfig-encryptionreadinessstate?view=graph-rest-beta)<br/>[encryptionState](/graph/api/resources/intune-deviceconfig-encryptionstate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **roleScopeTagIds** property to the [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) entity|
|Addition|beta|Added the **autoFillForceAuthentication**, **cellularBlockPlanModification**, **classroomForceAutomaticallyJoinClasses**, **classroomForceUnpromptedAppAndDeviceLock**, **esimBlockModification**, **proximityBlockSetupToNewDevice**, **softwareUpdatesEnforcedDelayInDays** and **softwareUpdatesForceDelayed** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **softwareUpdatesEnforcedDelayInDays**, **softwareUpdatesForceDelayed** and **contentCachingBlocked** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **licensingType** property to the [microsoftStoreForBusinessApp](/graph/api/resources/intune-apps-microsoftstoreforbusinessapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderSecurityCenterDisableClearTpmUI**, **defenderSecurityCenterDisableNotificationAreaUI**, **defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI**, **defenderAdobeReaderLaunchChildProcess** and **defenderOfficeCommunicationAppsLaunchChildProcess** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **edgeKioskModeRestriction**, **edgeKioskResetAfterIdleTimeInMinutes**, **defenderScheduleScanEnableLowCpuPriority**, **defenderDisableCatchupQuickScan**, **defenderDisableCatchupFullScan** and **edgeBlockSearchEngineCustomization** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **enableWhiteGlove** property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **restrictPeerSelectionBy**, **groupIdSource**, **bandwidthMode**, **backgroundDownloadFromHttpDelayInSeconds**, **foregroundDownloadFromHttpDelayInSeconds**, **minimumRamAllowedToPeerInGigabytes**, **minimumDiskSizeAllowedToPeerInGigabytes**, **minimumFileSizeToCacheInMegabytes**, **minimumBatteryPercentageAllowedToUpload**, **modifyCacheLocation**, **maximumCacheAgeInDays**, **maximumCacheSize** and **vpnPeerCaching** properties to the [windowsDeliveryOptimizationConfiguration](/graph/api/resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **lastCheckInDateTime** property to the [windowsInformationProtectionWipeAction](/graph/api/resources/intune-mam-windowsinformationprotectionwipeaction?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceEncryptionStates** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **endpointProtection** and **officeApps** properties to the [configurationManagerClientEnabledFeatures](/graph/api/resources/intune-devices-configurationmanagerclientenabledfeatures?view=graph-rest-beta) complex type|
|Addition|beta|Added the **productName** and **publisher** properties to the [win32LobAppMsiInformation](/graph/api/resources/intune-apps-win32lobappmsiinformation?view=graph-rest-beta) complex type|
|Addition|beta|Added the **warn** member to the [managedAppRemediationAction](/graph/api/resources/intune-mam-managedappremediationaction?view=graph-rest-beta) enum type|

### Education

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta|Introduced new relatedContacts property on [educationUser](/graph/api/resources/educationUser?view=graph-rest-beta).|
|Addition |v1.0|Introduced new relatedContacts property on [educationUser](/graph/api/resources/educationUser?view=graph-rest-1.0).|

### Files

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **expirationDateTime** property to the [driveItem_invite](/graph/api/resources/driveItem_invite?view=graph-rest-beta) DateTimeOffset type. |
| Addition        | Beta        | Added the **password** property to the [driveItem_invite](/graph/api/resources/driveItem_invite?view=graph-rest-beta) string type. |

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added new resource type [directoryObjectPartnerReference](/graph/api/resources/directoryobjectpartnerreference?view=graph-rest-1.0). |
| Addition | beta and v1.0 | Add the **createdDateTime** property on [organization](/graph/api/resources/organization?view=graph-rest-1.0). |
| Change | beta and v1.0 | Updated the **companyName** property on the [user](/graph/api/resources/user?view=graph-rest-1.0) resource to be writeable. |
| Change | beta | The [targetResource](/graph/api/resources/targetresource?view=graph-rest-beta) type now includes properties previously available to derived types that are no longer supported. |
| Deletion | beta | The following derived types are no longer supported and have been removed: **targetResourceDevice**, **targetResourceDirectory**, **targetResourceGroup**, **targetResourcePolicy**, **targetResourceRole**, **targetResourceServicePrincipal**, **targetResourceUser**, and **targetResourceOther**. |
| Addition |beta | Add the **passwordNotificationWindowInDays** and **passwordValidityPeriodInDays** properties on the [domain](/graph/api/resources/domain?view=graph-rest-beta) resource.|

### Notes

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | beta and v1.0 | Added the [getNotebookFromWebUrl](/graph/api/notebook-getnotebookfromweburl?view=graph-rest-1.0) method. |

### Security

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the threat intelligence (TI) indicator APIs to the [security API](/graph/api/resources/security-api-overview?view=graph-rest-beta), including the following resources and operations:<br/>[tiindicator](/graph/api/resources/tiindicator?view=graph-rest-beta) (and related entities)<br/> [Get tiIndicator](/graph/api/tiindicator-get?view=graph-rest-beta)<br/>[Create tiIndicator](/graph/api/tiindicators-post?view=graph-rest-beta)<br/>[List tiIndicators](/graph/api/tiindicators-list?view=graph-rest-beta)<br/>[Update tiIndicator](/graph/api/tiindicator-update?view=graph-rest-beta) <br/>[Delete tiIndicator](/graph/api/tiindicator-delete?view=graph-rest-beta) <br/>[deleteTiIndicators](/graph/api/tiindicator-deletetiindicators?view=graph-rest-beta) <br/>[deleteTiIndicatorsByExternalId](/graph/api/tiindicator-deletetiindicatorsbyexternalid?view=graph-rest-beta) <br/>[submitTiIndicators](/graph/api/tiindicator-submittiindicators?view=graph-rest-beta) <br/>[updateTiIndicators](/graph/api/tiindicator-updatetiindicators?view=graph-rest-beta)|
| Addition        | Beta       | Added the security action APIs to the [security API](/graph/api/resources/security-api-overview?view=graph-rest-beta), including the following resources and operations:<br/>[securityAction](/graph/api/resources/securityaction?view=graph-rest-beta) (and related entities)<br/> [Get securityAction](/graph/api/securityaction-get?view=graph-rest-beta)<br/>[Create securityAction](/graph/api/securityactions-post?view=graph-rest-beta)<br/>[List securityAction](/graph/api/securityactions-list?view=graph-rest-beta)<br/>[Cancel securityAction](/graph/api/securityaction-cancelsecurityaction?view=graph-rest-beta)
| Addition        | Beta        | Introduced new complex type [historyStates](/graph/api/resources/alerthistorystate?view=graph-rest-beta) collection to alert. </br>Added [updateAlerts](/graph/api/alert-updatealerts?view=graph-rest-beta) functionality to update multiple alerts in one request. |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta and v1.0| Added the **internalId** property to the [team](/graph/api/resources/team?view=graph-rest-1.0) resource.|
|Addition |beta and v1.0| Added support for configuring Word, Excel, PowerPoint, PDF, and document library [tabs](teams-configuring-builtin-tabs.md). |
|Addition |beta| Introduced the [Send a message to a channel](/graph/api/channel-post-messages?view=graph-rest-beta) API. |
|Addition |beta| Introduced the [Reply to a message in a channel](/graph/api/channel-post-messagereply?view=graph-rest-beta) API. |
|Deletion |beta| Removed the POST /teams/{id}/channels/{id}/chatThreads API. Use [Create a message in a channel](/graph/api/channel-post-chatmessage?view=graph-rest-beta) instead. |
|Addition |beta | Added support for application permissions to the [installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-beta) resource.|


## January 2019

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[appleVppTokenTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-applevpptokentroubleshootingevent?view=graph-rest-beta)<br/>[appLogCollectionRequest](/graph/api/resources/intune-devices-applogcollectionrequest?view=graph-rest-beta)<br/>[windowsUpdateState](/graph/api/resources/intune-deviceconfig-windowsupdatestate?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[appLogCollectionDownloadDetails](/graph/api/resources/intune-devices-applogcollectiondownloaddetails?view=graph-rest-beta)<br/>**deviceManagementTroubleshootingErrorDetails**<br/>[deviceManagementTroubleshootingErrorResource](/graph/api/resources/intune-troubleshooting-devicemanagementtroubleshootingerrorresource?view=graph-rest-beta)<br/>[win32LobAppAssignmentSettings](/graph/api/resources/intune-apps-win32lobappassignmentsettings?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[appLogDecryptionAlgorithm](/graph/api/resources/intune-devices-applogdecryptionalgorithm?view=graph-rest-beta)<br/>[appLogUploadState](/graph/api/resources/intune-devices-apploguploadstate?view=graph-rest-beta)<br/>[win32LobAppNotification](/graph/api/resources/intune-apps-win32lobappnotification?view=graph-rest-beta)<br/>[windowsUpdateStatus](/graph/api/resources/intune-deviceconfig-windowsupdatestatus?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **createDownloadUrl** action on [appLogCollectionRequest](/graph/api/resources/intune-devices-applogcollectionrequest?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**deviceManagementApplicabilityRuleOsEdition**<br/>**deviceManagementApplicabilityRuleOsVersion**<br/>|
|Addition|beta|Added the **passwordSignInFailureCountBeforeFactoryReset** property to the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordSignInFailureCountBeforeFactoryReset** property to the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordSignInFailureCountBeforeFactoryReset** property to the [androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **defaultProfileDisplayName** property from the [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) entity|
|Addition|beta|Added the **runAs32Bit** property to the [deviceManagementScript](/graph/api/resources/intune-devices-devicemanagementscript?view=graph-rest-beta) entity|
|Addition|beta|Added the **troubleshootingErrorDetails**, **eventName** and **additionalInformation** properties to the [deviceManagementTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-devicemanagementtroubleshootingevent?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [macOSCertificateProfileBase](/graph/api/resources/intune-deviceconfig-macoscertificateprofilebase?view=graph-rest-beta) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **certificateStore** and **customSubjectAlternativeNames** properties to the [macOSScepCertificateProfile](/graph/api/resources/intune-deviceconfig-macosscepcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **officeConfigurationXml** property to the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **createdDateTime** property to the [organization](/graph/api/resources/intune-onboarding-organization?view=graph-rest-beta) entity|
|Addition|beta|Added the **bitLockerAllowStandardUserEncryption** property to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **localSecurityOptionsEnableAdministratorAccount**, **localSecurityOptionsEnableGuestAccount** and **lanManagerWorkstationEnableInsecureGuestLogons** properties from the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **useSecurityKeyForSignin** property to the [windowsIdentityProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windowsidentityprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **mobileAppTroubleshootingEvents** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **appLogCollectionRequests** navigation property to the [mobileAppTroubleshootingEvent](/graph/api/resources/intune-devices-mobileapptroubleshootingevent?view=graph-rest-beta) entity|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |v1.0|To support configuring an identity provider in an Azure AD B2C tenant, introduced new resource type [identityProvider](/graph/api/resources/identityprovider?view=graph-rest-1.0) entity and the [create](/graph/api/identityprovider-post-identityproviders?view=graph-rest-1.0), [list](/graph/api/identityprovider-list?view=graph-rest-1.0), [get](/graph/api/identityprovider-get?view=graph-rest-1.0), [update](/graph/api/identityprovider-update?view=graph-rest-1.0), and [delete](/graph/api/identityprovider-delete?view=graph-rest-1.0) operations.|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added new method transitiveMembers on [groups](/graph/api/group-list-transitivemembers?view=graph-rest-1.0). This method returns a flat list of members including nested members.|
| Addition | v1.0 | Added new method transitiveMemberOf on [users](/graph/api/user-list-transitivemembersof?view=graph-rest-1.0), [groups](/graph/api/group-list-transitivemembersof?view=graph-rest-beta) and [devices](/graph/api/device-list-transitivemembersof?view=graph-rest-1.0).|
| Addition | v1.0 | Added new properties to [users](/graph/api/resources/user?view=graph-rest-1.0): **employeeId**, **faxNumber**, **onPremisesDistinguishedName**, **showInAddressList** and **otherMails**.|
| Addition | v1.0 | Added the **forceChangePasswordNextSignInWithMfa** property to the [passwordProfile](/graph/api/resources/passwordprofile?view=graph-rest-1.0) complex type.|
| Addition | v1.0 | Added the **licenseAssignmentStates** property to the [User](/graph/api/resources/user?view=graph-rest-1.0) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | v1.0 | Added the **licenseAssignmentState** resource for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | v1.0 | Added the **assignedLicenses**, **licenseProcessingState** and **hasMembersWithLicenseErrors** properties and **membersWithLicenseErrors** relationship to [Group](/graph/api/resources/group?view=graph-rest-1.0) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | beta | Added the **createdDateTime** property to the [user](/graph/api/resources/user?view=graph-rest-beta) resource.|

### Reports

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition        | Beta  | Added the **office365Active** and **office365Inactive** properties to the [office365ServicesUserCounts](/graph/api/resources/office365ServicesUserCounts?view=graph-rest-beta) entity.|

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta| Added educationStandard, educationClass, educationProfessionalLearningCommunity, educationStaff, and unknownFutureValue to the [teamSpecialization](/graph/api/resources/teamspecialization?view=graph-rest-beta) enum.|


## December 2018

### Identity and access | Identity and sign-in

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition |v1.0| Added new entity [dataPolicyOperation](/graph/api/resources/datapolicyoperation?view=graph-rest-1.0). This represents a submitted data policy operation for tracking purposes.
|Addition |v1.0| Added the [exportPersonalData](/graph/api/user-exportpersonaldata?view=graph-rest-1.0) action on [users](/graph/api/resources/users?view=graph-rest-1.0). This action submits a data policy operation request to export personal data stored by Microsoft for a user. |
|Addition |v1.0| Added method [dataPolicyOperations](/graph/api/datapolicyoperation-get?view=graph-rest-1.0). This retrieves properties of the dataPolicyOperation object.|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added new property `expirationDateTime` to [groups](https://docs.microsoft.com/graph/api/resources/group?view=graph-rest-beta) for [group expiration](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-lifecycle).|
| Addition | beta | Added new resource type [directoryObjectPartnerReference](/graph/api/resources/directoryobjectpartnerreference?view=graph-rest-beta).|
| Addition | beta | Added the `createdDateTime` property to the [organization](/graph/api/resources/organization?view=graph-rest-beta) resource.|
| Addition | v1.0 | Added method `memberOf` to get a [devices](/graph/api/resources/device?view=graph-rest-1.0) direct [membership](/graph/api/device-list-memberOf?view=graph-rest-1.0). This method has been added for getting the list of memberships including nested memberships.|
| Change    | Beta | Restructured the [organizational contacts](/graph/api/resources/orgcontact?view=graph-rest-beta) resource. The physical address properties (`city`, `country`, `postalCode`, `streetAddress`, and `state`) and `officeLocation` are now in an `addresses` collection (of new [physicalOfficeAddress](/graph/api/resources/physicalofficeaddress?view=graph-rest-beta) resource type), and `mobilePhone`, `businessPhones` and `faxNumber` are now in a `phones` collection. `companyName` and `imAddresses` have also been added|

### Identity and access | Governance

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added property `registeredRoot` to the [governanceResource](/graph/api/resources/governanceresource?view=graph-rest-beta) entity.|
| Change | beta | Renamed property `onboardDateTime` of the [governanceResource](/graph/api/resources/governanceresource?view=graph-rest-beta) entity to `registeredDateTime`.|
| Addition | beta | Added new action [register resource](/graph/api/governanceresource-register?view=graph-rest-beta).|
| Removal | beta | Removed the `isPermanent` property on [governanceRoleAssignment](/graph/api/resources/governanceroleassignment?view=graph-rest-beta) entity.|
| Removal | beta | Removed the `roleAssignmentStartDateTime` property on [governanceRoleAssignmentRequest](/graph/api/resources/governanceroleassignmentrequest?view=graph-rest-beta) entity.|
| Removal | beta | Removed the `roleAssignmentEndDateTime` property on [governanceRoleAssignmentRequest](/graph/api/resources/governanceroleassignmentrequest?view=graph-rest-beta) entity.|

### Security

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Introduced new complex type [complianceInformation](/graph/api/complianceInformation/team?view=graph-rest-beta).|
| Addition        | Beta        | Introduced new complex type [certificationControl](/graph/api/certificationControl/team?view=graph-rest-beta).|

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta| Introduced new resource type [teamsTemplate](/graph/api/resources/teamstemplate?view=graph-rest-beta).|
|Addition |beta| Introduced new resource type [teamSpecialization](/graph/api/resources/teamspecialization?view=graph-rest-beta).|
|Addition |beta| Added the isFavoriteByDefault, email, and webUrl properties to [channel](/graph/api/resources/channel?view=graph-rest-beta).|
|Addition |beta| Added the displayName property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the description property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the classification property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the [specialization](/graph/api/resources/teamspecialization?view=graph-rest-beta) property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the [visibility](/graph/api/resources/teamvisibilitytype?view=graph-rest-beta) property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the [template](/graph/api/resources/teamstemplate?view=graph-rest-beta) property to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Added the owners collection to [team](/graph/api/resources/team?view=graph-rest-beta).|
|Addition |beta| Introduced new enum member unknownFutureValue to teamVisibilityType.|
|Addition |beta| Introduced new enum member unknownFutureValue to giphyRatingType.|
|Addition |beta| Introduced new enum member unknownFutureValue to teamsAsyncOperationType.|
|Addition |beta| Introduced new enum member unknownFutureValue to teamsAsyncOperationStatus.|
|Addition |beta| Introduced new enum member unknownFutureValue to teamsAppDistributionMethod.|
|Addition |beta| Introduced new resource [/teamsTemplates](/graph/api/resources/teamstemplate?view=graph-rest-beta).|
|Addition | v1.0 | Added admin permissions support to [team](/graph/api/resources/team?view=graph-rest-1.0), [channel](/graph/api/resources/channel?view=graph-rest-1.0), and [tab](/graph/api/resources/teamstab?view=graph-rest-1.0) operations. |


## November 2018

### Identity and access | Identity and sign-in

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added new  **progress** property to [dataPolicyOperation](/graph/api/resources/dataPolicyOperation?view=graph-rest-beta). This specifies the progress of an operation.

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the [forceDelete](/graph/api/domain-forcedelete?view=graph-rest-1.0) action to [domains](/graph/api/resources/domain?view=graph-rest-1.0).|
| Addition | beta | Added new method transitiveMembers on [groups](/graph/api/group-list-transitivemembers?view=graph-rest-beta). This method returns a flat list of members including nested members.|
| Addition | beta | Added new method transitiveMemberOf on [users](/graph/api/user-list-transitivemembersof?view=graph-rest-beta), [groups](/graph/api/group-list-transitivemembersof?view=graph-rest-beta), [devices](/graph/api/device-list-transitivemembersof?view=graph-rest-beta) and [service principals](/graph/api/serviceprincipal-list-transitivemembersof?view=graph-rest-beta).|
| Addition | beta | Added method memberOf to get a devices direct [membership](/graph/api/device-list-members?view=graph-rest-beta). This method has been added for getting the list of memberships including nested memberships.|
| Addition | beta | Added new properties to [users](/graph/api/resources/user?view=graph-rest-beta): **faxNumber**, **onPremisesDistinguishedName**, and **otherMails**.|
| Addition | beta | Added the **forceChangePasswordNextSignInWithMfa** property to the [passwordProfile](/graph/api/resources/passwordprofile?view=graph-rest-beta) complex type.|
| Addition    | beta | Added the 'externalUserState' and 'externalUserStateChangeDateTime' properties to the [user](/graph/api/resources/user?view=graph-rest-beta) object.|

### Reports

| Change type | Version                                    | Description                              |
| :---------- | :----------------------------------------- | :--------------------------------------- |
| Addition    | Beta version in Microsoft Graph China operated by 21Vianet | Added the following APIs:<br>[getEmailActivityUserDetail](/graph/api/reportroot-getemailactivityuserdetail?view=graph-rest-beta)<br>[getEmailActivityCounts](/graph/api/reportroot-getemailactivitycounts?view=graph-rest-beta)<br>[getEmailActivityUserCounts](/graph/api/reportroot-getemailactivityusercounts?view=graph-rest-beta)<br>[getEmailAppUsageUserDetail](/graph/api/reportroot-getemailappusageuserdetail?view=graph-rest-beta)<br>[getEmailAppUsageAppsUserCounts](/graph/api/reportroot-getemailappusageappsusercounts?view=graph-rest-beta)<br>[getEmailAppUsageUserCounts](/graph/api/reportroot-getemailappusageusercounts?view=graph-rest-beta)<br>[getEmailAppUsageVersionsUserCounts](/graph/api/reportroot-getemailappusageversionsusercounts?view=graph-rest-beta)<br>[getMailboxUsageDetail](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-beta)<br>[getMailboxUsageMailboxCounts](/graph/api/reportroot-getmailboxusagemailboxcounts?view=graph-rest-beta)<br>[getMailboxUsageQuotaStatusMailboxCounts](/graph/api/reportroot-getmailboxusagequotastatusmailboxcounts?view=graph-rest-beta)<br>[getMailboxUsageStorage](/graph/api/reportroot-getmailboxusagestorage?view=graph-rest-beta)<br>[getOffice365ActivationsUserDetail](/graph/api/reportroot-getoffice365activationsuserdetail?view=graph-rest-beta)<br>[getOffice365ActivationCounts](/graph/api/reportroot-getoffice365activationcounts?view=graph-rest-beta)<br>[getOffice365ActivationsUserCounts](/graph/api/reportroot-getoffice365activationsusercounts?view=graph-rest-beta)<br>[getOffice365ActiveUserDetail](/graph/api/reportroot-getoffice365activeuserdetail?view=graph-rest-beta)<br>[getOffice365ActiveUserCounts](/graph/api/reportroot-getoffice365activeusercounts?view=graph-rest-beta)<br>[getOffice365ServicesUserCounts](/graph/api/reportroot-getoffice365servicesusercounts?view=graph-rest-beta)<br>[getOffice365GroupsActivityDetail](/graph/api/reportroot-getoffice365groupsactivitydetail?view=graph-rest-beta)<br> [getOffice365GroupsActivityCounts](/graph/api/reportroot-getoffice365groupsactivitycounts?view=graph-rest-beta)<br>[getOffice365GroupsActivityGroupCounts](/graph/api/reportroot-getoffice365groupsactivitygroupcounts?view=graph-rest-beta)<br>[getOffice365GroupsActivityStorage](/graph/api/reportroot-getoffice365groupsactivitystorage?view=graph-rest-beta)<br>[getOffice365GroupsActivityFileCounts](/graph/api/reportroot-getoffice365groupsactivityfilecounts?view=graph-rest-beta)<br>[getOneDriveActivityUserDetail](/graph/api/reportroot-getonedriveactivityuserdetail?view=graph-rest-beta)<br>[getOneDriveActivityUserCounts](/graph/api/reportroot-getonedriveactivityusercounts?view=graph-rest-beta)<br>[getOneDriveActivityFileCounts](/graph/api/reportroot-getonedriveactivityfilecounts?view=graph-rest-beta)<br>[getOneDriveUsageAccountDetail](/graph/api/reportroot-getonedriveusageaccountdetail?view=graph-rest-beta)<br>[getOneDriveUsageAccountCounts](/graph/api/reportroot-getonedriveusageaccountcounts?view=graph-rest-beta)<br>[getOneDriveUsageFileCounts](/graph/api/reportroot-getonedriveusagefilecounts?view=graph-rest-beta)<br>[getOneDriveUsageStorage](/graph/api/reportroot-getonedriveusagestorage?view=graph-rest-beta)<br>[getSharePointActivityUserDetail](/graph/api/reportroot-getsharepointactivityuserdetail?view=graph-rest-beta)<br>[getSharePointActivityFileCounts](/graph/api/reportroot-getsharepointactivityfilecounts?view=graph-rest-beta)<br>[getSharePointActivityUserCounts](/graph/api/reportroot-getsharepointactivityusercounts?view=graph-rest-beta)<br>[getSharePointActivityPages](/graph/api/reportroot-getsharepointactivitypages?view=graph-rest-beta)<br>[getSharePointSiteUsageDetail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-beta)<br>[getSharePointSiteUsageFileCounts](/graph/api/reportroot-getsharepointsiteusagefilecounts?view=graph-rest-beta)<br>[getSharePointSiteUsageSiteCounts](/graph/api/reportroot-getsharepointsiteusagesitecounts?view=graph-rest-beta)<br>[getSharePointSiteUsageStorage](/graph/api/reportroot-getsharepointsiteusagestorage?view=graph-rest-beta)<br>[getSharePointSiteUsagePages](/graph/api/reportroot-getsharepointsiteusagepages?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserDetail](/graph/api/reportroot-getskypeforbusinessactivityuserdetail?view=graph-rest-beta)<br>[getSkypeForBusinessActivityCounts](/graph/api/reportroot-getskypeforbusinessactivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessActivityUserCounts](/graph/api/reportroot-getskypeforbusinessactivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserDetail](/graph/api/reportroot-getskypeforbusinessdeviceusageuserdetail?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageDistributionUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusagedistributionusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessDeviceUsageUserCounts](/graph/api/reportroot-getskypeforbusinessdeviceusageusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityUserCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessOrganizerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessorganizeractivityminutecounts?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityUserCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessParticipantActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinessparticipantactivityminutecounts?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivitycounts?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityUserCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityusercounts?view=graph-rest-beta)<br>[getSkypeForBusinessPeerToPeerActivityMinuteCounts](/graph/api/reportroot-getskypeforbusinesspeertopeeractivityminutecounts?view=graph-rest-beta). |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |v1.0| Introduced new resource type [team](/graph/api/resources/team?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [channel](/graph/api/resources/channel?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [teamsApp](/graph/api/resources/teamsapp?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [teamsAppDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [teamsAppInstallation](/graph/api/resources/teamsappinstallation?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new resource type [teamsAsyncOperation](/graph/api/resources/teamsasyncoperation?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new complex type [teamGuestSettings](/graph/api/resources/teamguestsettings?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new complex type [teamMemberSettings](/graph/api/resources/teammembersettings?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new complex type [teamMessagingSettings](/graph/api/resources/teammessagingsettings?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new complex type [teamFunSettings](/graph/api/resources/teamfunsettings?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new action [Clone team](/graph/api/team-clone?view=graph-rest-1.0). |
|Addition |v1.0| Introduced new action [Archive team](/graph/api/team-archive?view=graph-rest-1.0).|
|Addition |v1.0| Introduced new action [Unarchive team](/graph/api/team-unarchive?view=graph-rest-1.0). |
|Addition         | Beta          | Added application permissions support to [clone team](/graph/api/team-clone?view=graph-rest-beta). |
|Addition |beta| Introduced [/teams/{id}/installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-beta), which will replace /teams/{id}/apps with some differences in payload. |
|Addition |beta| Introduced [/appCatalogs/teamsApps/{id}/appDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta), which will replace the version property on [/appCatalogs/teamsApps/{id}](/graph/api/resources/teamsapp?view=graph-rest-beta). |
|Change   |beta| Renamed the type of [/appCatalogs/teamsApps](/graph/api/resources/teamsapp?view=graph-rest-beta) from teamsCatalogApp to teamsApp. |
|Change   |beta| Renamed the type of the distributionMethod property on [/appCatalogs/teamsApps](/graph/api/resources/teamsapp?view=graph-rest-beta) from teamsCatalogAppDistributionMethod to teamsAppDistributionMethod  |
|Removal |beta| teamsCatalogAppDistributionMethod has been renamed to teamsAppDistributionMethod  |
|Addition |beta| Introduced [/teams/{id}/installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-beta), which will replace /teams/{id}/apps with some differences in payload. |
|Addition |beta| Added the displayName property to [teamsTab](/graph/api/resources/teamstab?view=graph-rest-beta) |
|Addition |beta| Added the messageId property to [teamsTab](/graph/api/resources/teamstab?view=graph-rest-beta) |
|Addition |beta| Added the teamsApp property to [teamsTab](/graph/api/resources/teamstab?view=graph-rest-beta) |
|Addition |beta| Introduced new resource type [teamsAppInstallation](/graph/api/resources/teamsappinstallation?view=graph-rest-beta).|
|Addition |beta| Introduced new resource type [teamsApp](/graph/api/resources/teamsapp?view=graph-rest-beta).|
|Addition |beta| Introduced new resource type [teamsAppDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta).|
|Addition |beta| Introduced new enum member hiddenMembership to teamVisibilityType.|
|Addition |beta| Introduced new enum member createTeam to teamsAsyncOperationType.|
|Addition |beta| Introduced new enum member teamsAppDistributionMethod.|
|Addition |beta| Introduced new upgrade app action under [/teams/{id}/installedApps](/graph/api/resources/teamsappinstallation?view=graph-rest-beta). |


## October 2018

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the **tenantLockdownRequireNetworkDuringOutOfBoxExperience** property to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **v12_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune-apps-iosminimumoperatingsystem?view=graph-rest-1.0) complex type|
|Addition|beta|Added the **lastReportAggregationDateTime** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added new entities:<br/>[intuneBrandingProfile](/graph/api/resources/intune-wip-intunebrandingprofile?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceAndAppManagementAssignedRoleIds](/graph/api/resources/intune-rbac-deviceandappmanagementassignedroleids?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[applicationGuardEnabledOptions](/graph/api/resources/intune-deviceconfig-applicationguardenabledoptions?view=graph-rest-beta)<br/>[autoRestartNotificationDismissalMethod](/graph/api/resources/intune-deviceconfig-autorestartnotificationdismissalmethod?view=graph-rest-beta)<br/>[meteredConnectionLimitType](/graph/api/resources/intune-deviceconfig-meteredconnectionlimittype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [enableLegacyPcManagement](/graph/api/intune-deviceconfig-devicemanagement-enablelegacypcmanagement?view=graph-rest-beta) action on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [extendFeatureUpdatesPause](/graph/api/intune-deviceconfig-windowsupdateforbusinessconfiguration-extendfeatureupdatespause?view=graph-rest-beta) action on [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the [extendQualityUpdatesPause](/graph/api/intune-deviceconfig-windowsupdateforbusinessconfiguration-extendqualityupdatespause?view=graph-rest-beta) action on [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the [unassignUserFromDevice](/graph/api/intune-enrollment-windowsautopilotdeviceidentity-unassignuserfromdevice?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) |
|Addition|beta|Added the [getAssignedRoleIdsForLoggedInUser](/graph/api/intune-rbac-devicemanagement-getassignedroleidsforloggedinuser?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [getManagedDevicesWithAppFailures](/graph/api/intune-troubleshooting-user-getmanageddeviceswithappfailures?view=graph-rest-beta) function on [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentAbandonmentSummary](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentabandonmentsummary?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentAbandonmentDetails](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentabandonmentdetails?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidForWorkCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidforworkcertificateprofilebase?view=graph-rest-beta) entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidForWorkPkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkpkcscertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore**, **customSubjectAlternativeNames** and **subjectAlternativeNameType** properties to the [androidForWorkScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkscepcertificateprofile?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **subjectAlternativeNameType** property from the [androidWorkProfileCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidworkprofilecertificateprofilebase?view=graph-rest-beta) entity|
|Addition|beta|Added the **subjectAlternativeNameType** property to the [androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilepkcscertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore**, **customSubjectAlternativeNames** and **subjectAlternativeNameType** properties to the [androidWorkProfileScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilescepcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **legacyPcManangementEnabled** property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **pinRequiredOnLaunchInsteadOfBiometric** property from the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **applicationGuardEnabledOptions** property to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **selectedMobileAppIds** property to the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune-onboarding-windows10enrollmentcompletionpageconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **engagedRestartDeadlineInDays**, **engagedRestartSnoozeScheduleInDays**, **engagedRestartTransitionScheduleInDays**, **autoRestartNotificationDismissal**, **scheduleRestartWarningInHours** and **scheduleImminentRestartWarningInMinutes** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **preSharedKey** and **meteredConnectionLimit** properties to the [windowsWifiConfiguration](/graph/api/resources/intune-deviceconfig-windowswificonfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intuneBrandingProfiles** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **v6_0**, **v7_0**, **v7_1**, **v8_0**, **v8_1** and **v9_0** properties to the [androidMinimumOperatingSystem](/graph/api/resources/intune-apps-androidminimumoperatingsystem?view=graph-rest-beta) complex type|
|Addition|beta|Added the **v12_0** property to the [iosMinimumOperatingSystem](/graph/api/resources/intune-apps-iosminimumoperatingsystem?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **runAsLoggedOnUser** property from the [win32LobAppPowerShellScriptDetection](/graph/api/resources/intune-apps-win32lobapppowershellscriptdetection?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [osVersionCount](/graph/api/resources/intune-devices-osversioncount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareCategoryCount](/graph/api/resources/intune-devices-windowsmalwarecategorycount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareExecutionStateCount](/graph/api/resources/intune-devices-windowsmalwareexecutionstatecount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareNameCount](/graph/api/resources/intune-devices-windowsmalwarenamecount?view=graph-rest-beta) complex type|
|Addition|beta|Added the **lastUpdateDateTime** property to the [windowsMalwareStateCount](/graph/api/resources/intune-devices-windowsmalwarestatecount?view=graph-rest-beta) complex type|

### Reports

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Change   |beta| Renamed the property `conditionalAccessPolicies` to `appliedConditionalAccessPolicy`.|
|Addition |beta| Introduced additional risk properties in the [signIn API](/graph/api/resources/signin?view=graph-rest-beta), including `riskDetail`, `riskLevelAggregated`, `riskLevelDuringSignIn`, `riskEventTypes`, and `riskState`.|
|Addition |beta| Introduced additional sign-in properties in the [signIn API](/graph/api/resources/signin?view=graph-rest-beta), including `authenticationProcessingDetails`, `originalRequestID`, `isInteractive`, `tokenIssuerName`, `tokenIssuerType`, `correlationId`, and `processingTimeinMilliseconds`.|
|Removal   |beta| Removed the property `isRisky`.|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added new method transitiveMembers on [groups](/graph/api/group-list-transitivemembers?view=graph-rest-beta). This method returns a flat list of members including nested members.|
| Addition | beta | Added new method transitiveMemberOf on [users](/graph/api/user-list-transitivemembersof?view=graph-rest-beta), [groups](/graph/api/group-list-transitivemembersof?view=graph-rest-beta), [devices](/graph/api/device-list-transitivemembersof?view=graph-rest-beta) and [service principals](/graph/api/serviceprincipal-list-transitivemembersof?view=graph-rest-beta).|
| Addition | beta | Added method memberOf to get a devices direct [membership](/graph/api/device-list-members?view=graph-rest-beta). This method has been added for getting the list of memberships including nested memberships.|
| Addition | beta | Added new properties to [users](/graph/api/resources/user?view=graph-rest-beta): **faxNumber**, **onPremisesDistinguishedName**, and **otherMails**.|
| Addition | Beta | Added the **licenseAssignmentStates** property to the [User](/graph/api/resources/user?view=graph-rest-beta) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | Beta | Added the **licenseAssignmentState** resource for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|
| Addition | Beta | Added the **assignedLicenses**, **licenseProcessingState**, **hasMembersWithLicenseErrors** and **membersWithLicenseErrors** properties to [Group](/graph/api/resources/group?view=graph-rest-beta) entity for [Group Based Licensing](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).|

### Identity and access | Identity and sign-in

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition |beta| Introduced [riskyUsers API](/graph/api/resources/riskyuser?view=graph-rest-beta), which represents Azure AD users who are at risk, as detected by Azure AD Identity Protection. |

### Identity and access | Governance

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change | beta | Change the [privilegedapproval](/graph/api/resources/privilegedapproval?view=graph-rest-beta) entity.|
| Addition | beta | Added the [privilegedroleassignmentrequest](/graph/api/resources/privilegedroleassignmentrequest?view=graph-rest-beta) entity, and following methods and actions:<br> [List](/graph/api/privilegedroleassignmentrequest-list?view=graph-rest-beta) <br> [Create](/graph/api/privilegedroleassignmentrequest-post?view=graph-rest-beta) <br> [Cancel](/graph/api/privilegedroleassignmentrequest-cancel?view=graph-rest-beta) <br> [My](/graph/api/privilegedroleassignmentrequest-my?view=graph-rest-beta) |
| Addition | beta | Added [Update](/graph/api/privilegedrolesettings-update?view=graph-rest-beta) for [privilegedRoleSettings](/graph/api/resources/privilegedrolesettings?view=graph-rest-beta)|
| Removal |beta| Deprecated the [Self Activate Role Assignment](/graph/api/privilegedrole_selfactivate?view=graph-rest-beta)|

### Personal contacts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Removal         | v1.0        | This is a correction to the documentation: removed the **flag** property from the [contact](/graph/api/resources/contact?view=graph-rest-1.0) entity topic. The property was never made available in the **contact** entity.|

### Reports
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the **Site ID** property to [getSharePointSiteUsageDetail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-1.0). |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added application permissions support to [archive team](/graph/api/team-archive?view=graph-rest-beta) and [unarchive team](/graph/api/team-unarchive?view=graph-rest-beta) APIs.|

### Identity and access

| **Change type** | **Version** | **Description**                  |
|:------------|:--------|:-----------------------------------------|
| Addition    | Beta   | Added [delta query](delta-query-overview.md) capability for [directoryObject](/graph/api/directoryobject-delta?view=graph-rest-beta) |
| Addition    | v1.0   | Added [delta](/graph/api/directoryrole-delta?view=graph-rest-1.0) function for [directoryRole](/graph/api/resources/directoryrole?view=graph-rest-1.0) to support [change tracking using delta query](delta-query-overview.md). |

### Users

| **Change type** | **Version** | **Description**                  |
|:------------|:--------|:-----------------------------------------|
| Change      | v1.0 and beta  | Alternative behavior to return changed properties only in JSON response for [users](/graph/api/user-delta?view=graph-rest-1.0). |

### Groups

| **Change type** | **Version** | **Description**                  |
|:------------|:--------|:-----------------------------------------|
| Change      | v1.0 and beta  | Alternative behavior to return changed properties only in JSON response for [groups](/graph/api/group-delta?view=graph-rest-1.0). |

## September 2018

### Cloud communications

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | The [application](/graph/api/resources/application?view=graph-rest-beta) resource was updated to add a calls collection. |
| Change          | Beta        | The [operation](/graph/api/resources/operation?view=graph-rest-beta) resource was updated to support long-running calls and meetings APIs. |
| Addition        | Beta        | Added the [call](/graph/api/resources/call?view=graph-rest-beta) resource for managing audio/video calls (initially, in Microsoft Teams), including APIs for [creating calls](/graph/api/application-post-calls?view=graph-rest-beta), [retrieving a call](/graph/api/call-get?view=graph-rest-beta), [deleting (hanging up) a call](/graph/api/call-delete?view=graph-rest-beta), [answering a call](/graph/api/call-answer?view=graph-rest-beta), [rejecting a call](/graph/api/call-reject?view=graph-rest-beta), [redirecting a call](/graph/api/call-redirect?view=graph-rest-beta), and [transferring a call](/graph/api/call-transfer?view=graph-rest-beta). We've also added APIs to support [IVR scenarios](/graph/api/resources/calls-api-ivr-overview?view=graph-rest-beta): [playing a prompt](/graph/api/call-playprompt?view=graph-rest-beta), [recording a call](/graph/api/call-record?view=graph-rest-beta), [cancel media processing](/graph/api/call-cancelmediaprocessing?view=graph-rest-beta), and [subscribing to touch tone notifications](/graph/api/call-subscribetotone?view=graph-rest-beta). |
| Addition        | Beta        | Added the [participant](/graph/api/resources/call?view=graph-rest-beta) resource and APIs for managing the participants in audio/video calls and meetings, including [retrieving a participant object](/graph/api/participant-get?view=graph-rest-beta), [configuring the audio mixer for a participant](/graph/api/participant-configuremixer?view=graph-rest-beta), muting [one](/graph/api/participant-mute?view=graph-rest-beta) or [all](/graph/api/participant-muteall?view=graph-rest-beta) of the participants, [retrieving a list of the participants](/graph/api/call-list-participants?view=graph-rest-beta) in a call/meeting, and [inviting participants](/graph/api/participant-invite?view=graph-rest-beta) to a call/meeting. |
| Addition        | Beta        | Added APIs for applications to manage and participate in calls and meetings, including the ability to [share content](/graph/api/call-changescreensharingrole?view=graph-rest-beta), [mute and unmute itself](/graph/api/call-unmute?view=graph-rest-beta), and [update the metadata associated with a call](/graph/api/call-updatemetadata?view=graph-rest-beta). |
| Addition        | Beta        | Added the [audio routing group](/graph/api/resources/audioroutinggroup?view=graph-rest-beta) resource and APIs for managing private audio routes between participants in a multiparty conversation, including [creating audio routing groups](/graph/api/call-post-audioroutinggroups?view=graph-rest-beta), [retrieving a list of them](/graph/api/audioroutinggroup-get?view=graph-rest-beta), and [updating](/graph/api/audioroutinggroup-update?view=graph-rest-beta) and [deleting](/graph/api/audioroutinggroup-delete?view=graph-rest-beta) them. |
| Addition        | Beta        | Added the [online meeting](/graph/api/resources/audioroutinggroup?view=graph-rest-beta) resource and APIs for managing Microsoft Teams online meetings. Initially, there is only one API for online meetings, to [retrieve an online meeting object](/graph/api/onlinemeeting-get?view=graph-rest-beta). A related resource for the [audio conference information](/graph/api/resources/audioconferencing?view=graph-rest-beta) associated with a meeting (e.g. dial-in URL, passcodes, and phone numbers) was also added. |
| Addition        | Beta        | Many of the calls and meetings APIs take time to complete, so resources for these long-running operations were added: [calling-specific operations](/graph/api/resources/commsoperation?view=graph-rest-beta), [playing audio prompts](/graph/api/resources/playpromptoperation?view=graph-rest-beta), and [recording](/graph/api/resources/recordoperation?view=graph-rest-beta).  |

### Data access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition         | Not applicable| Introduced the ability to access Microsoft 365 data in bulk. For details, see [Microsoft Graph data connect (preview)](data-connect-overview.md).|

### Devices and apps | Corporate management
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the [assign](/graph/api/intune-apps-manageddevicemobileappconfiguration-assign?view=graph-rest-1.0) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-1.0) |
|Addition|beta|Added new entities:<br/>[officeClientConfiguration](/graph/api/resources/intune-cirrus-officeclientconfiguration?view=graph-rest-beta)<br/>[officeClientConfigurationAssignment](/graph/api/resources/intune-cirrus-officeclientconfigurationassignment?view=graph-rest-beta)<br/>[officeConfiguration](/graph/api/resources/intune-cirrus-officeconfiguration?view=graph-rest-beta)<br/>[windowsOfficeClientConfiguration](/graph/api/resources/intune-cirrus-windowsofficeclientconfiguration?view=graph-rest-beta)<br/>[windowsOfficeClientSecurityConfiguration](/graph/api/resources/intune-cirrus-windowsofficeclientsecurityconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[officeClientCheckinStatus](/graph/api/resources/intune-cirrus-officeclientcheckinstatus?view=graph-rest-beta)<br/>[officeConfigurationAssignmentTarget](/graph/api/resources/intune-cirrus-officeconfigurationassignmenttarget?view=graph-rest-beta)<br/>[officeConfigurationGroupAssignmentTarget](/graph/api/resources/intune-cirrus-officeconfigurationgroupassignmenttarget?view=graph-rest-beta)<br/>[officeUserCheckinSummary](/graph/api/resources/intune-cirrus-officeusercheckinsummary?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [assign](/graph/api/intune-cirrus-officeclientconfiguration-assign?view=graph-rest-beta) action on [officeClientConfiguration](/graph/api/resources/intune-cirrus-officeclientconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the **updatePrioritie** action on [officeClientConfiguration](/graph/api/resources/intune-cirrus-officeclientconfiguration?view=graph-rest-beta) collection |
|Addition|beta|Added new entities:<br/>[deviceConfigurationConflictSummary](/graph/api/resources/intune-deviceconfig-deviceconfigurationconflictsummary?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload?view=graph-rest-beta)<br/>[win32LobApp](/graph/api/resources/intune-apps-win32lobapp?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[deviceConfigurationTargetedUserAndDevice](/graph/api/resources/intune-deviceconfig-deviceconfigurationtargeteduseranddevice?view=graph-rest-beta)<br/>[win32LobAppDetection](/graph/api/resources/intune-apps-win32lobappdetection?view=graph-rest-beta)<br/>[win32LobAppFileSystemDetection](/graph/api/resources/intune-apps-win32lobappfilesystemdetection?view=graph-rest-beta)<br/>[win32LobAppInstallExperience](/graph/api/resources/intune-apps-win32lobappinstallexperience?view=graph-rest-beta)<br/>[win32LobAppMsiInformation](/graph/api/resources/intune-apps-win32lobappmsiinformation?view=graph-rest-beta)<br/>[win32LobAppPowerShellScriptDetection](/graph/api/resources/intune-apps-win32lobapppowershellscriptdetection?view=graph-rest-beta)<br/>[win32LobAppProductCodeDetection](/graph/api/resources/intune-apps-win32lobappproductcodedetection?view=graph-rest-beta)<br/>[win32LobAppRegistryDetection](/graph/api/resources/intune-apps-win32lobappregistrydetection?view=graph-rest-beta)<br/>[win32LobAppReturnCode](/graph/api/resources/intune-apps-win32lobappreturncode?view=graph-rest-beta)<br/>[windows10AppsForceUpdateSchedule](/graph/api/resources/intune-deviceconfig-windows10appsforceupdateschedule?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[administratorConfiguredDeviceComplianceState](/graph/api/resources/intune-deviceconfig-administratorconfigureddevicecompliancestate?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUploadStatus](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityuploadstatus?view=graph-rest-beta)<br/>[microsoftStoreForBusinessPortalSelectionOptions](/graph/api/resources/intune-onboarding-microsoftstoreforbusinessportalselectionoptions?view=graph-rest-beta)<br/>[win32LobAppDetectionOperator](/graph/api/resources/intune-apps-win32lobappdetectionoperator?view=graph-rest-beta)<br/>[win32LobAppFileSystemDetectionType](/graph/api/resources/intune-apps-win32lobappfilesystemdetectiontype?view=graph-rest-beta)<br/>[win32LobAppMsiPackageType](/graph/api/resources/intune-apps-win32lobappmsipackagetype?view=graph-rest-beta)<br/>[win32LobAppRegistryDetectionType](/graph/api/resources/intune-apps-win32lobappregistrydetectiontype?view=graph-rest-beta)<br/>[win32LobAppReturnCodeType](/graph/api/resources/intune-apps-win32lobappreturncodetype?view=graph-rest-beta)<br/>[windows10AppsUpdateRecurrence](/graph/api/resources/intune-deviceconfig-windows10appsupdaterecurrence?view=graph-rest-beta)<br/>[windowsAppStartLayoutTileSize](/graph/api/resources/intune-deviceconfig-windowsappstartlayouttilesize?view=graph-rest-beta)<br/>[windowsAutopilotProfileAssignmentDetailedStatus](/graph/api/resources/intune-enrollment-windowsautopilotprofileassignmentdetailedstatus?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **overrideComplianceState** action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Addition|beta|Added the **getTargetedUsersAndDevices** action on [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) collection |
|Addition|beta|Added the [autopilotDeviceStream](/graph/api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-autopilotdevicestream?view=graph-rest-beta) function on [importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload?view=graph-rest-beta) |
|Addition|beta|Added the **restrictedApps** property to the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **tokenCreationDateTime** property to the [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **restrictedApps** property from the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **restrictedApps** property from the [androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [appleVpnConfiguration](/graph/api/resources/intune-deviceconfig-applevpnconfiguration?view=graph-rest-beta) entity:<br/>**enablePerApp** from required to optional<br/>|
|Addition|beta|Added the **disableProtectionOfManagedOutboundOpenInData** and **protectInboundDataFromUnknownSources** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **microsoftStoreForBusinessPortalSelection** property to the [deviceAppManagement](/graph/api/resources/intune-shared-deviceappmanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **passcodeMinutesOfInactivityBeforeScreenTimeout** property to the [iosCompliancePolicy](/graph/api/resources/intune-deviceconfig-ioscompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **useOAuth** property to the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **kioskModeBlockVolumeButtons**, **classroomForceRequestPermissionToLeaveClasses**, **keychainBlockCloudSync**, **pkiBlockOTAUpdates**, **privacyForceLimitAdTracking**, **enterpriseBookBlockBackup**, **enterpriseBookBlockMetadataSync**, **airPrintBlocked**, **airPrintBlockCredentialsStorage**, **airPrintForceTrustedTLS**, **airPrintBlockiBeaconDiscovery**, **blockSystemAppRemoval** and **vpnBlockCreation** properties to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **disableProtectionOfManagedOutboundOpenInData** and **protectInboundDataFromUnknownSources** properties to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **gatekeeperAllowedAppSource** property to the [macOSCompliancePolicy](/graph/api/resources/intune-deviceconfig-macoscompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **keychainBlockCloudSync**, **airPrintBlocked**, **airPrintForceTrustedTLS** and **airPrintBlockiBeaconDiscovery** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceModel** and **deviceManufacturer** properties to the [managedAppRegistration](/graph/api/resources/intune-mam-managedappregistration?view=graph-rest-beta) entity|
|Addition|beta|Added the **enabledForScopeValidation** property to the [resourceOperation](/graph/api/resources/intune-rbac-resourceoperation?view=graph-rest-beta) entity|
|Addition|beta|Added the **claimTokenManagementFromExternalMdm** property to the [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) entity|
|Addition|beta|Added the **windows10AppsForceUpdateSchedule** property to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **deploymentProfileAssignmentDetailedStatus** property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceConfigurationConflictSummary** and **importedWindowsAutopilotDeviceIdentityUploads** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedDeploymentProfile** navigation property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **startLayoutTileSize** and **name** properties to the [windowsKioskAppBase](/graph/api/resources/intune-deviceconfig-windowskioskappbase?view=graph-rest-beta) complex type|
|Addition|beta|Added the **desktopApplicationId** and **desktopApplicationLinkPath** properties to the [windowsKioskDesktopApp](/graph/api/resources/intune-deviceconfig-windowskioskdesktopapp?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **name** property from the [windowsKioskDesktopApp](/graph/api/resources/intune-deviceconfig-windowskioskdesktopapp?view=graph-rest-beta) complex type|
|Addition|beta|Added the **disallowDesktopApps** property to the [windowsKioskMultipleApps](/graph/api/resources/intune-deviceconfig-windowskioskmultipleapps?view=graph-rest-beta) complex type|
|Change|beta|Changed the following properties on the [windowsKioskMultipleApps](/graph/api/resources/intune-deviceconfig-windowskioskmultipleapps?view=graph-rest-beta) complex type:<br/>**startMenuLayoutXml** from required to optional<br/>|
|Addition|beta|Added the **v10_1607**, **v10_1703**, **v10_1709** and **v10_1803** properties to the [windowsMinimumOperatingSystem](/graph/api/resources/intune-apps-windowsminimumoperatingsystem?view=graph-rest-beta) complex type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidWorkProfileVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **remoteLock** member to the [deviceComplianceActionType](/graph/api/resources/intune-deviceconfig-devicecomplianceactiontype?view=graph-rest-beta) enum type|

### Files

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **deferCommit** argument to the [createUploadSession](/graph/api/driveitem-createuploadsession?view=graph-rest-beta) action on [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta)|
| Addition        | Beta        | Added the [storagePlanInformation](/graph/api/resources/storageplaninformation?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **storagePlanInformation** property to the [quota](/graph/api/resources/quota?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **following** navigation property to the [drive](/graph/api/resources/drive?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [follow](/graph/api/driveitem-follow?view=graph-rest-beta) action on [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) |
| Addition        | Beta        | Added the **hasPassword** property to the [permission](/graph/api/resources/permission?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **preventsDownload** property to the [sharingLink](/graph/api/resources/sharinglink?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **permission** navigation property to the [sharedDriveItem](/graph/api/resources/shareddriveitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **geolocation** property to the [columnDefinition](/graph/api/resources/columndefinition?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [geolocationColumn](/graph/api/resources/geolocationcolumn?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **analytics** property to the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **analytics** property to the [site](/graph/api/resources/site?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **analytics** property to the [listItem](/graph/api/resources/listitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [site](/graph/api/resources/site?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the **getActivitiesByInterval** function on the [listItem](/graph/api/resources/listitem?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [itemAnalytics](/graph/api/resources/itemanalytics?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [itemActivityStat](/graph/api/resources/itemactivity?view=graph-rest-beta) entity |
| Addition        | Beta        | Added the [itemActionStat](/graph/api/resources/itemactionstat?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the [accessAction](/graph/api/resources/accessaction?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the [incompleteData](/graph/api/resources/incompletedata?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **access** property to the [itemActivity](/graph/api/resources/itemactivity?view=graph-rest-beta) complex type |
| Addition        | Beta        | Added the **location** property to the [itemActivity](/graph/api/resources/itemactivity?view=graph-rest-beta) complex type |
| Addition        | v1.0        | Added the **preview** action on the [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) entity |
| Addition        | v1.0        | Added the [itemPreviewInfo](/graph/api/resources/itempreviewinfo?view=graph-rest-1.0) complex type |

### Financials

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added financials APIs for Dynamics 365 Business Central. For details, see the [Financials API reference](/graph/api/resources/dynamics-graph-reference?view=graph-rest-beta)

### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | The **internetMessageHeaders** property of the [message](/graph/api/resources/message?view=graph-rest-1.0) entity is now writeable on message creation. |

### User notifications

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition          | Beta        | Added the [notification](/graph/api/resources/projectrome-notification?view=graph-rest-beta) resource type. |
| Addition          | Beta        | Added the [Create and publish notification](/graph/api/projectrome_notification_post?view=graph-rest-beta) API.|

### Security

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the Secure Score APIs to the [security API](/graph/api/resources/securescore-api-overview?view=graph-rest-beta), including the following resources and operations:<br/>[secureScores](/graph/api/resources/securescores?view=graph-rest-beta) (and related entities)<br/>[List secureScores](/graph/api/securescores-list?view=graph-rest-beta)<br/>[secureScoreControlProfiles](/graph/api/resources/securescorecontrolprofiles?view=graph-rest-beta)<br/>[List secureScoreControlProfiles](/graph/api/securescorecontrolprofiles-list?view=graph-rest-beta)<br/>[Update secureScoreControlProfiles](/graph/api/securescorecontrolprofiles-update?view=graph-rest-beta) |
| Addition        | Beta        | Introduced new complex type [secureScoreControlStateUpdate](/graph/api/resources/securescorecontrolstateupdate?view=graph-rest-beta) |

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition|beta|Added API for [Tabs](/graph/api/resources/teamstab?view=graph-rest-beta).|
|Addition|beta|Added API for [publishing apps for your organization](/graph/api/resources/teamsapp?view=graph-rest-beta).|
|Addition|beta|Added application permissions support to [GET /teams/{id}](/graph/api/team-get?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [GET /teams/{id}/channels](/graph/api/group-list-channels?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [GET /teams/{id}/channels/{id}](/graph/api/channel-get?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [PUT /groups/{id}/team](/graph/api/team-put-teams?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [PATCH /teams/{id}](/graph/api/team-update?view=graph-rest-beta). |
|Addition|beta|Added application permissions support to [Create channel](/graph/api/channel-post?view=graph-rest-beta), [Update channel](/graph/api/channel-patch?view=graph-rest-beta), and [Delete channel](/graph/api/channel-delete?view=graph-rest-beta). |
|Deletion|beta| Removed isBlocks and installedState properties from [teamsApp](/graph/api/resources/teamsapp?view=graph-rest-beta).|
|Change| beta | The context property on [teamsApp](/graph/api/resources/teamsapp?view=graph-rest-beta) has been renamed to distributionMethod.|


## August 2018

### Calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added the [getSchedule](/graph/api/calendar-getschedule?view=graph-rest-beta) action, and the [freeBusyError](/graph/api/resources/freebusyerror?view=graph-rest-beta), [scheduleInformation](/graph/api/resources/scheduleinformation?view=graph-rest-beta), and [scheduleItem](/graph/api/resources/scheduleitem?view=graph-rest-beta) complex types to support [getting the free/busy, availability information for users, distribution lists, and resources for a given period of time](outlook-get-free-busy-schedule.md). |

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-1.0)<br/>[androidWorkProfileCustomConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilecustomconfiguration?view=graph-rest-1.0)<br/>[androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new enum types:<br/>[androidWorkProfileCrossProfileDataSharingType](/graph/api/resources/intune-deviceconfig-androidworkprofilecrossprofiledatasharingtype?view=graph-rest-1.0)<br/>[androidWorkProfileDefaultAppPermissionPolicyType](/graph/api/resources/intune-deviceconfig-androidworkprofiledefaultapppermissionpolicytype?view=graph-rest-1.0)<br/>[androidWorkProfileRequiredPasswordType](/graph/api/resources/intune-deviceconfig-androidworkprofilerequiredpasswordtype?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the [managedDeviceEnrollmentFailureDetails](/graph/api/intune-shared-reportroot-manageddeviceenrollmentfailuredetails?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune-shared-reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the [managedDeviceEnrollmentTopFailures](/graph/api/intune-shared-reportroot-manageddeviceenrollmenttopfailures?view=graph-rest-1.0) function on [reportRoot](/graph/api/resources/intune-shared-reportroot?view=graph-rest-1.0) |
|Addition|v1.0|Added the **kioskModeBuiltInAppId** property to the [iosGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-iosgeneraldeviceconfiguration?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **notAssigned** member to the [complianceStatus](/graph/api/resources/intune-shared-compliancestatus?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **pushNotification** member to the [deviceComplianceActionType](/graph/api/resources/intune-deviceconfig-devicecomplianceactiontype?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **userAbandonment** member to the [deviceEnrollmentFailureReason](/graph/api/resources/intune-troubleshooting-deviceenrollmentfailurereason?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **compromised** and **misconfigured** members to the [managedDevicePartnerReportedHealthState](/graph/api/resources/intune-devices-manageddevicepartnerreportedhealthstate?view=graph-rest-1.0) enum type|
|Addition|v1.0|Added the **assignedToExternalMDM** member to the [vppTokenState](/graph/api/resources/intune-onboarding-vpptokenstate?view=graph-rest-1.0) enum type|
||
|Addition|beta|Added new entities:<br/>[advancedThreatProtectionOnboardingDeviceSettingState](/graph/api/resources/intune-deviceconfig-advancedthreatprotectiononboardingdevicesettingstate?view=graph-rest-beta)<br/>[advancedThreatProtectionOnboardingStateSummary](/graph/api/resources/intune-deviceconfig-advancedthreatprotectiononboardingstatesummary?view=graph-rest-beta)<br/>[depEnrollmentBaseProfile](/graph/api/resources/intune-enrollment-depenrollmentbaseprofile?view=graph-rest-beta)<br/>[depEnrollmentProfile](/graph/api/resources/intune-enrollment-depenrollmentprofile?view=graph-rest-beta)<br/>[depIOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depiosenrollmentprofile?view=graph-rest-beta)<br/>[depMacOSEnrollmentProfile](/graph/api/resources/intune-enrollment-depmacosenrollmentprofile?view=graph-rest-beta)<br/>[enrollmentProfile](/graph/api/resources/intune-enrollment-enrollmentprofile?view=graph-rest-beta)<br/>[importedAppleDeviceIdentity](/graph/api/resources/intune-enrollment-importedappledeviceidentity?view=graph-rest-beta)<br/>[importedAppleDeviceIdentityResult](/graph/api/resources/intune-enrollment-importedappledeviceidentityresult?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload?view=graph-rest-beta)<br/>[roleScopeTag](/graph/api/resources/intune-rbac-rolescopetag?view=graph-rest-beta)<br/>[windowsIdentityProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windowsidentityprotectionconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[configurationManagerClientHealthState](/graph/api/resources/intune-devices-configurationmanagerclienthealthstate?view=graph-rest-beta)<br/>[customSubjectAlternativeName](/graph/api/resources/intune-deviceconfig-customsubjectalternativename?view=graph-rest-beta)<br/>[deviceManagementUserRightsLocalUserOrGroup](/graph/api/resources/intune-deviceconfig-devicemanagementuserrightslocaluserorgroup?view=graph-rest-beta)<br/>[deviceManagementUserRightsSetting](/graph/api/resources/intune-deviceconfig-devicemanagementuserrightssetting?view=graph-rest-beta)<br/>[managementCertificateWithThumbprint](/graph/api/resources/intune-enrollment-managementcertificatewiththumbprint?view=graph-rest-beta)<br/>[mobileAppSupportedDeviceType](/graph/api/resources/intune-troubleshooting-mobileappsupporteddevicetype?view=graph-rest-beta)<br/>[osVersionCount](/graph/api/resources/intune-devices-osversioncount?view=graph-rest-beta)<br/>[windowsMalwareCategoryCount](/graph/api/resources/intune-devices-windowsmalwarecategorycount?view=graph-rest-beta)<br/>[windowsMalwareExecutionStateCount](/graph/api/resources/intune-devices-windowsmalwareexecutionstatecount?view=graph-rest-beta)<br/>[windowsMalwareNameCount](/graph/api/resources/intune-devices-windowsmalwarenamecount?view=graph-rest-beta)<br/>[windowsMalwareOverview](/graph/api/resources/intune-devices-windowsmalwareoverview?view=graph-rest-beta)<br/>[windowsMalwareStateCount](/graph/api/resources/intune-devices-windowsmalwarestatecount?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[configurationManagerClientState](/graph/api/resources/intune-devices-configurationmanagerclientstate?view=graph-rest-beta)<br/>[depTokenType](/graph/api/resources/intune-enrollment-deptokentype?view=graph-rest-beta)<br/>[discoverySource](/graph/api/resources/intune-enrollment-discoverysource?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentityUploadStatus](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityuploadstatus?view=graph-rest-beta)<br/>[iTunesPairingMode](/graph/api/resources/intune-enrollment-itunespairingmode?view=graph-rest-beta)<br/>[lanManagerAuthenticationLevel](/graph/api/resources/intune-deviceconfig-lanmanagerauthenticationlevel?view=graph-rest-beta)<br/>[localSecurityOptionsMinimumSessionSecurity](/graph/api/resources/intune-deviceconfig-localsecurityoptionsminimumsessionsecurity?view=graph-rest-beta)<br/>[resultantAppStateDetail](/graph/api/resources/intune-apps-resultantappstatedetail?view=graph-rest-beta)<br/>[vpnProviderType](/graph/api/resources/intune-deviceconfig-vpnprovidertype?view=graph-rest-beta)<br/>[windowsMalwareThreatState](/graph/api/resources/intune-devices-windowsmalwarethreatstate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [uploadDepToken](/graph/api/intune-enrollment-deponboardingsetting-uploaddeptoken?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [syncWithAppleDeviceEnrollmentProgram](/graph/api/intune-enrollment-deponboardingsetting-syncwithappledeviceenrollmentprogram?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [setDefaultProfile](/graph/api/intune-enrollment-enrollmentprofile-setdefaultprofile?view=graph-rest-beta) action on [enrollmentProfile](/graph/api/resources/intune-enrollment-enrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the **importAppleDeviceIdentityList** action on [importedAppleDeviceIdentity](/graph/api/resources/intune-enrollment-importedappledeviceidentity?view=graph-rest-beta) collection |
|Addition|beta|Added the [updateDeviceProfileAssignment](/graph/api/intune-enrollment-enrollmentprofile-updatedeviceprofileassignment?view=graph-rest-beta) action on [enrollmentProfile](/graph/api/resources/intune-enrollment-enrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [shareForSchoolDataSyncService](/graph/api/intune-enrollment-deponboardingsetting-shareforschooldatasyncservice?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [unshareForSchoolDataSyncService](/graph/api/intune-enrollment-deponboardingsetting-unshareforschooldatasyncservice?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [assignUserToDevice](/graph/api/intune-enrollment-windowsautopilotdeviceidentity-assignusertodevice?view=graph-rest-beta) action on [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) |
|Addition|beta|Added the [getRoleScopeTagsByResource](/graph/api/intune-rbac-devicemanagement-getrolescopetagsbyresource?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [getRoleScopeTagsByIds](/graph/api/intune-rbac-devicemanagement-getrolescopetagsbyids?view=graph-rest-beta) function on [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the [getEncryptionPublicKey](/graph/api/intune-enrollment-deponboardingsetting-getencryptionpublickey?view=graph-rest-beta) function on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [exportMobileConfig](/graph/api/intune-enrollment-enrollmentprofile-exportmobileconfig?view=graph-rest-beta) function on [enrollmentProfile](/graph/api/resources/intune-enrollment-enrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [autopilotDeviceStream](/graph/api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-autopilotdevicestream?view=graph-rest-beta) function on [importedWindowsAutopilotDeviceIdentityUpload](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload?view=graph-rest-beta) |
|Deletion|beta|Removed the **uploadDepToken** collection |
|Deletion|beta|Removed the **syncWithAppleDeviceEnrollmentProgram** action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) collection |
|Deletion|beta|Removed the **getEncryptionPublicKey** function on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) collection |
|Addition|beta|Added the **restrictedApps** property to the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **vpnAlwaysOnPackageIdentifier** and **vpnEnableAlwaysOnLockdownMode** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **packageName** property from the [androidForWorkMobileAppConfiguration](/graph/api/resources/intune-apps-androidforworkmobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **restrictedApps** property to the [androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **vpnAlwaysOnPackageIdentifier** and **vpnEnableAlwaysOnLockdownMode** properties to the [androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **optInToDeviceIdSharing** property to the [appleVpnConfiguration](/graph/api/resources/intune-deviceconfig-applevpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **tokenType**, **tokenName**, **syncedDeviceCount**, **defaultProfileDisplayName** and **dataSharingConsentGranted** properties to the [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [deviceCompliancePolicy](/graph/api/resources/intune-deviceconfig-devicecompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** and **supportsScopeTags** properties to the [deviceConfiguration](/graph/api/resources/intune-deviceconfig-deviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **windowsMalwareOverview** property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [iosCertificateProfileBase](/graph/api/resources/intune-deviceconfig-ioscertificateprofilebase?view=graph-rest-beta) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **restrictedApps** property to the [iosCompliancePolicy](/graph/api/resources/intune-deviceconfig-ioscompliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore** and **customSubjectAlternativeNames** properties to the [iosScepCertificateProfile](/graph/api/resources/intune-deviceconfig-iosscepcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **enforcedSoftwareUpdateDelayInDays** property to the [iosUpdateConfiguration](/graph/api/resources/intune-deviceconfig-iosupdateconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **providerType**, **userDomain**, **strictEnforcement**, **cloudName** and **excludeList** properties to the [iosVpnConfiguration](/graph/api/resources/intune-deviceconfig-iosvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **safariBlockAutofill**, **cameraBlocked**, **iTunesBlockMusicService**, **spotlightBlockInternetResults**, **keyboardBlockDictation**, **definitionLookupBlocked**, **appleWatchBlockAutoUnlock**, **iTunesBlockFileSharing**, **iCloudBlockDocumentSync**, **iCloudBlockMail**, **iCloudBlockAddressBook**, **iCloudBlockCalendar**, **iCloudBlockReminders**, **iCloudBlockBookmarks**, **iCloudBlockNotes**, **airDropBlocked**, **passwordBlockModification** and **passwordBlockFingerprintUnlock** properties to the [macOSGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-macosgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds**, **windowsActiveMalwareCount**, **windowsRemediatedMalwareCount**, **notes** and **configurationManagerClientHealthState** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **installStateDetail** property to the [mobileAppInstallStatus](/graph/api/resources/intune-apps-mobileappinstallstatus?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTagIds** property to the [notificationMessageTemplate](/graph/api/resources/intune-notification-notificationmessagetemplate?view=graph-rest-beta) entity|
|Addition|beta|Added the **targetVersion** and **updateVersion** properties to the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **resource** property to the [resourceOperation](/graph/api/resources/intune-rbac-resourceoperation?view=graph-rest-beta) entity|
|Addition|beta|Added the **localStorage**, **setPowerPolicies** and **signInOnResume** properties to the [sharedPCConfiguration](/graph/api/resources/intune-deviceconfig-sharedpcconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **configurationManagerComplianceRequired** property to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **userRightsAccessCredentialManagerAsTrustedCaller**, **userRightsAllowAccessFromNetwork**, **userRightsBlockAccessFromNetwork**, **userRightsActAsPartOfTheOperatingSystem**, **userRightsLocalLogOn**, **userRightsBackupData**, **userRightsChangeSystemTime**, **userRightsCreateGlobalObjects**, **userRightsCreatePageFile**, **userRightsCreatePermanentSharedObjects**, **userRightsCreateSymbolicLinks**, **userRightsCreateToken**, **userRightsDebugPrograms**, **userRightsRemoteDesktopServicesLogOn**, **userRightsDelegation**, **userRightsGenerateSecurityAudits**, **userRightsImpersonateClient**, **userRightsIncreaseSchedulingPriority**, **userRightsLoadUnloadDrivers**, **userRightsLockMemory**, **userRightsManageAuditingAndSecurityLogs**, **userRightsManageVolumes**, **userRightsModifyFirmwareEnvironment**, **userRightsModifyObjectLabels**, **userRightsProfileSingleProcess**, **userRightsRemoteShutdown**, **userRightsRestoreData**, **userRightsTakeOwnership**, **userRightsRegisterProcessAsService**, **localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients**, **localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers**, **lanManagerAuthenticationLevel** and **lanManagerWorkstationEnableInsecureGuestLogons** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **passwordMinimumAgeInDays**, **tenantLockdownRequireNetworkDuringOutOfBoxExperience** and **dataProtectionBlockDirectMemoryAccess** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **extendedKeyUsages** property to the [windows10PkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-windows10pkcscertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **enableDnsRegistration** and **dnsSuffixes** properties to the [windows10VpnConfiguration](/graph/api/resources/intune-deviceconfig-windows10vpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customSubjectAlternativeNames** property to the [windows81CertificateProfileBase](/graph/api/resources/intune-deviceconfig-windows81certificateprofilebase?view=graph-rest-beta) entity|
|Addition|beta|Added the **extractHardwareHash** and **deviceNameTemplate** properties to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **addressableUserName** and **userPrincipalName** properties to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Addition|beta|Added the **threatState** property to the [windowsDeviceMalwareState](/graph/api/resources/intune-devices-windowsdevicemalwarestate?view=graph-rest-beta) entity|
|Addition|beta|Added the **qualityUpdatesPauseStartDateTime**, **featureUpdatesPauseStartDateTime**, **featureUpdatesRollbackWindowInDays**, **qualityUpdatesWillBeRolledBack**, **featureUpdatesWillBeRolledBack**, **qualityUpdatesRollbackStartDateTime** and **featureUpdatesRollbackStartDateTime** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **trustedServerCertificateNames** property to the [windowsWifiEnterpriseEAPConfiguration](/graph/api/resources/intune-deviceconfig-windowswifienterpriseeapconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **defaultIosEnrollmentProfile**, **defaultMacOsEnrollmentProfile**, **enrollmentProfiles** and **importedAppleDeviceIdentities** navigation properties to the [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) entity|
|Addition|beta|Added the **roleScopeTags** navigation property to the [deviceAndAppManagementRoleAssignment](/graph/api/resources/intune-rbac-deviceandappmanagementroleassignment?view=graph-rest-beta) entity|
|Addition|beta|Added the **advancedThreatProtectionOnboardingStateSummary**, **roleScopeTags** and **importedWindowsAutopilotDeviceIdentityUploads** navigation properties to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **supportedDeviceTypes** property to the [mobileAppIntentAndStateDetail](/graph/api/resources/intune-troubleshooting-mobileappintentandstatedetail?view=graph-rest-beta) complex type|
|Addition|beta|Added the **hideEscapeLink** property to the [outOfBoxExperienceSettings](/graph/api/resources/intune-enrollment-outofboxexperiencesettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **zscalerPrivateAccess**, **f5Access2018**, **citrixSso** and **paloAltoGlobalProtectV2** members to the [appleVpnConnectionType](/graph/api/resources/intune-deviceconfig-applevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **userAbandonment** member to the [deviceEnrollmentFailureReason](/graph/api/resources/intune-troubleshooting-deviceenrollmentfailurereason?view=graph-rest-beta) enum type|
|Addition|beta|Added the **blocked** member to the [enrollmentState](/graph/api/resources/intune-enrollment-enrollmentstate?view=graph-rest-beta) enum type|
|Addition|beta|Added the **microsoft365ManagedMdm** member to the [managementAgentType](/graph/api/resources/intune-shared-managementagenttype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **domainNameService** member to the [subjectAlternativeNameType](/graph/api/resources/intune-deviceconfig-subjectalternativenametype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **wpa2Personal** and **wpa2Enterprise** members to the [wiFiSecurityType](/graph/api/resources/intune-deviceconfig-wifisecuritytype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **enterpriseUnwantedSoftware**, **ransom** and **hipsRule** members to the [windowsMalwareCategory](/graph/api/resources/intune-devices-windowsmalwarecategory?view=graph-rest-beta) enum type|

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | v1.0 | Added the **isMultipleDataLocationsForServicesEnabled** property to the [organization](/graph/api/resources/organization?view=graph-rest-beta) resource, which allows apps to verify that a tenant is enabled for multi-geo capabilities. Added the **preferredDataLocation** property to the [group](/graph/api/resources/group?view=graph-rest-beta) resource, which allows for setting a preferred data location for a group.|
| Addition | v1.0 | Added  [onPremisesProvisioningErrors](/graph/api/resources/onpremisesprovisioningerror?view=graph-rest-1.0) property to the [User](/graph/api/resources/user?view=graph-rest-1.0) and [Group](/graph/api/resources/group?view=graph-rest-1.0) entities that represents directory synchronization errors when synchronizing on-premises directories to Azure Active Directory when using Microsoft synchronization product (including Azure AD Connect, DirSync and MIM + Connector).|
| Addition | v1.0 | Added  [onPremisesExtensionAttributes](/graph/api/resources/onpremisesextensionattributes?view=graph-rest-1.0) property to the [User](/graph/api/resources/user?view=graph-rest-1.0) entity that contains fifteen custom extension attribute properties. For an onPremisesSyncEnabled user, this set of properties is mastered in on-premises Active Directory and synchronized to Azure AD, and is read-only. For a cloud-only user (where onPremisesSyncEnabled is false), these properties may be set during creation or update.|
|Addition|v1.0|Added the **onPremisesDomainName**, **onPremisesSamAccountName**, and **onPremisesUserPrincipalName** properties to the [User](/graph/api/resources/user?view=graph-rest-1.0) entity|

### Mail

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0        | Added support for the [getMailTips](/graph/api/user-getmailtips?view=graph-rest-1.0) action to get any MailTips for specific recipients. Added the following resources: [automaticRepliesMailTips](/graph/api/resources/automaticrepliesmailtips?view=graph-rest-1.0), [mailTips](/graph/api/resources/mailtips?view=graph-rest-1.0), [mailTipsError](/graph/api/resources/mailtipserror?view=graph-rest-1.0). |

### Reports
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | v1.0    | Added the **Activated On Shared Computer** property to [getoffice365activationsuserdetail](/graph/api/reportroot-getoffice365activationsuserdetail?view=graph-rest-1.0). |
| Addition    | v1.0    | Added the **Shared Computer Activation** property to [getoffice365activationsusercounts](/graph/api/reportroot-getoffice365activationsusercounts?view=graph-rest-1.0). |

### Security

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta       | Added **activityGroupName**, **cloudAppStates**, **confidence**, and **registryKeyStates** properties to [alert](/graph/api/resources/alert?view=graph-rest-beta ). |
|Deletion|beta| Removed **activityGroupStates**, **applicationStates**, **malwareWasRunning**, **riskScore** and **type** properties from [alert](/graph/api/resources/alert?view=graph-rest-beta ). |
|Change|beta| Changed **comments** type from a `String` to a `String collection`, and changed **severity** type from a `String` to a [alertSeverity](/graph/api/resources/alertseverityenumtype?view=graph-rest-beta) enum in [alert](/graph/api/resources/alert?view=graph-rest-beta). |
| Addition        | beta       | Added the following resource types: <br/> [cloudAppSecurityState](/graph/api/resources/cloudappsecuritystate?view=graph-rest-beta) <br/> [fileHash](/graph/api/resources/filehash?view=graph-rest-beta) <br/> [registryKeyState](/graph/api/resources/registrykeystate?view=graph-rest-beta) |
|Deletion|beta| Removed the following resource types: <br/> **activityGroupState**  <br/> **applicationSecurityState** |
| Addition        | beta       | Added the following enums: <br/> [alertSeverity](/graph/api/resources/alertseverityenumtype?view=graph-rest-beta) <br/> [connectionDirection](/graph/api/resources/connectiondirectionenumtype?view=graph-rest-beta) <br/> [connectionStatus](/graph/api/resources/connectionstatusenumtype?view=graph-rest-beta) <br/> [emailRole](/graph/api/resources/emailroleenumtype?view=graph-rest-beta) <br/> [fileHashType](/graph/api/resources/filehashtypeenumtype?view=graph-rest-beta) <br/> [registryHive](/graph/api/resources/registryhiveenumtype?view=graph-rest-beta)  <br/> [registryOperation](/graph/api/resources/registryoperationenumtype?view=graph-rest-beta) <br/> [registryValueType](/graph/api/resources/registryvaluetypeenumtype?view=graph-rest-beta)|
|Deletion|beta| Removed the following enum types: <br/> **alertType** <br/> **applicationPermissionsRequired** |
| Addition        | beta       | Added **fileHash** property to [fileSecurityState](/graph/api/resources/filesecuritystate?view=graph-rest-beta ).|
|Deletion|beta| Removed **authenticodeHash256** and **sha256** properties from [fileSecurityState](/graph/api/resources/filesecuritystate?view=graph-rest-beta). |
| Addition | beta | Added **os** property to [hostSecurityState](/graph/api/resources/hostsecuritystate?view=graph-rest-beta).|
| Addition | beta | Added **category**, **family**, and **wasRunning** properties to [malwareState](/graph/api/resources/malwarestate?view=graph-rest-beta).|
|Deletion|beta| Removed **aliases** property from [malwareState](/graph/api/resources/malwarestate?view=graph-rest-beta). |
|Change|beta| Moved **malwareWasRunning** property from  [alert](/graph/api/resources/alert?view=graph-rest-beta ) to [malwareState](/graph/api/resources/malwarestate?view=graph-rest-beta) and renamed to **wasRunning**. |
| Addition        | beta       | Added **applicationName**, **destinationDomain**, **direction**, **domainRegisteredDateTime**, **localDnsName**, **natDestinationAddress**, **natDestinationPort**, **natSourceAddress**, **natSourcePort**, **riskScore**, **status**, and **urlParameters** properties to [networkConnection](/graph/api/resources/networkconnection?view=graph-rest-beta ).|
|Change|beta| Changed **uri** property to **destinationUrl** in [networkConnection](/graph/api/resources/networkconnection?view=graph-rest-beta ). |
| Addition        | beta       | Added **fileHash** property to [process](/graph/api/resources/process?view=graph-rest-beta ).|
|Deletion|beta| Removed **authenticodeHash256** and **sha256** properties from [process](/graph/api/resources/process?view=graph-rest-beta ). |
| Addition        | beta       | Added **aadUserId**, **emailRole**, **isVpn**, and **logonIp** properties to [userSecurityState](/graph/api/resources/usersecuritystate?view=graph-rest-beta).|
|Change|beta| Changed **logonIpAddress** property to **logonIp** in [userSecurityState](/graph/api/resources/usersecuritystate?view=graph-rest-beta). |
| Addition        | beta       | Added **wasRunning** property to [vulnerabilityState](/graph/api/resources/vulnerabilitystate?view=graph-rest-beta).|
|Deletion|beta| Removed **name** property from [vulnerabilityState](/graph/api/resources/vulnerabilitystate?view=graph-rest-beta). |

### Applications

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added [delta query](delta-query-overview.md) capability for the following entities in Azure AD:<br/>[application](/graph/api/application-delta?view=graph-rest-beta)<br/>[directoryRole](/graph/api/directoryrole-delta?view=graph-rest-beta)<br/>[servicePrincipal](/graph/api/serviceprincipal-delta?view=graph-rest-beta) |


## July 2018

### Change notifications
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Breaking change | Beta and v1.0 | Reduced [webhooks](/graph/api/resources/webhooks?view=graph-rest-1.0) [maximum length of subscription expiration time](/graph/api/resources/subscription?view=graph-rest-1.0#maximum-length-of-subscription-per-resource-type) for drive root items to 3 days. |

### Identity and access

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Change          | Beta        | The [application](/graph/api/resources/application?view=graph-rest-beta) and [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) APIs will be updated in preview (beta). The first set of changes will be applied on July 16, 2018. The changes include property renaming and restructuring. Most of the existing properties will not be available until the changes are completed. There will be new properties added. The changes will be released in preview (beta) prior to releasing to v1.0. |

### Applications

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | Beta | Added **progress** property to [sychronizationStatus](/graph/api/resources/synchronization-synchronizationstatus?view=graph-rest-beta) to permit clients to monitor the progress of a synchronization job.|

### Personal contacts
| **Change type** | **Version**   | **Description**                          |
|:--------------- |:------------- |:---------------------------------------- |
|Addition |Beta | Added the complex type [typedEmailAddress](/graph/api/resources/typedemailaddress?view=graph-rest-beta). |
|Change | Beta | Changed the type of the **emailAddresses** property of [contact](/graph/api/resources/contact?view=graph-rest-beta) to be a collection of **typedEmailAddress** instances.|

### Teamwork

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Change|beta|Updated [chatmessage](/graph/api/resources/chatmessage?view=graph-rest-beta) resource|
|Addition|beta|Added [Chat attachment](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat mention](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat reaction](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Get all channel messages API](/graph/api/channel-list-messages?view=graph-rest-beta) |
|Addition|beta|Added [Get channel message API](/graph/api/channel-get-message?view=graph-rest-beta) |
|Addition|beta|Added [Get all message replies API](/graph/api/channel-list-messagereplies?view=graph-rest-beta) |
|Addition|beta|Added [Get reply to a message API](/graph/api/channel-get-messagereply?view=graph-rest-beta) |
|Addition|beta|Added application permissions support to [/users/{id}/joinedTeams](/graph/api/user-list-joinedteams?view=graph-rest-beta) |
|Addition|beta|Added [Get all channel messages API](/graph/api/channel-list-messages?view=graph-rest-beta) |
|Addition|beta|Added [Get channel message API](/graph/api/channel-get-message?view=graph-rest-beta) |
|Addition|beta|Added [Get all message replies API](/graph/api/channel-list-messagereplies?view=graph-rest-beta) |
|Addition|beta|Added [Get reply to a message API](/graph/api/channel-get-messagereply?view=graph-rest-beta) |
|Addition|beta|Added [Chat attachment](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat mention](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Addition|beta|Added [Chat reaction](/graph/api/resources/chatmessageattachment?view=graph-rest-beta) resource type|
|Change|beta|Updated [chatmessage](/graph/api/resources/chatmessage?view=graph-rest-beta)) resource|
|Deletion|beta|Removed DELETE /groups/{id}/team/channels/{id}, use DELETE /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed GET /groups/{id}/team/channels/{id}, use GET /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed PATCH /groups/{id}/team/channels/{id}, use  PATCH /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed POST /groups/{id}/team/channels/{id}/chatthreads, use POST /teams/{id}/channels/{id}/chatthreads instead. |
|Deletion|beta|Removed GET /groups/{id}/team/channels, use GET /teams/{id}/channels instead. |
|Deletion|beta|Removed DELETE /groups/{id}/channels/{id} , use DELETE /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed GET /groups/{id}/channels/{id}, use GET /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed PATCH /groups/{id}/channels/{id}, use  PATCH /teams/{id}/channels/{id} instead. |
|Deletion|beta|Removed POST /groups/{id}/channels/{id}/chatthreads, use POST /teams/{id}/channels/{id}/chatthreads instead. |
|Deletion|beta|Removed GET /groups/{id}/channels, use GET /teams/{id}/channels instead. |
|Deletion|beta|Removed POST /groups/{id}/team/channels, use POST /teams/{id}/channels instead. |
|Deletion|beta|Removed GET /groups/{id}/team, use GET /teams/{id} instead. |
|Deletion|beta|Removed PATCH /groups/{id}/team, use PATCH /teams/{id} instead. |
|Addition|beta|Added API to [list all teams in organization](teams-list-all-teams.md). |


## June 2018

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added the **connectorServerName** property to the [deviceManagementExchangeConnector](/graph/api/resources/intune-onboarding-devicemanagementexchangeconnector?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **firewallEnabled**, **firewallBlockAllIncoming** and **firewallEnableStealthMode** properties to the [macOSCompliancePolicy](/graph/api/resources/intune-deviceconfig-macoscompliancepolicy?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **unknown** member to the [iosUpdatesInstallStatus](/graph/api/resources/intune-deviceconfig-iosupdatesinstallstatus?view=graph-rest-1.0) enum type|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownerwificonfiguration?view=graph-rest-beta)<br/>[iosVppAppAssignedDeviceLicense](/graph/api/resources/intune-apps-iosvppappassigneddevicelicense?view=graph-rest-beta)<br/>[iosVppAppAssignedLicense](/graph/api/resources/intune-apps-iosvppappassignedlicense?view=graph-rest-beta)<br/>[iosVppAppAssignedUserLicense](/graph/api/resources/intune-apps-iosvppappassigneduserlicense?view=graph-rest-beta)<br/>[managedDeviceMobileAppConfigurationState](/graph/api/resources/intune-deviceconfig-manageddevicemobileappconfigurationstate?view=graph-rest-beta)<br/>[userPFXCertificate](/graph/api/resources/intune-raimportcerts-userpfxcertificate?view=graph-rest-beta)<br/>[vppTokenLicenseSummary](/graph/api/resources/intune-onboarding-vpptokenlicensesummary?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[iosVppAppRevokeLicensesActionResult](/graph/api/resources/intune-apps-iosvppapprevokelicensesactionresult?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidDeviceOwnerSystemUpdateInstallType](/graph/api/resources/intune-deviceconfig-androiddeviceownersystemupdateinstalltype?view=graph-rest-beta)<br/>[androidDeviceOwnerWiFiSecurityType](/graph/api/resources/intune-deviceconfig-androiddeviceownerwifisecuritytype?view=graph-rest-beta)<br/>[userPfxIntendedPurpose](/graph/api/resources/intune-raimportcerts-userpfxintendedpurpose?view=graph-rest-beta)<br/>[userPfxPaddingScheme](/graph/api/resources/intune-raimportcerts-userpfxpaddingscheme?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [createGooglePlayWebToken](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-creategoogleplaywebtoken?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [revokeAllLicenses](/graph/api/intune-apps-iosvppapp-revokealllicenses?view=graph-rest-beta) action on [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) |
|Addition|beta|Added the [revokeUserLicense](/graph/api/intune-apps-iosvppapp-revokeuserlicense?view=graph-rest-beta) action on [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) |
|Addition|beta|Added the [revokeDeviceLicense](/graph/api/intune-apps-iosvppapp-revokedevicelicense?view=graph-rest-beta) action on [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) |
|Addition|beta|Added the [sendCustomNotificationToCompanyPortal](/graph/api/intune-shared-devicemanagement-sendcustomnotificationtocompanyportal?view=graph-rest-beta) action on [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) |
|Addition|beta|Added the **getLicensesForApp** function on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) collection |
|Deletion|beta|Removed the following enum types:<br/>**windowsUpdateInsiderBuildControl**<br/>|
|Addition|beta|Added the **systemUpdateWindowStartMinutesAfterMidnight**, **systemUpdateWindowEndMinutesAfterMidnight** and **systemUpdateInstallType** properties to the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Changed the type of the following properties on the [androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta) entity:<br/>**passwordMinutesOfInactivityBeforeScreenTimeout** from Int64 to Int32<br/>|
|Addition|beta|Added the **customKeyValueData** property to the [androidForWorkVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customKeyValueData** property to the [androidVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidvpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customKeyValueData** property to the [androidWorkProfileVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **customKeyValueData** property to the [appleVpnConfiguration](/graph/api/resources/intune-deviceconfig-applevpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **userId** and **userPrincipalName** properties to the [deviceCompliancePolicyState](/graph/api/resources/intune-deviceconfig-devicecompliancepolicystate?view=graph-rest-beta) entity|
|Addition|beta|Added the **userId** and **userPrincipalName** properties to the [deviceConfigurationState](/graph/api/resources/intune-deviceconfig-deviceconfigurationstate?view=graph-rest-beta) entity|
|Addition|beta|Added the **connectorServerName** property to the [deviceManagementExchangeConnector](/graph/api/resources/intune-onboarding-devicemanagementexchangeconnector?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **settingXml** property from the [iosMobileAppConfiguration](/graph/api/resources/intune-apps-iosmobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **vppTokenId** and **revokeLicenseActionResults** properties to the [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **firewallEnabled**, **firewallBlockAllIncoming** and **firewallEnableStealthMode** properties to the [macOSCompliancePolicy](/graph/api/resources/intune-deviceconfig-macoscompliancepolicy?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **remoteAssistanceSessionErrorString** property from the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **antivirusRequired** and **antiSpywareRequired** properties to the [windows10CompliancePolicy](/graph/api/resources/intune-deviceconfig-windows10compliancepolicy?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderOfficeAppsOtherProcessInjection**, **defenderOfficeAppsExecutableContentCreationOrLaunch**, **defenderOfficeAppsLaunchChildProcess**, **defenderOfficeMacroCodeAllowWin32Imports**, **defenderScriptObfuscatedMacroCode**, **defenderScriptDownloadedPayloadExecution**, **defenderProcessCreation**, **defenderUntrustedUSBProcess**, **defenderUntrustedExecutable** and **defenderEmailContentExecution** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **searchDisableLocation**, **inkWorkspaceAccessState**, **defenderPotentiallyUnwantedAppActionSetting** and **defenderCloudExtendedTimeoutInSeconds** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **updatesMinimumAutoInstallClassification** property to the [windows81GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows81generalconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **previewBuildSetting** property from the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **userPfxCertificates** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignedLicenses** navigation property to the [iosVppApp](/graph/api/resources/intune-apps-iosvppapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceMobileAppConfigurationStates** navigation property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **websiteList** property to the [iosWebContentFilterSpecificWebsitesAccess](/graph/api/resources/intune-deviceconfig-ioswebcontentfilterspecificwebsitesaccess?view=graph-rest-beta) complex type|
|Addition|beta|Added the **androidWorkProfile** member to the [devicePlatformType](/graph/api/resources/intune-deviceconfig-deviceplatformtype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **notConfigured** member to the [editionUpgradeLicenseType](/graph/api/resources/intune-deviceconfig-editionupgradelicensetype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **unknown** member to the [iosUpdatesInstallStatus](/graph/api/resources/intune-deviceconfig-iosupdatesinstallstatus?view=graph-rest-beta) enum type|
|Addition|beta|Added the **userRequestedInstall** member to the [mobileAppActionType](/graph/api/resources/intune-troubleshooting-mobileappactiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **notConfigured** member to the [windows10EditionType](/graph/api/resources/intune-deviceconfig-windows10editiontype?view=graph-rest-beta) enum type

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta) feature to [Azure AD](/graph/api/resources/azure-ad-overview?view=graph-rest-beta). |

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | All | New application permissions _Application.ReadWrite.All_ and _Application.ReadWrite.OwnedBy_ that allows a client app to create, read, update, and delete applications and service principals as described in the [permissions topic](permissions-reference.md#application-resource-permissions). |
| Addition | v1.0 | Added **ageGroup**, **legalAgeGroupClassification**, and **ConsentRequiredForMinor** properties to [user](/graph/api/resources/user?view=graph-rest-1.0) resource

### Identity and access | Governance

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the [privilegedAccess](/graph/api/resources/privilegedaccess?view=graph-rest-beta) entity.|
| Addition | beta | Added the [governanceResource](/graph/api/resources/governanceresource?view=graph-rest-beta) entity, and the following methods and actions: <br> [List](/graph/api/governanceresource-list?view=graph-rest-beta) <br> [Get](/graph/api/governanceresource-get?view=graph-rest-beta)<br>|
| Addition | beta | Added the [governanceSubject](/graph/api/resources/governancesubject?view=graph-rest-beta) entity.|
| Addition | beta | Added the [governanceRoleDefinition](/graph/api/resources/governanceroledefinition?view=graph-rest-beta) entity, and tollowing methods and actions:<br> [List](/graph/api/governanceroledefinition-list?view=graph-rest-beta) <br> [Get](/graph/api/governanceroledefinition-get?view=graph-rest-beta) |
| Addition | beta | Added the [governanceRoleAssignment](/graph/api/resources/governanceroleassignment?view=graph-rest-beta) entity, and following methods and actions:<br> [List](/graph/api/governanceroleassignment-list?view=graph-rest-beta) <br> [Get](/graph/api/governanceroleassignment-get?view=graph-rest-beta) <br> [Export](/graph/api/governanceroleassignment-export?view=graph-rest-beta) |
| Addition | beta | Added the [governanceRoleAssignmentRequest](/graph/api/resources/governanceroleassignmentrequest?view=graph-rest-beta) entity, and following methods and actions:<br> [List](/graph/api/governanceroleassignmentrequest-list?view=graph-rest-beta) <br> [Get](/graph/api/governanceroleassignmentrequest-get?view=graph-rest-beta) <br> [Create](/graph/api/governanceroleassignmentrequest-post?view=graph-rest-beta) <br> [Cancel](/graph/api/governanceroleassignmentrequest-cancel?view=graph-rest-beta) <br> [Update](/graph/api/governanceroleassignmentrequest-update?view=graph-rest-beta) |
| Addition | beta | Added the [governanceRoleSetting](/graph/api/resources/governancerolesetting?view=graph-rest-beta) entity, and the following methods and actions:<br> [List](/graph/api/governancerolesetting-list?view=graph-rest-beta) <br> [Get](/graph/api/governancerolesetting-get?view=graph-rest-beta) <br> [Update](/graph/api/governancerolesetting-update?view=graph-rest-beta) |
| Addition | beta | Added the following complex types: <br> [governancePermission](/graph/api/resources/governancepermission?view=graph-rest-beta) <br> [governanceRoleAssignmentRequestStatus](/graph/api/resources/governanceroleassignmentrequeststatus?view=graph-rest-beta) <br> [governanceRuleSetting](/graph/api/resources/governancerulesetting?view=graph-rest-beta) <br> [governanceSchedule](/graph/api/resources/governanceschedule?view=graph-rest-beta)|

### Security

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | beta        | Added new enum types:<br/>[alertFeedback](/graph/api/resources/alertfeedbackenumtype?view=graph-rest-beta)<br/>[alertStatus](/graph/api/resources/alertstatusenumtype?view=graph-rest-beta)<br/>[alertType](/graph/api/resources/alerttypeenumtype?view=graph-rest-beta)<br/>[applicationPermissionsRequired](/graph/api/resources/applicationpermissionsrequiredenumtype?view=graph-rest-beta)<br/>[logonType](/graph/api/resources/logontypeenumtype?view=graph-rest-beta)<br/>[processIntegrityLevel](/graph/api/resources/processintegritylevelenumtype?view=graph-rest-beta)<br/>[securityNetworkProtocol](/graph/api/resources/securitynetworkprotocolenumtype?view=graph-rest-beta)<br/>[userAccountSecurityType](/graph/api/resources/useraccountsecuritytypeenumtype?view=graph-rest-beta)<br/>


### Teamwork
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
|Addition         | Beta          | Added team [archive](/graph/api/team-archive?view=graph-rest-beta) and [unarchive](/graph/api/team-unarchive?view=graph-rest-beta) APIs.|
|Addition         | Beta          | Added team [clone](/graph/api/team-clone?view=graph-rest-beta) operation. |
|Addition         | Beta          | Added APIs to add and remove [apps](/graph/api/resources/teamsapp?view=graph-rest-beta) to teams. |
|Change|Beta|Updated the path to the [team](/graph/api/resources/team?view=graph-rest-beta) entity.|
|Change|Beta|Updated the path to the [channel](/graph/api/resources/channel?view=graph-rest-beta) entity.|


## May 2018

### Customer booking

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [bookingBusiness](/graph/api/resources/bookingbusiness?view=graph-rest-beta) entity and the following CRUD methods and actions: <br> [List](/graph/api/bookingbusiness-list?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-bookingbusinesses?view=graph-rest-beta) <br> [Get](/graph/api/bookingbusiness-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingbusiness-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingbusiness-delete?view=graph-rest-beta) <br> [Publish](/graph/api/bookingbusiness-publish?view=graph-rest-beta) <br> [Unpublish](/graph/api/bookingbusiness-unpublish?view=graph-rest-beta). <br> Find out more about integrating with the [Microsoft Bookings API](booking-concept-overview.md). |
| Addition        | Beta          | Added the [bookingAppointment](/graph/api/resources/bookingappointment?view=graph-rest-beta) entity and the following CRUD methods and action: <br> [List](/graph/api/bookingbusiness-list-appointments?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-appointments?view=graph-rest-beta) <br> [Get](/graph/api/bookingappointment-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingappointment-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingappointment-delete?view=graph-rest-beta) <br> [Cancel](/graph/api/bookingappointment-cancel?view=graph-rest-beta). |
| Addition        | Beta          | Added the [bookingCurrency](/graph/api/resources/bookingcurrency?view=graph-rest-beta) entity and the following methods: <br> [List](/graph/api/bookingcurrency-list?view=graph-rest-beta) <br> [Get](/graph/api/bookingcurrency-get?view=graph-rest-beta). |
| Addition        | Beta          | Added the [bookingCustomer](/graph/api/resources/bookingcustomer?view=graph-rest-beta) entity and the following CRUD methods: <br> [List](/graph/api/bookingbusiness-list-customers?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-customers?view=graph-rest-beta) <br> [Get](/graph/api/bookingcustomer-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingcustomer-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingcustomer-delete?view=graph-rest-beta).|
| Addition        | Beta          | Added the [bookingService](/graph/api/resources/bookingservice?view=graph-rest-beta) entity and the following CRUD methods: <br> [List](/graph/api/bookingbusiness-list-services?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-services?view=graph-rest-beta) <br> [Get](/graph/api/bookingservice-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingservice-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingservice-delete?view=graph-rest-beta).|
| Addition        | Beta          | Added the [bookingStaffMember](/graph/api/resources/bookingstaffmember?view=graph-rest-beta) entity and the following CRUD methods: <br> [List](/graph/api/bookingbusiness-list-staffmembers?view=graph-rest-beta) <br> [Create](/graph/api/bookingbusiness-post-staffmembers?view=graph-rest-beta) <br> [Get](/graph/api/bookingstaffmember-get?view=graph-rest-beta) <br> [Update](/graph/api/bookingstaffmember-update?view=graph-rest-beta) <br> [Delete](/graph/api/bookingstaffmember-delete?view=graph-rest-beta).|
| Addition        | Beta          | Added the following complex types: <br> [bookingNamedEntity](/graph/api/resources/bookingnamedentity?view=graph-rest-beta) <br> [bookingPerson](/graph/api/resources/bookingperson?view=graph-rest-beta) <br> [bookingReminder](/graph/api/resources/bookingreminder?view=graph-rest-beta) <br> [bookingWorkHours](/graph/api/resources/bookingworkhours?view=graph-rest-beta) <br> [bookingWorkTimeSlot](/graph/api/resources/bookingworktimeslot?view=graph-rest-beta).|

### Devices and apps | Corporate management
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidWorkProfileCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidworkprofilecompliancepolicy?view=graph-rest-beta)<br/>[easEmailProfileConfigurationBase](/graph/api/resources/intune-deviceconfig-easemailprofileconfigurationbase?view=graph-rest-beta)<br/>[mobileAppIntentAndState](/graph/api/resources/intune-troubleshooting-mobileappintentandstate?view=graph-rest-beta)<br/>[mobileAppTroubleshootingEvent](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingevent?view=graph-rest-beta)<br/>[unsupportedDeviceConfiguration](/graph/api/resources/intune-deviceconfig-unsupporteddeviceconfiguration?view=graph-rest-beta)<br/>[windowsKioskConfiguration](/graph/api/resources/intune-deviceconfig-windowskioskconfiguration?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[managedDeviceCleanupSettings](/graph/api/resources/intune-devices-manageddevicecleanupsettings?view=graph-rest-beta)<br/>[mobileAppIntentAndStateDetail](/graph/api/resources/intune-troubleshooting-mobileappintentandstatedetail?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppPolicyCreationHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingapppolicycreationhistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppStateHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingappstatehistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppTargetHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingapptargethistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingAppUpdateHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingappupdatehistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingDeviceCheckinHistory](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootingdevicecheckinhistory?view=graph-rest-beta)<br/>[mobileAppTroubleshootingHistoryItem](/graph/api/resources/intune-troubleshooting-mobileapptroubleshootinghistoryitem?view=graph-rest-beta)<br/>[unsupportedDeviceConfigurationDetail](/graph/api/resources/intune-deviceconfig-unsupporteddeviceconfigurationdetail?view=graph-rest-beta)<br/>**windowsAutoPilotEnrollmentSettings**<br/>[windowsKioskActiveDirectoryGroup](/graph/api/resources/intune-deviceconfig-windowskioskactivedirectorygroup?view=graph-rest-beta)<br/>[windowsKioskAppBase](/graph/api/resources/intune-deviceconfig-windowskioskappbase?view=graph-rest-beta)<br/>[windowsKioskAppConfiguration](/graph/api/resources/intune-deviceconfig-windowskioskappconfiguration?view=graph-rest-beta)<br/>[windowsKioskAutologon](/graph/api/resources/intune-deviceconfig-windowskioskautologon?view=graph-rest-beta)<br/>[windowsKioskAzureADGroup](/graph/api/resources/intune-deviceconfig-windowskioskazureadgroup?view=graph-rest-beta)<br/>[windowsKioskAzureADUser](/graph/api/resources/intune-deviceconfig-windowskioskazureaduser?view=graph-rest-beta)<br/>[windowsKioskDesktopApp](/graph/api/resources/intune-deviceconfig-windowskioskdesktopapp?view=graph-rest-beta)<br/>[windowsKioskLocalGroup](/graph/api/resources/intune-deviceconfig-windowskiosklocalgroup?view=graph-rest-beta)<br/>[windowsKioskLocalUser](/graph/api/resources/intune-deviceconfig-windowskiosklocaluser?view=graph-rest-beta)<br/>[windowsKioskMultipleApps](/graph/api/resources/intune-deviceconfig-windowskioskmultipleapps?view=graph-rest-beta)<br/>[windowsKioskProfile](/graph/api/resources/intune-deviceconfig-windowskioskprofile?view=graph-rest-beta)<br/>[windowsKioskSingleUWPApp](/graph/api/resources/intune-deviceconfig-windowskiosksingleuwpapp?view=graph-rest-beta)<br/>[windowsKioskUser](/graph/api/resources/intune-deviceconfig-windowskioskuser?view=graph-rest-beta)<br/>[windowsKioskUWPApp](/graph/api/resources/intune-deviceconfig-windowskioskuwpapp?view=graph-rest-beta)<br/>[windowsKioskVisitor](/graph/api/resources/intune-deviceconfig-windowskioskvisitor?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[defenderScheduleScanDay](/graph/api/resources/intune-deviceconfig-defenderschedulescanday?view=graph-rest-beta)<br/>[defenderSubmitSamplesConsentType](/graph/api/resources/intune-deviceconfig-defendersubmitsamplesconsenttype?view=graph-rest-beta)<br/>[domainNameSource](/graph/api/resources/intune-deviceconfig-domainnamesource?view=graph-rest-beta)<br/>[localSecurityOptionsSmartCardRemovalBehaviorType](/graph/api/resources/intune-deviceconfig-localsecurityoptionssmartcardremovalbehaviortype?view=graph-rest-beta)<br/>[mobileAppActionType](/graph/api/resources/intune-troubleshooting-mobileappactiontype?view=graph-rest-beta)<br/>[mobileAppIntent](/graph/api/resources/intune-troubleshooting-mobileappintent?view=graph-rest-beta)<br/>[roleAssignmentScopeType](/graph/api/resources/intune-rbac-roleassignmentscopetype?view=graph-rest-beta)<br/>[usernameSource](/graph/api/resources/intune-deviceconfig-usernamesource?view=graph-rest-beta)<br/>[windowsDeviceUsageType](/graph/api/resources/intune-enrollment-windowsdeviceusagetype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [setDeviceName](/graph/api/intune-devices-manageddevice-setdevicename?view=graph-rest-beta)<br/>action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**depEnrollmentProfile**<br/>**enrollmentProfile**<br/>**importedAppleDeviceIdentity**<br/>**importedAppleDeviceIdentityResult**<br/>|
|Deletion|beta|Removed the following complex types:<br/>**managementCertificateWithThumbprint**<br/>|
|Deletion|beta|Removed the following enum types:<br/>**depTokenType**<br/>**discoverySource**<br/>**iTunesPairingMode**<br/>|
|Deletion|beta|Removed the importAppleDeviceIdentityList action on [importedAppleDeviceIdentity](/graph/api/resources/intune-corpenrollment-importedappledeviceidentity?view=graph-rest-beta) collection |
|Deletion|beta|Removed the [updateDeviceProfileAssignment](/graph/api/intune-corpenrollment-enrollmentprofile-updatedeviceprofileassignment?view=graph-rest-beta) action on [enrollmentProfile](/graph/api/resources/intune-corpenrollment-enrollmentprofile?view=graph-rest-beta) |
|Deletion|beta|Removed the setDefaultProfile action on [enrollmentProfile](/graph/api/resources/intune-corpenrollment-enrollmentprofile?view=graph-rest-beta) |
|Deletion|beta|Removed the shareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) |
|Deletion|beta|Removed the unshareForSchoolDataSyncService action on [depOnboardingSetting](/graph/api/resources/intune-onboarding-deponboardingsetting?view=graph-rest-beta) |
|Deletion|beta|Removed the exportMobileConfig](/graph/api/intune_corpenrollment_enrollmentprofile_exportmobileconfig?view=graph-rest-beta) function on [enrollmentProfile](/graph/api/resources/intune-corpenrollment-enrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the **userDomainNameSource** and **customDomainName** properties to the [androidEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-androideasemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **workProfileBlockCamera** and **workProfileBlockCrossProfileContactsSearch** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **workProfileBlockCamera** and **workProfileBlockCrossProfileContactsSearch** properties to the [androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** and **filterOpenInToOnlyManagedApps** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **conflictCount** property to the [deviceComplianceUserOverview](/graph/api/resources/intune-deviceconfig-devicecomplianceuseroverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **conflictCount** property to the [deviceConfigurationUserOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationuseroverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceCleanupSettings** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **usernameSource** property from the [iosEasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-ioseasemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **thirdPartyKeyboardsBlocked** and **filterOpenInToOnlyManagedApps** properties to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **ignoreVersionDetection** property to the [macOSLobApp](/graph/api/resources/intune-apps-macoslobapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **pinRequiredOnLaunchInsteadOfBiometric** and **pinRequiredInsteadOfBiometricTimeout** properties to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **autopilotEnrolled**, **requireUserEnrollmentApproval**, **iccid** and **udid** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **isAutopilotEnrolled** property from the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [managedDeviceMobileAppConfigurationDeviceSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicesummary?view=graph-rest-beta) entity|
|Addition|beta|Added the **conflictCount** property to the [managedDeviceMobileAppConfigurationUserSummary](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationusersummary?view=graph-rest-beta) entity|
|Addition|beta|Added the **scopeType** property to the [roleAssignment](/graph/api/resources/intune-rbac-roleassignment?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **usernameSource** property from the [windows10EasEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-windows10easemailprofileconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees**, **localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers**, **localSecurityOptionsDisableServerDigitallySignCommunicationsAlways**, **localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees**, **localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares**, **localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts**, **localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares**, **localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange** and **localSecurityOptionsSmartCardRemovalBehavior** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **showInstallationProgress**, **blockDeviceSetupRetryByUser**, **allowDeviceResetOnInstallFailure**, **allowLogCollectionOnInstallFailure**, **customErrorMessage**, **installProgressTimeoutInMinutes** and **allowDeviceUseOnInstallFailure** properties to the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune-onboarding-windows10enrollmentcompletionpageconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **title**, **bodyText**, **moreInfoUrl** and **moreInfoText** properties from the [windows10EnrollmentCompletionPageConfiguration](/graph/api/resources/intune-onboarding-windows10enrollmentcompletionpageconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **defenderBlockOnAccessProtection**, **defenderScheduleScanDay** and **defenderSubmitSamplesConsentType** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **language** and **enrollmentSettings** properties to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **useDeviceContext** property to the [windowsMobileMSI](/graph/api/resources/intune-apps-windowsmobilemsi?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **usernameSource** property from the [windowsPhoneEASEmailProfileConfiguration](/graph/api/resources/intune-deviceconfig-windowsphoneeasemailprofileconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **localActions** navigation property from the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **enrollmentProfiles** and **importedAppleDeviceIdentities** navigation properties from the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **mobileAppIntentAndStates** and **mobileAppTroubleshootingEvents** navigation properties to the [user](/graph/api/resources/intune-shared-user?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceUsageType** and **skipKeyboardSelectionPage** properties to the [outOfBoxExperienceSettings](/graph/api/resources/intune-enrollment-outofboxexperiencesettings?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **paloAltoGlobalProtect** member from the [androidForWorkVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidforworkvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **samAccountName** and **primarySmtpAddress** members to the [androidUsernameSource](/graph/api/resources/intune-deviceconfig-androidusernamesource?view=graph-rest-beta) enum type|
|Deletion|beta|Removed the **paloAltoGlobalProtect** member from the [androidVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [windows10VpnConnectionType](/graph/api/resources/intune-deviceconfig-windows10vpnconnectiontype?view=graph-rest-beta) enum type|

### Education

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change          | v1.0 and beta | The scope **Members.Read.Hidden** is required to read or update the **Members** collection on an [educationClass](/graph/api/resources/educationclass?view=graph-rest-1.0) entity using app-only tokens. |
|Change           |Beta           |Updated the possible values of **educationSubmissionStatus** type in the status property of  [educationsubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta).|
|Change           |Beta           |Added the **educationAssignmentIndividualRecipient** complex type to the assignTo property of [educationAssignment](/graph/api/resources/educationassignment?view=graph-rest-beta).|
|Change           |Beta           |Added the **unsubmittedBy**, **unsubmittedDate**, **returnedBy**, **returnedDate** property of [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta).|
|Addition         |Beta           |Added the [return](/graph/api/educationsubmission-return?view=graph-rest-beta) and  [unsubmit](/graph/api/educationsubmission-unsubmit?view=graph-rest-beta) action to [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta).|
|Change           |Beta           |Removed the release and  recall action on [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta).|

### Groups

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0 and beta | Added the **importance** property to the [post](/graph/api/resources/post?view=graph-rest-1.0) entity. |

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Change           | Beta          | Renamed the **creatorUserId** property of the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) entity to **creatorId** to better reflect its meaning. |

### Identity and access

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0        | Added [List deleted items owned by a user](/graph/api/directory-deleteditems-user-owned?view=graph-rest-1.0) action to [directory (deleted items)](/graph/api/resources/directory?view=graph-rest-1.0) resource |
| Addition | beta | Added the [getUserOwnedObjects](/graph/api/directory-deleteditems-user-owned?view=graph-rest-beta) function to the [directory](/graph/api/resources/directory?view=graph-rest-beta) resource to list the deleted groups owned by a given user. |

### People and workplace intelligence | Insights

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | Beta          | Added the [settings](/graph/api/resources/user-settings?view=graph-rest-beta) entity and the following CRUD methods: <br> [Get](/graph/api/user-get-settings?view=graph-rest-beta) <br> [Update](/graph/api/user-update-settings?view=graph-rest-beta) |


## April 2018

### Calendar

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | Added the **locations** property to the [event](/graph/api/resources/event?view=graph-rest-1.0) entity to support organizing an event that attendees can attend from more than one location. |
| Addition        | v1.0          | Added the **locationType** property to the [location](/graph/api/resources/location?view=graph-rest-1.0) complex type. |
| Addition        | v1.0          | Added the **uniqueId** and **uniqueIdType** properties to the [location](/graph/api/resources/location?view=graph-rest-1.0) complex type. These properties are only for internal use at this point. |

### Cross-device experiences

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition | v1.0 | Added [Get recent activities API](/graph/api/projectrome-get-recent-activities?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Get activities API](/graph/api/projectrome-get-activities?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Upsert Activity](/graph/api/projectrome-put-activity?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Upsert HistoryItem](/graph/api/projectrome-put-historyitem?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Delete Activity](/graph/api/projectrome-delete-activity?view=graph-rest-1.0) |
| Addition | v1.0 | Added [Upsert HistoryItem](/graph/api/projectrome-delete-historyitem?view=graph-rest-1.0) |
| Addition | v1.0 | Added [activity](/graph/api/resources/projectrome-activity?view=graph-rest-1.0) |
| Addition | v.10 | Added [historyItem](/graph/api/resources/projectrome-historyitem?view=graph-rest-1.0) |
| Addition | v1.0 | Added [visualInfo](/graph/api/resources/projectrome-visualinfo?view=graph-rest-1.0) |
| Addition | v1.0 | Added [imageInfo](/graph/api/resources/projectrome-imageinfo?view=graph-rest-1.0) |
| Addition | v.10 | Added [Project Rome overview](/graph/api/resources/project-rome-overview?view=graph-rest-1.0) |
| Change | Beta | Added deep insert documentation to [Upsert Activity](/graph/api/projectrome-put-activity?view=graph-rest-beta) |

### Devices and apps | Corporate management
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[managedDeviceMobileAppConfigurationDeviceStatus](/graph/api/resources/intune-apps-manageddevicemobileappconfigurationdevicestatus?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new enum types:<br/>[managedDeviceOwnerType](/graph/api/resources/intune-devices-manageddeviceownertype?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the **managedDeviceOwnerType** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **deviceStatuses** navigation property to the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-1.0) entity|
|Addition|v1.0|Added the **androidWorkProfile** member to the [policyPlatformType](/graph/api/resources/intune-deviceconfig-policyplatformtype?view=graph-rest-1.0) enum type|
|Addition|beta|Added new entities:<br/>[androidWorkProfileCertificateProfileBase](/graph/api/resources/intune-deviceconfig-androidworkprofilecertificateprofilebase?view=graph-rest-beta)<br/>[androidWorkProfileCustomConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilecustomconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileEasEmailProfileBase](/graph/api/resources/intune-deviceconfig-androidworkprofileeasemailprofilebase?view=graph-rest-beta)<br/>[androidWorkProfileEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofileenterprisewificonfiguration?view=graph-rest-beta)<br/>[androidWorkProfileGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegeneraldeviceconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileGmailEasConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilegmaileasconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileNineWorkEasConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilenineworkeasconfiguration?view=graph-rest-beta)<br/>[androidWorkProfilePkcsCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilepkcscertificateprofile?view=graph-rest-beta)<br/>[androidWorkProfileScepCertificateProfile](/graph/api/resources/intune-deviceconfig-androidworkprofilescepcertificateprofile?view=graph-rest-beta)<br/>[androidWorkProfileTrustedRootCertificate](/graph/api/resources/intune-deviceconfig-androidworkprofiletrustedrootcertificate?view=graph-rest-beta)<br/>[androidWorkProfileVpnConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconfiguration?view=graph-rest-beta)<br/>[androidWorkProfileWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidworkprofilewificonfiguration?view=graph-rest-beta)<br/>[restrictedAppsViolation](/graph/api/resources/intune-deviceconfig-restrictedappsviolation?view=graph-rest-beta)<br/>[windowsAutopilotDeploymentProfileAssignment](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofileassignment?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[managedDeviceModelsAndManufacturers](/graph/api/resources/intune-devices-manageddevicemodelsandmanufacturers?view=graph-rest-beta)<br/>[managedDeviceReportedApp](/graph/api/resources/intune-devices-manageddevicereportedapp?view=graph-rest-beta)<br/>[windowsEnrollmentStatusScreenSettings](/graph/api/resources/intune-enrollment-windowsenrollmentstatusscreensettings?view=graph-rest-beta)<br/>|
|Addition|beta|Added new enum types:<br/>[androidWorkProfileCrossProfileDataSharingType](/graph/api/resources/intune-deviceconfig-androidworkprofilecrossprofiledatasharingtype?view=graph-rest-beta)<br/>[androidWorkProfileDefaultAppPermissionPolicyType](/graph/api/resources/intune-deviceconfig-androidworkprofiledefaultapppermissionpolicytype?view=graph-rest-beta)<br/>[androidWorkProfileRequiredPasswordType](/graph/api/resources/intune-deviceconfig-androidworkprofilerequiredpasswordtype?view=graph-rest-beta)<br/>[androidWorkProfileVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidworkprofilevpnconnectiontype?view=graph-rest-beta)<br/>[bitLockerRecoveryInformationType](/graph/api/resources/intune-deviceconfig-bitlockerrecoveryinformationtype?view=graph-rest-beta)<br/>[localSecurityOptionsInformationShownOnLockScreenType](/graph/api/resources/intune-deviceconfig-localsecurityoptionsinformationshownonlockscreentype?view=graph-rest-beta)<br/>[managedAppRemediationAction](/graph/api/resources/intune-mam-managedappremediationaction?view=graph-rest-beta)<br/>[managedDeviceOwnerType](/graph/api/resources/intune-devices-manageddeviceownertype?view=graph-rest-beta)<br/>[restrictedAppsState](/graph/api/resources/intune-deviceconfig-restrictedappsstate?view=graph-rest-beta)<br/>[windows10VpnProfileTarget](/graph/api/resources/intune-deviceconfig-windows10vpnprofiletarget?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [playLostModeSound](/graph/api/intune-devices-manageddevice-playlostmodesound?view=graph-rest-beta) action on [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) |
|Deletion|beta|Removed the following enum types:<br/>**bitLockerRecoveryinformationType**<br/>**windowsUpdateRestartMode**<br/>|
|Addition|beta|Added the **workProfileBlockScreenCapture** and **workProfileBlockCrossProfileCallerId** properties to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipePatchVersion**, **allowedAndroidDeviceManufacturers** and **appActionIfAndroidDeviceManufacturerNotAllowed** properties to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipeSdkVersion**, **minimumWipePatchVersion**, **allowedIosDeviceModels**, **appActionIfIosDeviceModelNotAllowed**, **allowedAndroidDeviceManufacturers** and **appActionIfAndroidDeviceManufacturerNotAllowed** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [deviceComplianceDeviceOverview](/graph/api/resources/intune-deviceconfig-devicecompliancedeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **notApplicablePlatformCount** and **conflictCount** properties to the [deviceConfigurationDeviceOverview](/graph/api/resources/intune-deviceconfig-deviceconfigurationdeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **accountMoveCompletionDateTime** property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipeSdkVersion**, **allowedIosDeviceModels** and **appActionIfIosDeviceModelNotAllowed** properties to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **minimumWipeOsVersion**, **minimumWipeAppVersion**, **appActionIfDeviceComplianceRequired** and **appActionIfMaximumPinRetriesExceeded** properties to the [managedAppProtection](/graph/api/resources/intune-mam-managedappprotection?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceOwnerType**, **preferMdmOverGroupPolicyAppliedDateTime**, **isAutopilotEnrolled** and **requestUserEnrollmentApproval** properties to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceModelsAndManufacturers** property to the [managedDeviceOverview](/graph/api/resources/intune-devices-manageddeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **localSecurityOptionsMachineInactivityLimitInMinutes**, **localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool**, **localSecurityOptionsInformationShownOnLockScreen**, **defenderSecurityCenterDisableAccountUI**, **defenderSecurityCenterDisableHardwareUI**, **defenderSecurityCenterDisableRansomwareUI**, **defenderSecurityCenterDisableSecureBootUI** and **defenderSecurityCenterDisableTroubleshootingUI** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **printerNames**, **printerDefaultName**, **printerBlockAddition** and **searchBlockWebResults** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **profileTarget**, **enableAlwaysOn** and **enableDeviceTunnel** properties to the [windows10VpnConfiguration](/graph/api/resources/intune-deviceconfig-windows10vpnconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **enrollmentStatusScreenSettings** property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **deviceConfigurationRestrictedAppsViolations** navigation property to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **assignments** navigation property to the [windowsAutopilotDeploymentProfile](/graph/api/resources/intune-enrollment-windowsautopilotdeploymentprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **networkAccessConfigurations** navigation property to the [windowsDomainJoinConfiguration](/graph/api/resources/intune-deviceconfig-windowsdomainjoinconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **permissions** property from the [auditActor](/graph/api/resources/intune-auditing-auditactor?view=graph-rest-beta) complex type|
|Change|beta|Changed the type of the following properties on the [bitLockerRecoveryOptions](/graph/api/resources/intune-deviceconfig-bitlockerrecoveryoptions?view=graph-rest-beta) complex type:<br/>**recoveryInformationToStore** from [bitLockerRecoveryinformationType](/graph/api/resources/intune-deviceconfig-bitlockerrecoveryinformationtype?view=graph-rest-beta) to [bitLockerRecoveryInformationType](/graph/api/resources/intune-deviceconfig-bitlockerrecoveryinformationtype?view=graph-rest-beta)<br/>|
|Addition|beta|Added the **deviceInactivityBeforeRetirementInDay** property to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added the **landingPageCustomizedImage** property to the [intuneBrand](/graph/api/resources/intune-onboarding-intunebrand?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **ipAddressOrFqdn** property from the [vpnServer](/graph/api/resources/intune-deviceconfig-vpnserver?view=graph-rest-beta) complex type|
|Deletion|beta|Removed the **restartMode** property from the [windowsUpdateScheduledInstall](/graph/api/resources/intune-deviceconfig-windowsupdatescheduledinstall?view=graph-rest-beta) complex type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidForWorkVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidforworkvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [androidVpnConnectionType](/graph/api/resources/intune-deviceconfig-androidvpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **paloAltoGlobalProtect** member to the [appleVpnConnectionType](/graph/api/resources/intune-deviceconfig-applevpnconnectiontype?view=graph-rest-beta) enum type|
|Addition|beta|Added the **androidWorkProfile** member to the [policyPlatformType](/graph/api/resources/intune-deviceconfig-policyplatformtype?view=graph-rest-beta) enum type|

### Education

|Change type|Version|Description|
|:---|:---|:---|
|Change|Beta|Added the reportableIdentifier property to [educationsynchronizationerror](/graph/api/resources/educationsynchronizationerror?view=graph-rest-beta).|
|Change|Beta|Updated the response options for the [uploadUrl](/graph/api/educationsynchronizationprofile-uploadurl?view=graph-rest-beta) API.|
|Change|Beta|Updated the text for description of the [educationSynchronizationError](/graph/api/resources/educationsynchronizationerror?view=graph-rest-beta) resource type.|
|Change|Beta|Updated the text for description of the [get sync errors](/graph/api/educationsynchronizationerrors-get?view=graph-rest-beta) API.|

### Reports

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added the [directoryAudit](/graph/api/resources/directoryaudit?view=graph-rest-beta) and [signIn](/graph/api/resources/signin?view=graph-rest-beta) entities to support a new audit log API. |
|Addition|Beta|Added the following resources to support the audit log API: [appIndentity](/graph/api/resources/appidentity?view=graph-rest-beta), [auditActivityInitiator](/graph/api/resources/auditactivityinitiator?view=graph-rest-beta), [conditionalAccessPolicy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta), [deviceDetail](/graph/api/resources/devicedetail?view=graph-rest-beta), [mfaDetail](/graph/api/resources/mfadetail?view=graph-rest-beta), [modifiedProperty](/graph/api/resources/modifiedproperty?view=graph-rest-beta), [signinLocation](/graph/api/resources/signinlocation?view=graph-rest-beta), [signinStatus](/graph/api/resources/signinstatus?view=graph-rest-beta), [targetResource](/graph/api/resources/targetresource?view=graph-rest-beta), [targetResourceApp](/graph/api/resources/targetresourceapp?view=graph-rest-beta), [targetResourceDevice](/graph/api/resources/targetresourcedevice?view=graph-rest-beta), [targetResourceDirectory](/graph/api/resources/targetresourcedirectory?view=graph-rest-beta), [targetResourceGroup](/graph/api/resources/targetresourcegroup?view=graph-rest-beta), [targetResourceOther](/graph/api/resources/targetresourceother?view=graph-rest-beta), [targetResourcePolicy](/graph/api/resources/targetresourcepolicy?view=graph-rest-beta), [targetResourceRole](/graph/api/resources/targetresourcerole?view=graph-rest-beta), [targetResourceServicePrincipal](/graph/api/resources/targetresourceserviceprincipal?view=graph-rest-beta), [targetResourceUser](/graph/api/resources/targetresourceuser?view=graph-rest-beta), [userIdentity](/graph/api/resources/useridentity?view=graph-rest-beta) |

### Users

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added the **privacyProfile** complex type to the [organization](/graph/api/resources/organization?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the **legalAgeGroup, ageGroup and consentProvidedForMinor** complex type to the [user](/graph/api/resources/user?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added users and groups support to [webhook](/graph/api/resources/webhooks?view=graph-rest-1.0) notification subscriptions. |
| Addition        | beta        | Added [List deleted items owned by a user](/graph/api/directory-deleteditems-user-owned?view=graph-rest-beta) action to [directory (deleted items)](/graph/api/resources/directory?view=graph-rest-beta) resource |
| Addition        | v1.0        | Added the new **masterCategories** navigation property to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-1.0) entity. **masterCategories** is a collection of [outlookCategory](/graph/api/resources/outlookcategory?view=graph-rest-1.0) objects. |
| Addition        | v1.0        | Added the [outlookCategory](/graph/api/resources/outlookcategory?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the following CRUD operations for [outlookCategory](/graph/api/resources/outlookcategory?view=graph-rest-1.0): [create](/graph/api/outlookuser-post-mastercategories?view=graph-rest-1.0), [get](/graph/api/outlookcategory-get?view=graph-rest-1.0), [update](/graph/api/outlookcategory-update?view=graph-rest-1.0), and [delete](/graph/api/outlookcategory-delete?view=graph-rest-1.0). |
| Addition        | v1.0        | Added the new [supportedLanguages](/graph/api/outlookuser-supportedlanguages?view=graph-rest-1.0) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the new [supportedTimeZones](/graph/api/outlookuser-supportedtimezones?view=graph-rest-1.0) function to the [outlookUser](/graph/api/resources/outlookuser?view=graph-rest-1.0) entity. |
|Addition | v1.0 | Added the new **workingHours** property to [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-1.0). See [workingHours resource type](/graph/api/resources/workinghours?view=graph-rest-1.0) for information on the supported use cases.|
|Addition | v1.0 | Added the following new complex types: <br> [workingHours](/graph/api/resources/workinghours?view=graph-rest-1.0) <br> [timeZoneBase](/graph/api/resources/timezonebase?view=graph-rest-1.0) <br> [customTimeZone](/graph/api/resources/customtimezone?view=graph-rest-1.0) <br> [standardTimeZoneOffset](/graph/api/resources/standardtimezoneoffset?view=graph-rest-1.0) <br> [daylightTimeZoneOffset](/graph/api/resources/daylighttimezoneoffset?view=graph-rest-1.0)|


### Mail

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0          | Added the **flag** property to the [message](/graph/api/resources/message?view=graph-rest-1.0) entity. Added the shared [followupFlag](/graph/api/resources/followupflag?view=graph-rest-1.0) complex type.|
| Addition        | v1.0        | Added the **internetMessageHeaders** property to the [message](/graph/api/resources/message?view=graph-rest-1.0) entity. |
| Addition        | v1.0        | Added the [internetMessageHeader](/graph/api/resources/internetmessageheader?view=graph-rest-1.0) complex type. |
| Addition        | v1.0        | Added the **messageRules** navigation property to the [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-1.0) entity. **messageRules** is a collection of [messageRule](/graph/api/resources/messagerule?view=graph-rest-1.0) instances. |
| Addition        | v1.0        | Added the [messageRule](/graph/api/resources/messagerule?view=graph-rest-1.0) entity, and [messageRuleActions](/graph/api/resources/messageruleactions?view=graph-rest-1.0), [messageRulePredicates](/graph/api/resources/messagerulepredicates?view=graph-rest-1.0), and [sizeRange](/graph/api/resources/sizerange?view=graph-rest-1.0) complex types. |
| Addition        | v1.0        | Added the following CRUD operations for message rules: [create](/graph/api/mailfolder-post-messagerules?view=graph-rest-1.0), [list](/graph/api/mailfolder-list-messagerules?view=graph-rest-1.0), [get](/graph/api/messagerule-get?view=graph-rest-1.0), [update](/graph/api/messagerule-update?view=graph-rest-1.0), and [delete](/graph/api/messagerule-delete?view=graph-rest-1.0). |
| Addition | Beta | Added [mailSearchFolder](/graph/api/resources/mailsearchfolder?view=graph-rest-beta). |
| Addition | Beta | Added the following APIs for mail search folder: [Create](/graph/api/mailsearchfolder-post?view=graph-rest-beta), [Update](/graph/api/mailsearchfolder-update?view=graph-rest-beta). |
| Change | Beta | Added support for mail search folder to [delete mailFolder](/graph/api/mailfolder-delete?view=graph-rest-beta), [get mailFolder](/graph/api/mailfolder-get?view=graph-rest-beta), and [list child folders](/graph/api/mailfolder-list-childfolders?view=graph-rest-beta). |

### Personal contacts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0          | Added the **flag** property to the [contact](/graph/api/resources/contact?view=graph-rest-1.0) entity. Added the shared [followupFlag](/graph/api/resources/followupflag?view=graph-rest-1.0) complex type.|

### Reports
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta| Added delegated access support. |
|Addition|v1.0| Added delegated access support. |

### Security

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added the [security API](/graph/api/resources/security-api-overview?view=graph-rest-beta), including the following resources and operations:<br/>[alert](/graph/api/resources/alert?view=graph-rest-beta) (and related entities)<br/>[Get alert](/graph/api/alert-get?view=graph-rest-beta)<br/>[List alerts](/graph/api/alert-list?view=graph-rest-beta)<br/>[Update alert](/graph/api/alert-update?view=graph-rest-beta)<br/><br/>Added the following supporting documentation:<br/>[Errors](/graph/api/resources/security-error-codes?view=graph-rest-beta)<br/>[Security solution integrations using the Microsoft Graph Security API](security-integration.md)

### Teamwork

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new [teamMemberSettings](/graph/api/resources/teammembersettings?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [teamGuestSettings](/graph/api/resources/teamguestsettings?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [teamMessagingSettings](/graph/api/resources/teammessagingsettings?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [teamFunSettings](/graph/api/resources/teamfunsettings?view=graph-rest-beta) entity.|
|Addition|Beta|Added new [delete channel](/graph/api/channel-delete?view=graph-rest-beta) operation.|
|Addition|Beta|Added new [patch channel](/graph/api/channel-patch?view=graph-rest-beta) operation.|
|Addition|Beta|Added new webUrl property to [team](/graph/api/resources/team?view=graph-rest-beta) resource.|
|Change|Beta|Updated the path to the [channel](/graph/api/resources/channel?view=graph-rest-beta) entity.|

## March 2018

### Cross-device experiences

| **Change type** | **Version** | **Description**              |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta       | Added [Get recent activities API](/graph/api/projectrome-get-recent-activities?view=graph-rest-beta) |
| Addition        | Beta       | Added [Get activities API](/graph/api/projectrome-get-activities?view=graph-rest-beta) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert Activity](/graph/api/projectrome-put-activity?view=graph-rest-beta) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert HistoryItem](/graph/api/projectrome-put-historyitem?view=graph-rest-beta) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Delete Activity](/graph/api/projectrome-delete-activity?view=graph-rest-beta) |
| Change | Beta | Added UserActivity.ReadWrite.CreatedByApp permission to [Upsert HistoryItem](/graph/api/projectrome-delete-historyitem?view=graph-rest-beta) |
| Change | Beta | Added **status** property to [activity](/graph/api/resources/projectrome-activity?view=graph-rest-beta) |
| Change | Beta | Added **activity** navigation property to [historyItem](/graph/api/resources/projectrome-historyitem?view=graph-rest-beta) |
| Change | Beta | Added new APIs to [Project Rome overview](/graph/api/resources/project-rome-overview?view=graph-rest-beta) |

### Devices and apps | Corporate management

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[iosMobileAppConfiguration](/graph/api/resources/intune-apps-iosmobileappconfiguration?view=graph-rest-1.0)<br/>[vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added new complex types:<br/>[appConfigurationSettingItem](/graph/api/resources/intune-apps-appconfigurationsettingitem?view=graph-rest-1.0)<br/>|
|Addition|v1.0|Added the [syncLicenses](/graph/api/intune-onboarding-vpptoken-synclicenses?view=graph-rest-1.0) action on [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-1.0) |
|Addition|v1.0|Added the **vppTokens** navigation property to the [deviceAppManagement](/graph/api/resources/intune-shared-deviceappmanagement?view=graph-rest-1.0) entity|
|Addition|beta|Added the **managementCertificateExpirationDate** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **enhancedJailBreak** property to the [deviceManagementSettings](/graph/api/resources/intune-deviceconfig-devicemanagementsettings?view=graph-rest-beta) complex type|
|Addition|beta|Added new entities:<br/>[androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta)<br/>[androidDeviceOwnerGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration?view=graph-rest-beta)<br/>[androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta)<br/>[androidManagedStoreAppConfigurationSchema](/graph/api/resources/intune-androidforwork-androidmanagedstoreappconfigurationschema?view=graph-rest-beta)<br/>[dataSharingConsent](/graph/api/resources/intune-devices-datasharingconsent?view=graph-rest-beta)<br/>[deviceConfigurationUserStateSummary](/graph/api/resources/intune-deviceconfig-deviceconfigurationuserstatesummary?view=graph-rest-beta)<br/>[macOSEndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-macosendpointprotectionconfiguration?view=graph-rest-beta)<br/>[macOSImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-macosimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[macOSLobApp](/graph/api/resources/intune-apps-macoslobapp?view=graph-rest-beta)<br/>[managedEBookCategory](/graph/api/resources/intune-books-managedebookcategory?view=graph-rest-beta)<br/>[microsoftStoreForBusinessContainedApp](/graph/api/resources/intune-apps-microsoftstoreforbusinesscontainedapp?view=graph-rest-beta)<br/>[mobileContainedApp](/graph/api/resources/intune-apps-mobilecontainedapp?view=graph-rest-beta)<br/>[windowsUniversalAppXContainedApp](/graph/api/resources/intune-apps-windowsuniversalappxcontainedapp?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[androidManagedStoreAppConfigurationSchemaItem](/graph/api/resources/intune-androidforwork-androidmanagedstoreappconfigurationschemaitem?view=graph-rest-beta)<br/>[deviceAndAppManagementData](/graph/api/resources/intune-onboarding-deviceandappmanagementdata?view=graph-rest-beta)<br/>[loggedOnUser](/graph/api/resources/intune-devices-loggedonuser?view=graph-rest-beta)<br/>[macOSFirewallApplication](/graph/api/resources/intune-deviceconfig-macosfirewallapplication?view=graph-rest-beta)<br/>[macOSLobChildApp](/graph/api/resources/intune-apps-macoslobchildapp?view=graph-rest-beta)<br/>[macOSMinimumOperatingSystem](/graph/api/resources/intune-apps-macosminimumoperatingsystem?view=graph-rest-beta)<br/>[windowsAppXAppAssignmentSettings](/graph/api/resources/intune-apps-windowsappxappassignmentsettings?view=graph-rest-beta)<br/>[windowsUniversalAppXAppAssignmentSettings](/graph/api/resources/intune-apps-windowsuniversalappxappassignmentsettings?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [requestSignupUrl](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-requestsignupurl?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [completeSignup](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-completesignup?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [syncApps](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-syncapps?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [unbind](/graph/api/intune-androidforwork-androidmanagedstoreaccountenterprisesettings-unbind?view=graph-rest-beta) action on [androidManagedStoreAccountEnterpriseSettings](/graph/api/resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings?view=graph-rest-beta) |
|Addition|beta|Added the [revokeToken](/graph/api/intune-androidforwork-androiddeviceownerenrollmentprofile-revoketoken?view=graph-rest-beta) action on [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [createToken](/graph/api/intune-androidforwork-androiddeviceownerenrollmentprofile-createtoken?view=graph-rest-beta) action on [androidDeviceOwnerEnrollmentProfile](/graph/api/resources/intune-androidforwork-androiddeviceownerenrollmentprofile?view=graph-rest-beta) |
|Addition|beta|Added the [assign](/graph/api/intune-apps-manageddevicemobileappconfiguration-assign?view=graph-rest-beta) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) |
|Addition|beta|Added the [consentToDataSharing](/graph/api/intune-devices-datasharingconsent-consenttodatasharing?view=graph-rest-beta) action on [dataSharingConsent](/graph/api/resources/intune-devices-datasharingconsent?view=graph-rest-beta) |
|Addition|beta|Added the [getLoggedOnManagedDevices](/graph/api/intune-devices-user-getloggedonmanageddevices?view=graph-rest-beta) function on [user](/graph/api/resources/intune-shared-user?view=graph-rest-beta) |
|Addition|beta|Added the [exportDeviceAndAppManagementData](/graph/api/intune-onboarding-user-exportdeviceandappmanagementdata?view=graph-rest-beta) function on [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) |
|Addition|beta|Added the [exportDeviceAndAppManagementData](/graph/api/intune-onboarding-user-exportdeviceandappmanagementdata?view=graph-rest-beta) function on [user](/graph/api/resources/intune-devices-user?view=graph-rest-beta) |
|Deletion|beta|Removed the following entities:<br/>**appleVolumePurchaseProgramToken**<br/>**mdmAppConfigGroupAssignment**<br/>**windows10KioskConfiguration**<br/>|
|Deletion|beta|Removed the [assign](/graph/api/intune-apps-manageddevicemobileappconfiguration-assign?view=graph-rest-beta) action on [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) |
|Deletion|beta|Removed the [syncApps](/graph/api/intune-onboarding-applevolumepurchaseprogramtoken-syncapps?view=graph-rest-beta) action on [appleVolumePurchaseProgramToken](/graph/api/resources/intune-onboarding-applevolumepurchaseprogramtoken?view=graph-rest-beta) |
|Addition|beta|Added the **workProfileBluetoothEnableContactSharing** property to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [androidForWorkImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkimportedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [androidImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-androidimportedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [iosImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-iosimportedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **encodedSettingXml** property to the [iosMobileAppConfiguration](/graph/api/resources/intune-apps-iosmobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedDeviceId** and **azureADDeviceId** properties to the [managedAppRegistration](/graph/api/resources/intune-mam-managedappregistration?view=graph-rest-beta) entity|
|Addition|beta|Added the **usersLoggedOn** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **lastLoggedOnUserId** property from the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Addition|beta|Added the **lastModifiedDateTime** property to the [managedDeviceOverview](/graph/api/resources/intune-devices-manageddeviceoverview?view=graph-rest-beta) entity|
|Addition|beta|Added the **isDependency** property to the [mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-beta) entity|
|Addition|beta|Added the **windowsEnabled**, **macEnabled**, **windowsDeviceBlockedOnMissingPartnerData** and **macDeviceBlockedOnMissingPartnerData** properties to the [mobileThreatDefenseConnector](/graph/api/resources/intune-onboarding-mobilethreatdefenseconnector?view=graph-rest-beta) entity|
|Addition|beta|Added the **shouldUninstallOlderVersionsOfOffice** property to the [officeSuiteApp](/graph/api/resources/intune-apps-officesuiteapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **dataSharingConsentGranted** property to the [vppToken](/graph/api/resources/intune-onboarding-vpptoken?view=graph-rest-beta) entity|
|Addition|beta|Added the **localSecurityOptionsBlockRemoteLogonWithBlankPassword**, **localSecurityOptionsAdministratorAccountName**, **localSecurityOptionsEnableGuestAccount**, **localSecurityOptionsGuestAccountName**, **localSecurityOptionsAllowUndockWithoutHavingToLogon**, **localSecurityOptionsBlockUsersInstallingPrinterDrivers**, **localSecurityOptionsBlockRemoteOpticalDriveAccess**, **localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser**, **localSecurityOptionsMachineInactivityLimit**, **localSecurityOptionsDoNotRequireCtrlAltDel**, **localSecurityOptionsInformationDisplayedOnLockScreen**, **localSecurityOptionsHideLastSignedInUser**, **localSecurityOptionsHideUsernameAtSignIn**, **localSecurityOptionsLogOnMessageTitle**, **localSecurityOptionsLogOnMessageText**, **localSecurityOptionsAllowPKU2UAuthenticationRequests**, **localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager**, **localSecurityOptionsClearVirtualMemoryPageFile**, **localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn**, **localSecurityOptionsAllowUIAccessApplicationElevation**, **localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations**, **localSecurityOptionsOnlyElevateSignedExecutables**, **localSecurityOptionsAdministratorElevationPromptBehavior**, **localSecurityOptionsStandardUserElevationPromptBehavior**, **localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation**, **localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation**, **localSecurityOptionsAllowUIAccessApplicationsForSecureLocations**, **localSecurityOptionsUseAdminApprovalMode**, **localSecurityOptionsUseAdminApprovalModeForAdministrators**, **deviceGuardLocalSystemAuthorityCredentialGuardSettings**, **deviceGuardEnableVirtualizationBasedSecurity** and **deviceGuardEnableSecureBootWithDMA** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **defenderPasswordProtectedEmailContentExecutionType** property from the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [windows10ImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-windows10importedpfxcertificateprofile?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **printerNames**, **defaultPrinterName** and **blockAddingNewPrinter** properties from the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **certificateStore** property to the [windows81SCEPCertificateProfile](/graph/api/resources/intune-deviceconfig-windows81scepcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **purchaseOrderIdentifier** property to the [windowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-windowsautopilotdeviceidentity?view=graph-rest-beta) entity|
|Change|beta|Changed the following properties on the [windowsCertificateProfileBase](/graph/api/resources/intune-deviceconfig-windowscertificateprofilebase?view=graph-rest-beta) entity:<br/>**subjectAlternativeNameType** from required to optional<br/>|
|Addition|beta|Added the **advancedThreatProtectionOnboardingFilename** and **advancedThreatProtectionOffboardingFilename** properties to the [windowsDefenderAdvancedThreatProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windowsdefenderadvancedthreatprotectionconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **intendedPurpose** property to the [windowsPhone81ImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-windowsphone81importedpfxcertificateprofile?view=graph-rest-beta) entity|
|Addition|beta|Added the **skipChecksBeforeRestart** and **updateWeeks** properties to the [windowsUpdateForBusinessConfiguration](/graph/api/resources/intune-deviceconfig-windowsupdateforbusinessconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **managedEBookCategories** navigation property to the [deviceAppManagement](/graph/api/resources/intune-apps-deviceappmanagement?view=graph-rest-beta) entity|
|Addition|beta|Added the **androidManagedStoreAccountEnterpriseSettings**, **androidManagedStoreAppConfigurationSchemas**, **androidDeviceOwnerEnrollmentProfiles**, **dataSharingConsents** and **deviceConfigurationUserStateSummaries** navigation properties to the [deviceManagement](/graph/api/resources/intune-shared-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **deviceSetupConfigurations** navigation property from the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Deletion|beta|Removed the **groupAssignments** navigation property from the [managedDeviceMobileAppConfiguration](/graph/api/resources/intune-apps-manageddevicemobileappconfiguration?view=graph-rest-beta) entity|
|Addition|beta|Added the **categories** navigation property to the [managedEBook](/graph/api/resources/intune-books-managedebook?view=graph-rest-beta) entity|
|Addition|beta|Added the **containedApps** navigation property to the [microsoftStoreForBusinessApp](/graph/api/resources/intune-apps-microsoftstoreforbusinessapp?view=graph-rest-beta) entity|
|Addition|beta|Added the **containedApps** navigation property to the [mobileAppContent](/graph/api/resources/intune-apps-mobileappcontent?view=graph-rest-beta) entity|
|Addition|beta|Added the **committedContainedApps** navigation property to the [windowsUniversalAppX](/graph/api/resources/intune-apps-windowsuniversalappx?view=graph-rest-beta) entity|

### Files
|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Added new entities:<br/>[baseItemVersion](/graph/api/resources/baseitemversion?view=graph-rest-1.0)<br/>[driveItemVersion](/graph/api/resources/driveitemversion?view=graph-rest-1.0)<br/>[listItemVersion](/graph/api/resources/listitemversion?view=graph-rest-1.0)<br/> |
|Addition|v1.0|Added new complex types:<br/>[publicationFacet](/graph/api/resources/publicationfacet?view=graph-rest-1.0)<br/> |
|Addition|v1.0|Added the <b>publication</b> property to the [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the <b>versions</b> navigation property to the [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the <b>versions</b> navigation property to the [listItem](/graph/api/resources/listitem?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the <b>root</b> property to the [siteCollection](/graph/api/resources/sitecollection?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the [restoreVersion](/graph/api/driveitemversion-restore?view=graph-rest-1.0) action for the [driveItemVersion](/graph/api/resources/driveitemversion?view=graph-rest-1.0) entity |
|Addition|v1.0|Added the [restoreVersion](/graph/api/listitemversion-restore?view=graph-rest-1.0) action for the [listItemVersion](/graph/api/resources/listitemversion?view=graph-rest-1.0) entity |
|Addition|beta|Added new complex type:<br/>[itemPreviewInfo](/graph/api/resources/itempreviewinfo?view=graph-rest-beta)<br/> |
|Addition|beta|Added the <b>name</b> property to the [contentTypeInfo](/graph/api/resources/contenttypeinfo?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>objectType</b> property to the [deleteAction](/graph/api/resources/deleteaction?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>newName</b> property to the [renameAction](/graph/api/resources/renameaction?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>tenantId</b> property to the [sharepointIds](/graph/api/resources/renameaction?view=graph-rest-beta) complex type |
|Addition|beta|Added the <b>lastRecordedDateTime</b> property to the [itemActivityTimeSet](/graph/api/resources/itemactivitytimeset?view=graph-rest-beta) complex type |
|Addition|beta|Added the [preview](/graph/api/driveitem-preview?view=graph-rest-beta) action for the [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta) entity |

### Groups

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | v1.0        | Added [groupLifecyclePolicy](/graph/api/resources/grouplifecyclepolicy?view=graph-rest-1.0) |
| Addition        | v1.0        | Added the following APIs for group lifecycle policy: [Create](/graph/api/grouplifecyclepolicy-post-grouplifecyclepolicies?view=graph-rest-1.0), [List](/graph/api/grouplifecyclepolicy-list?view=graph-rest-1.0), [Get](/graph/api/grouplifecyclepolicy-get?view=graph-rest-1.0), [Update](/graph/api/grouplifecyclepolicy-update?view=graph-rest-1.0), [Delete](/graph/api/grouplifecyclepolicy-delete?view=graph-rest-1.0), [Add group](/graph/api/grouplifecyclepolicy-addgroup?view=graph-rest-1.0), [Remove group](/graph/api/grouplifecyclepolicy-removegroup?view=graph-rest-1.0) |
| Addition        | v1.0        | Added [List groupLifecyclePolicies](/graph/api/group-list-grouplifecyclepolicies?view=graph-rest-1.0) function to [group](/graph/api/resources/group?view=graph-rest-1.0) |
| Change | v1.0 | Added renewedDateTime property and [renew](/graph/api/group-renew?view=graph-rest-1.0) to [group](/graph/api/resources/group?view=graph-rest-1.0) |

### Identity and access

|Change type|Version|Description|
|:---|:---|:---|
|Change|beta|Added the **applicationID** and **creatorUserID** properties to the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) resource. |
|Change|beta|Added the [list](/graph/api/subscription-list?view=graph-rest-beta) operation to the [subscription](/graph/api/resources/subscription?view=graph-rest-beta) entity. |

### Identity and access | Identity and sign-in

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | beta        | Added new entity [dataPolicyOperation](/graph/api/resources/datapolicyoperation?view=graph-rest-beta). This represents a submitted data policy operation for tracking purposes.
| Addition        | beta        | Added the [exportPersonalData](/graph/api/user-exportpersonaldata?view=graph-rest-beta) action on [users](/graph/api/resources/users?view=graph-rest-beta). This action submits a data policy operation request to export personal data stored by Microsoft for a user. |

### Identity and access

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the **onPremisesExtensionAttributes** complex type to the [user](/graph/api/resources/user?view=graph-rest-beta) entity. This contains the on-premises AD extension attributes 1-15. |
| Addition        | Beta        | Added the **privacyProfile** complex type to the [organization](/graph/api/resources/organization?view=graph-rest-beta) entity. |
| Addition        | v1.0        | Added support for [restoring and permanently deleting users and groups](/graph/api/resources/directory?view=graph-rest-1.0). |

### Identity and access | Governance

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
| Addition        | Beta        | Added the [agreement](/graph/api/resources/agreement?view=graph-rest-beta) and [agreementAcceptance](/graph/api/resources/agreementacceptance?view=graph-rest-beta) resources. |
| Addition        | Beta        | Added the following APIs for [agreement](/graph/api/resources/agreement?view=graph-rest-beta): [Create](/graph/api/greement-post-agreements?view=graph-rest-beta), [List](/graph/api/agreement-list?view=graph-rest-beta), [Get](/graph/api/agreement-get?view=graph-rest-beta), [Update](/graph/api/agreement-update?view=graph-rest-beta), [Delete](/graph/api/agreement-delete?view=graph-rest-beta). |
| Addition        | Beta        | Added the [agreementAcceptance](/graph/api/resources/agreementacceptance?view=graph-rest-beta) relationships to the [user](/graph/api/resources/user?view=graph-rest-beta) resource. |

### Reports

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition|beta|Added the **siteId** property to the [sharePointSiteUsageDetail](/graph/api/resources/sharepointsiteusagedetail?view=graph-rest-beta) entity.|

### Workbooks and charts

| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Change|v1.0|Added the **legacyId** property to the [Excel Table](/graph/api/resources/table?view=graph-rest-1.0) entity. This will contain the numeric value identifier (string data type) that will remain constact for a given Excel table. This is provided as an additional metadata if the application relied on the legacy identifier used in older Excel client applications. Note: The `id` and `legacyId` property should be treated as an opaque string value and should not be parsed to any other type within your application. |


## February 2018

### Devices and apps | Corporate management
|Change type|Version|Description|
|:---|:---|:---|
|Addition|beta|Added new entities:<br/>[androidForWorkImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-androidforworkimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[androidImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-androidimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[importedWindowsAutopilotDeviceIdentity](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentity?view=graph-rest-beta)<br/>[iosImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-iosimportedpfxcertificateprofile?view=graph-rest-beta)<br/>[windows10ImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-windows10importedpfxcertificateprofile?view=graph-rest-beta)<br/>[windows10KioskConfiguration](/graph/api/resources/intune-deviceconfig-windows10kioskconfiguration?view=graph-rest-beta)<br/>[windowsPhone81ImportedPFXCertificateProfile](/graph/api/resources/intune-deviceconfig-windowsphone81importedpfxcertificateprofile?view=graph-rest-beta)<br/>|
|Addition|beta|Added new complex types:<br/>[importedWindowsAutopilotDeviceIdentityState](/graph/api/resources/intune-enrollment-importedwindowsautopilotdeviceidentitystate?view=graph-rest-beta)<br/>|
|Addition|beta|Added the [managedDeviceEnrollmentFailureDetails](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuredetails?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentFailureDetails](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuredetails?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentFailureTrends](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuretrends?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentTopFailures](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmenttopfailures?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Addition|beta|Added the [managedDeviceEnrollmentTopFailures](/graph/api/intune-troubleshooting-reportroot-manageddeviceenrollmenttopfailures?view=graph-rest-beta) function on [reportRoot](/graph/api/resources/intune-deviceconfig-reportroot?view=graph-rest-beta) |
|Change|beta|Removed the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties from the [androidCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidcompliancepolicy?view=graph-rest-beta) entity|
|Change|beta|Removed the **requireAppVerify**, **requireSafetyNetAttestationBasicIntegrity**, **requireSafetyNetAttestationCertifiedDevice**, **requireGooglePlayServices**, **requireUpToDateSecurityProviders** and **requireCompanyPortalAppIntegrity** properties from the [androidForWorkCompliancePolicy](/graph/api/resources/intune-deviceconfig-androidforworkcompliancepolicy?view=graph-rest-beta) entity|
|Change|beta|Removed the **name**, **modifiedDateTime**, **totalEnrollmentCount** and **qrCode** properties from the [androidForWorkEnrollmentProfile](/graph/api/resources/intune-androidforwork-androidforworkenrollmentprofile?view=graph-rest-beta) entity|
|Change|beta|Removed the **nonEapAuthenticationMethodForEapTtls**, **nonEapAuthenticationMethodForPeap** and **enableOuterIdentityPrivacy** properties from the [androidForWorkEnterpriseWiFiConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkenterprisewificonfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **workProfileBlockAddingAccounts** property to the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Removed the **blockCrossProfileCopyPaste** and **requireAppVerify** properties from the [androidForWorkGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidforworkgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **deviceOwnerManagementEnabled** property to the [androidForWorkSettings](/graph/api/resources/intune-androidforwork-androidforworksettings?view=graph-rest-beta) entity|
|Change|beta|Removed the **requireAppVerify** property from the [androidGeneralDeviceConfiguration](/graph/api/resources/intune-deviceconfig-androidgeneraldeviceconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **exemptedAppPackages** property to the [androidManagedAppProtection](/graph/api/resources/intune-mam-androidmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **exemptedAppProtocols** and **exemptedAppPackages** properties to the [defaultManagedAppProtection](/graph/api/resources/intune-mam-defaultmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **exemptedAppProtocols** property to the [iosManagedAppProtection](/graph/api/resources/intune-mam-iosmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **lastLoggedOnUserId** property to the [managedDevice](/graph/api/resources/intune-devices-manageddevice?view=graph-rest-beta) entity|
|Change|beta|Added the **isFrameworkFile** property to the [mobileAppContentFile](/graph/api/resources/intune-apps-mobileappcontentfile?view=graph-rest-beta) entity|
|Change|beta|Added the **targetedAppManagementLevels** property to the [targetedManagedAppProtection](/graph/api/resources/intune-mam-targetedmanagedappprotection?view=graph-rest-beta) entity|
|Change|beta|Added the **localSecurityOptionsBlockMicrosoftAccounts**, **localSecurityOptionsEnableAdministratorAccount**, **defenderPreventCredentialStealingType**, **defenderProcessCreationType**, **defenderUntrustedUSBProcessType**, **defenderUntrustedExecutableType**, **defenderPasswordProtectedEmailContentExecutionType**, **defenderAdvancedRansomewareProtectionType** and **applicationGuardAllowFileSaveOnHost** properties to the [windows10EndpointProtectionConfiguration](/graph/api/resources/intune-deviceconfig-windows10endpointprotectionconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **edgeFavoritesListLocation** and **edgeBlockEditFavorites** properties to the [windows10GeneralConfiguration](/graph/api/resources/intune-deviceconfig-windows10generalconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **printerNames**, **defaultPrinterName** and **blockAddingNewPrinter** properties to the [windows10SecureAssessmentConfiguration](/graph/api/resources/intune-deviceconfig-windows10secureassessmentconfiguration?view=graph-rest-beta) entity|
|Change|beta|Added the **importedWindowsAutopilotDeviceIdentities** navigation property to the [deviceManagement](/graph/api/resources/intune-androidforwork-devicemanagement?view=graph-rest-beta) entity|
|Change|beta|Added the **shareAPNSData** property to the [adminConsent](/graph/api/resources/intune-devices-adminconsent?view=graph-rest-beta) complex type|
|Change|beta|Removed the **collectFullIOSAppInventory** property from the [adminConsent](/graph/api/resources/intune-devices-adminconsent?view=graph-rest-beta) complex type|
|Change|beta|Removed the **deviceUsageType** property from the [outOfBoxExperienceSettings](/graph/api/resources/intune-enrollment-outofboxexperiencesettings?view=graph-rest-beta) complex type|

### Reports
| Change type | Version | Description                              |
|:------------|:--------|:-----------------------------------------|
| Addition    | Beta    | Added the **activatedOnSharedComputer** property to the [userActivationCounts](/graph/api/resources/useractivationcounts?view=graph-rest-beta) entity.|
| Addition    | Beta    | Added the **sharedComputerActivation** property to the [office365ActivationsUserCounts](/graph/api/resources/office365activationsusercounts?view=graph-rest-beta) entity.|

### Tasks and plans

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new complex types:<br/>[plannerPlanContext](/graph/api/resources/plannerplancontext?view=graph-rest-beta)<br/>[plannerPlanContextDetails](/graph/api/resources/plannerplancontextdetails?view=graph-rest-beta)<br/>[plannerPlanContextCollection](/graph/api/resources/plannerplancontextcollection?view=graph-rest-beta)<br/>[plannerPlanContextDetailsCollection](/graph/api/resources/plannerplancontextdetailscollection?view=graph-rest-beta)<br/>[plannerFavoritePlanReference](/graph/api/resources/plannerfavoriteplanreference?view=graph-rest-beta)<br/>[plannerRecentPlanReference](/graph/api/resources/plannerrecentplanreference?view=graph-rest-beta)<br/>[plannerFavoritePlanReferenceCollection](/graph/api/resources/plannerfavoriteplanreferencecollection?view=graph-rest-beta)<br/>[plannerRecentPlanReferenceCollection](/graph/api/resources/plannerrecentplanreferencecollection?view=graph-rest-beta)|
|Addition|Beta|Added `favoritePlanReferences` and `recentPlanReferences` properties to [plannerUser](/graph/api/resources/planneruser?view=graph-rest-beta) entity. |
|Addition|Beta|Added `favoritePlans` and `recentPlans` navigation properties to [plannerUser](/graph/api/resources/planneruser?view=graph-rest-beta) entity. |
|Addition|Beta|Added `contexts` property to [plannerPlan](/graph/api/resources/plannerplan?view=graph-rest-beta) entity. |
|Addition|Beta|Added `contextDetails` property to [plannerPlanDetails](/graph/api/resources/plannerplandetails?view=graph-rest-beta) entity. |
|Addition|Beta|Added Planner [delta query](/graph/api/planneruser-list-delta?view=graph-rest-beta) |


## January 2018

### Batching

|Change type|Version|Description|
|:---|:---|:---|
|Addition|v1.0|Ad
