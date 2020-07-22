---
title: "Changelog for Microsoft Graph"
description: "This changelog covers what's changed in Microsoft Graph, including the v1.0 and beta endpoint Microsoft Graph APIs."
author: "MSGraphDocsVteam"
localization_priority: Priority
---

# Changelog for Microsoft Graph

This changelog covers specific API-level changes in Microsoft Graph v1.0 and beta.

For a summary of the value of these API changes, as well as recent tools, components, guidance, and tutorial additions, see [What's new in Microsoft Graph](whats-new-overview.md).

## July 2020

### Change notifications
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Removal | beta and v1.0 | Removed the erronously introduced **sequenceNumber** property from the [changeNotification](/graph/api/resources/changenotification) type.|
| Addition | Beta | Adds [presence](/api/resources/presence) (preview) to resources supported for [change notifications](/graph/webhooks). |
|Update | beta | Updated syncronization-attributedefinition[https://docs.microsoft.com/en-us/graph/api/resources/synchronization-attributemapping?view=graph-rest-beta] to include an additional attribute definition that supports null values. |

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

### Extensions | Schema extensions

| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition        | v1.0          | The [schema extensions](/graph/api/resources/schemaextension) feature is now generally available in [Microsoft Cloud for US Government](/graph/deployments). |

### Identity and access
| **Change type** | **Version**   | **Description**                          |
| :-------------- | :------------ | :--------------------------------------- |
| Addition | beta | Added the **settings** navigation property to the [organization](/graph/api/resources/organization?view=graph-rest-beta) entity. |
| Addition | beta | Added the [organizationSettings](/graph/api/resources/organizationsettings?view=graph-rest-beta) entity.  |
| Addition | beta | Added the **profileCardProperties** navigation property to the **organizationSettings** entity. |
| Addition | beta | Added the **profileCardProperty** entity and the following operations: <br/> [List](/graph/api/organizationsettings-list-profilecardproperties) <br/> [Create](/graph/api/organizationsettings-post-profilecardproperties) <br/> [Get profileCardProperty](/graph/api/profilecardproperty-get?view=graph-rest-beta) entity. <br/> [Update profileCardProperty](/graph/api/profilecardproperty-update?view=graph-rest-beta) <br/> [Delete](/graph/api/profilecardproperty-delete) |
| Addition | beta and v1.0 | Added the following operations to [devices](/graph/api/resources/device): <br/> [Delete registered owner](/graph/api/delete-registeredowners) <br/> [Delete registered user](/graph/api/delete-registeredusers)|

### Identity and access (Azure AD) | Conditional access

| **Change type** | **Version** | **Description**                  |
|:----------------|:------------|:-----------------------------------------|
| Addition | beta | Added the **userRiskLevels** property to the [conditionalaccessconditionset](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta) entity. |
| Addition | beta | Added the **passwordChange** grant control to the [conditionalaccessgrantcontrols](/graph/api/resources/conditionalaccessgrantcontrols?view=graph-rest-beta) entity. |

### Workbooks and charts (Excel)
| **Change type** | **Version** | **Description**                          |
| :-------------- | :---------- | :--------------------------------------- |
|Addition|beta|Added the [workbookOperation](/graph/api/resources/workbookoperation?view=graph-rest-beta) relationship to the [Workbook](/graph/api/resources/workbook?view=graph-rest-beta) entity. |
|Addition|beta|Added the  [Get workbookOperation](/graph/api/resources/workbookoperation-get?view=graph-rest-beta) method to the [workbookOperation](/graph/api/resources/workbookoperation?view=graph-rest-beta) entity. |


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
| Addition | beta | Added the **resourceBehaviorOptions** and **resourceProvisioningOptions** properties to the [group](/graph/api/resources/group?view=graph-rest-beta) entity.|
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

### Users | Outlook settings

| Change type | Version | Description                              |
| :---------- | :------ | :--------------------------------------- |
|Addition | Beta | Added the new **userPurpose** property to [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-beta). See [userPurpose resource type](/graph/api/resources/userPurpose?view=graph-rest-beta) for information on the supported use cases.|
|Addition | Beta | Added new [userPurpose](/graph/api/resources/userPurpose?view=graph-rest-beta) complex type.|


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
|Addition|beta|Added the [validateXml](/graph/api/intune-apps-mobileapp-validatexml?view=graph-rest-beta) action on [mobileApp](/graph/api/resources/intune-shared-mobileapp?view=graph-rest-beta) collection |
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
|Addition|beta|Added the [getAvailableExtensionProperties](o:getAvailableExtensionProperties?view=graph-rest-beta) action|
|Addition|beta|Added the [getObjectsById](o:getObjectsById?view=graph-rest-beta) action|
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
|Addition|beta|Added the [getAvailableExtensionProperties](o:getAvailableExtensionProperties?view=graph-rest-beta) action|
|Addition|beta|Added the [getObjectsById](o:getObjectsById?view=graph-rest-beta) action|
|Addition|beta|Added the [generateApplePushNotificationCertificateSigningRequest](/graph/api/intune-devices-applepushnotificationcertificate-generateapplepushnotificationcertificatesigningrequest?view=graph-rest-beta?view=graph-rest-beta) action on [applePushNotificationCertificate](/graph/api/resources/intune-devices-applepushnotificationcertificate?view=graph-rest-beta) |
|Addition|beta|Added the [generateEncryptionPublicKey](/graph/api/intune-enrollment-deponboardingsetting-generateencryptionpublickey?view=graph-rest-beta?view=graph-rest-beta) action on [depOnboardingSetting](/graph/api/resources/intune-enrollment-deponboardingsetting?view=graph-rest-beta) |
|Addition|beta|Added the [getSettingNonComplianceReport](/graph/api/intune-reporting-devicemanagementreports-getsettingnoncompliancereport?view=graph-rest-beta?view=graph-rest-beta) action on [deviceManagementReports](/graph/api/resources/intune-reporting-devicemanagementreports?view=graph-rest-beta) |
|Addition|beta|Added the [getRemediationSummary](o:getRemediationSummary:Collection(microsoft.graph.deviceHealthScript?view=graph-rest-beta)?view=graph-rest-beta) function on [deviceHealthScript](/graph/api/resources/intune-devices-devicehealthscript?view=graph-rest-beta) collection |
|Deletion|beta|Removed the following complex types:<br/>**groupPolicyObjectFile**<br/>|
|Deletion|beta|Removed the [createMigrationReport](o:createMigrationReport:Collection(microsoft.graph.groupPolicyMigrationReport?view=graph-rest-beta)?view=graph-rest-beta) action on [groupPolicyMigrationReport](/graph/api/resources/intune-gpanalyticsservice-grouppolicymigrationreport?view=graph-rest-beta) collection |
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

### Identity and access | Conditional access

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

### Sites

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

### Identity and access | Information protection

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
|Addition|beta|Added the **alwaysOn** member to the [appleVpnConnectionType](/graph/api/resources/intune-deviceco