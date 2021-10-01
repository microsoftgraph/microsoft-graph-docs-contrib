---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for Android for Work settings functionality under device management."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Singleton entity that acts as a container for Android for Work settings functionality under device management.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/devicemanagement-get.md)|[deviceManagement](../resources/devicemanagement.md)|Read the properties and relationships of a [deviceManagement](../resources/devicemanagement.md) object.|
|[Update deviceManagement](../api/devicemanagement-update.md)|[deviceManagement](../resources/devicemanagement.md)|Update the properties of a [deviceManagement](../resources/devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountMoveCompletionDateTime|DateTimeOffset|The date & time when tenant data moved between scaleunits.|
|adminConsent|[adminConsent](../resources/adminconsent.md)|Admin consent information.|
|deviceComplianceReportSummarizationDateTime|DateTimeOffset|The last requested time of device compliance reporting for this account. This property is read-only.|
|deviceProtectionOverview|[deviceProtectionOverview](../resources/deviceprotectionoverview.md)|Device protection overview.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|intuneAccountId|Guid|Intune Account Id for given tenant|
|intuneBrand|[intuneBrand](../resources/intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|
|lastReportAggregationDateTime|DateTimeOffset|The last modified time of reporting for this account. This property is read-only.|
|legacyPcManangementEnabled|Boolean|The property to enable Non-MDM managed legacy PC management for this account. This property is read-only.|
|managedDeviceCleanupSettings|[managedDeviceCleanupSettings](../resources/manageddevicecleanupsettings.md)|Device cleanup rule|
|maximumDepTokens|Int32|Maximum number of dep tokens allowed per-tenant.|
|settings|[deviceManagementSettings](../resources/devicemanagementsettings.md)|Account level settings.|
|subscriptions|deviceManagementSubscriptions|Tenant's Subscription. The possible values are: `none`, `intune`, `office365`, `intunePremium`, `intune_EDU`, `intune_SMB`.|
|subscriptionState|deviceManagementSubscriptionState|Tenant mobile device management subscription state. The possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|unlicensedAdminstratorsEnabled|Boolean|When enabled, users assigned as administrators via Role Assignment Memberships do not require an assigned Intune license. Prior to this, only Intune licensed users were granted permissions with an Intune role unless they were assigned a role via Azure Active Directory. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators are unaffected, do not have to be direct members, nor does the 350 member limit apply. This property is read-only.|
|userExperienceAnalyticsSettings|[userExperienceAnalyticsSettings](../resources/userexperienceanalyticssettings.md)|User experience analytics device settings|
|windowsMalwareOverview|[windowsMalwareOverview](../resources/windowsmalwareoverview.md)|Malware overview for windows devices.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|advancedThreatProtectionOnboardingStateSummary|[advancedThreatProtectionOnboardingStateSummary](../resources/advancedthreatprotectiononboardingstatesummary.md)|The summary state of ATP onboarding state for this account.|
|androidDeviceOwnerEnrollmentProfiles|[androidDeviceOwnerEnrollmentProfile](../resources/androiddeviceownerenrollmentprofile.md) collection|Android device owner enrollment profile entities.|
|androidForWorkAppConfigurationSchemas|[androidForWorkAppConfigurationSchema](../resources/androidforworkappconfigurationschema.md) collection|Android for Work app configuration schema entities.|
|androidForWorkEnrollmentProfiles|[androidForWorkEnrollmentProfile](../resources/androidforworkenrollmentprofile.md) collection|Android for Work enrollment profile entities.|
|androidForWorkSettings|[androidForWorkSettings](../resources/androidforworksettings.md)|The singleton Android for Work settings entity.|
|androidManagedStoreAccountEnterpriseSettings|[androidManagedStoreAccountEnterpriseSettings](../resources/androidmanagedstoreaccountenterprisesettings.md)|The singleton Android managed store account enterprise settings entity.|
|androidManagedStoreAppConfigurationSchemas|[androidManagedStoreAppConfigurationSchema](../resources/androidmanagedstoreappconfigurationschema.md) collection|Android Enterprise app configuration schema entities.|
|applePushNotificationCertificate|[applePushNotificationCertificate](../resources/applepushnotificationcertificate.md)|Apple push notification certificate.|
|appleUserInitiatedEnrollmentProfiles|[appleUserInitiatedEnrollmentProfile](../resources/appleuserinitiatedenrollmentprofile.md) collection|Apple user initiated enrollment profiles|
|assignmentFilters|[deviceAndAppManagementAssignmentFilter](../resources/deviceandappmanagementassignmentfilter.md) collection|The list of assignment filters|
|auditEvents|[auditEvent](../resources/auditevent.md) collection|The Audit Events|
|autopilotEvents|[deviceManagementAutopilotEvent](../resources/devicemanagementautopilotevent.md) collection|The list of autopilot events for the tenant.|
|cartToClassAssociations|[cartToClassAssociation](../resources/carttoclassassociation.md) collection|The Cart To Class Associations.|
|categories|[deviceManagementSettingCategory](../resources/devicemanagementsettingcategory.md) collection|The available categories|
|chromeOSOnboardingSettings|[chromeOSOnboardingSettings](../resources/chromeosonboardingsettings.md) collection|Collection of ChromeOSOnboardingSettings settings associated with account.|
|cloudPCConnectivityIssues|[cloudPCConnectivityIssue](../resources/cloudpcconnectivityissue.md) collection|The list of CloudPC Connectivity Issue.|
|comanagedDevices|[managedDevice](../resources/manageddevice.md) collection|The list of co-managed devices report|
|comanagementEligibleDevices|[comanagementEligibleDevice](../resources/comanagementeligibledevice.md) collection|The list of co-management eligible devices report|
|complianceManagementPartners|[complianceManagementPartner](../resources/compliancemanagementpartner.md) collection|The list of Compliance Management Partners configured by the tenant.|
|conditionalAccessSettings|[onPremisesConditionalAccessSettings](../resources/onpremisesconditionalaccesssettings.md)|The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access|
|configManagerCollections|[configManagerCollection](../resources/configmanagercollection.md) collection|A list of ConfigManagerCollection|
|configurationCategories|[deviceManagementConfigurationCategory](../resources/devicemanagementconfigurationcategory.md) collection|List of all Configuration Categories|
|configurationPolicies|[deviceManagementConfigurationPolicy](../resources/devicemanagementconfigurationpolicy.md) collection|List of all Configuration policies|
|configurationPolicyTemplates|[deviceManagementConfigurationPolicyTemplate](../resources/devicemanagementconfigurationpolicytemplate.md) collection|List of all templates|
|configurationSettings|[deviceManagementConfigurationSettingDefinition](../resources/devicemanagementconfigurationsettingdefinition.md) collection|List of all ConfigurationSettings|
|dataSharingConsents|[dataSharingConsent](../resources/datasharingconsent.md) collection|Data sharing consents.|
|depOnboardingSettings|[depOnboardingSetting](../resources/deponboardingsetting.md) collection|This collections of multiple DEP tokens per-tenant.|
|derivedCredentials|[deviceManagementDerivedCredentialSettings](../resources/devicemanagementderivedcredentialsettings.md) collection|Collection of Derived credential settings associated with account.|
|detectedApps|[detectedApp](../resources/detectedapp.md) collection|The list of detected apps associated with a device.|
|deviceCategories|[deviceCategory](../resources/devicecategory.md) collection|The list of device categories with the tenant.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/devicecompliancepolicy.md) collection|The device compliance policies.|
|deviceCompliancePolicyDeviceStateSummary|[deviceCompliancePolicyDeviceStateSummary](../resources/devicecompliancepolicydevicestatesummary.md)|The device compliance state summary for this account.|
|deviceCompliancePolicySettingStateSummaries|[deviceCompliancePolicySettingStateSummary](../resources/devicecompliancepolicysettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|deviceComplianceScripts|[deviceComplianceScript](../resources/devicecompliancescript.md) collection|The list of device compliance scripts associated with the tenant.|
|deviceConfigurationConflictSummary|[deviceConfigurationConflictSummary](../resources/deviceconfigurationconflictsummary.md) collection|Summary of policies in conflict state for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/deviceconfigurationdevicestatesummary.md)|The device configuration device state summary for this account.|
|deviceConfigurationRestrictedAppsViolations|[restrictedAppsViolation](../resources/restrictedappsviolation.md) collection|Restricted apps violations for this account.|
|deviceConfigurations|[deviceConfiguration](../resources/deviceconfiguration.md) collection|The device configurations.|
|deviceConfigurationsAllManagedDeviceCertificateStates|[managedAllDeviceCertificateState](../resources/managedalldevicecertificatestate.md) collection|Summary of all certificates for all devices.|
|deviceConfigurationUserStateSummaries|[deviceConfigurationUserStateSummary](../resources/deviceconfigurationuserstatesummary.md)|The device configuration user state summary for this account.|
|deviceCustomAttributeShellScripts|[deviceCustomAttributeShellScript](../resources/devicecustomattributeshellscript.md) collection|The list of device custom attribute shell scripts associated with the tenant.|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/deviceenrollmentconfiguration.md) collection|The list of device enrollment configurations|
|deviceHealthScripts|[deviceHealthScript](../resources/devicehealthscript.md) collection|The list of device health scripts associated with the tenant.|
|deviceManagementPartners|[deviceManagementPartner](../resources/devicemanagementpartner.md) collection|The list of Device Management Partners configured by the tenant.|
|deviceManagementScripts|[deviceManagementScript](../resources/devicemanagementscript.md) collection|The list of device management scripts associated with the tenant.|
|deviceShellScripts|[deviceShellScript](../resources/deviceshellscript.md) collection|The list of device shell scripts associated with the tenant.|
|domainJoinConnectors|[deviceManagementDomainJoinConnector](../resources/devicemanagementdomainjoinconnector.md) collection|A list of connector objects.|
|embeddedSIMActivationCodePools|[embeddedSIMActivationCodePool](../resources/embeddedsimactivationcodepool.md) collection|The embedded SIM activation code pools created by this account.|
|exchangeConnectors|[deviceManagementExchangeConnector](../resources/devicemanagementexchangeconnector.md) collection|The list of Exchange Connectors configured by the tenant.|
|exchangeOnPremisesPolicies|[deviceManagementExchangeOnPremisesPolicy](../resources/devicemanagementexchangeonpremisespolicy.md) collection|The list of Exchange On Premisis policies configured by the tenant.|
|exchangeOnPremisesPolicy|[deviceManagementExchangeOnPremisesPolicy](../resources/devicemanagementexchangeonpremisespolicy.md)|The policy which controls mobile device access to Exchange On Premises|
|groupPolicyCategories|[groupPolicyCategory](../resources/grouppolicycategory.md) collection|The available group policy categories for this account.|
|groupPolicyConfigurations|[groupPolicyConfiguration](../resources/grouppolicyconfiguration.md) collection|The group policy configurations created by this account.|
|groupPolicyDefinitionFiles|[groupPolicyDefinitionFile](../resources/grouppolicydefinitionfile.md) collection|The available group policy definition files for this account.|
|groupPolicyDefinitions|[groupPolicyDefinition](../resources/grouppolicydefinition.md) collection|The available group policy definitions for this account.|
|groupPolicyMigrationReports|[groupPolicyMigrationReport](../resources/grouppolicymigrationreport.md) collection|A list of Group Policy migration reports.|
|groupPolicyObjectFiles|[groupPolicyObjectFile](../resources/grouppolicyobjectfile.md) collection|A list of Group Policy Object files uploaded.|
|groupPolicyUploadedDefinitionFiles|[groupPolicyUploadedDefinitionFile](../resources/grouppolicyuploadeddefinitionfile.md) collection|The available group policy uploaded definition files for this account.|
|importedDeviceIdentities|[importedDeviceIdentity](../resources/importeddeviceidentity.md) collection|The imported device identities.|
|importedWindowsAutopilotDeviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/importedwindowsautopilotdeviceidentity.md) collection|Collection of imported Windows autopilot devices.|
|intents|[deviceManagementIntent](../resources/devicemanagementintent.md) collection|The device management intents|
|intuneBrandingProfiles|[intuneBrandingProfile](../resources/intunebrandingprofile.md) collection|Intune branding profiles targeted to AAD groups|
|iosUpdateStatuses|[iosUpdateDeviceStatus](../resources/iosupdatedevicestatus.md) collection|The IOS software update installation statuses for this account.|
|macOSSoftwareUpdateAccountSummaries|[macOSSoftwareUpdateAccountSummary](../resources/macossoftwareupdateaccountsummary.md) collection|The MacOS software update account summaries for this account.|
|managedDeviceEncryptionStates|[managedDeviceEncryptionState](../resources/manageddeviceencryptionstate.md) collection|Encryption report for devices in this account|
|managedDeviceOverview|[managedDeviceOverview](../resources/manageddeviceoverview.md)|Device overview|
|managedDevices|[managedDevice](../resources/manageddevice.md) collection|The list of managed devices.|
|managementConditions|[managementCondition](../resources/managementcondition.md) collection|The management conditions associated with device management of the company.|
|managementConditionStatements|[managementConditionStatement](../resources/managementconditionstatement.md) collection|The management condition statements associated with device management of the company.|
|microsoftTunnelConfigurations|[microsoftTunnelConfiguration](../resources/microsofttunnelconfiguration.md) collection|Collection of MicrosoftTunnelConfiguration settings associated with account.|
|microsoftTunnelHealthThresholds|[microsoftTunnelHealthThreshold](../resources/microsofttunnelhealththreshold.md) collection|Collection of MicrosoftTunnelHealthThreshold settings associated with account.|
|microsoftTunnelServerLogCollectionResponses|[microsoftTunnelServerLogCollectionResponse](../resources/microsofttunnelserverlogcollectionresponse.md) collection|Collection of MicrosoftTunnelServerLogCollectionResponse settings associated with account.|
|microsoftTunnelSites|[microsoftTunnelSite](../resources/microsofttunnelsite.md) collection|Collection of MicrosoftTunnelSite settings associated with account.|
|mobileAppTroubleshootingEvents|[mobileAppTroubleshootingEvent](../resources/mobileapptroubleshootingevent.md) collection|The collection property of MobileAppTroubleshootingEvent.|
|mobileThreatDefenseConnectors|[mobileThreatDefenseConnector](../resources/mobilethreatdefenseconnector.md) collection|The list of Mobile threat Defense connectors configured by the tenant.|
|ndesConnectors|[ndesConnector](../resources/ndesconnector.md) collection|The collection of Ndes connectors for this account.|
|notificationMessageTemplates|[notificationMessageTemplate](../resources/notificationmessagetemplate.md) collection|The Notification Message Templates.|
|operationApprovalRequests|[operationApprovalRequest](../resources/operationapprovalrequest.md) collection|The Operation Approval Requests|
|remoteActionAudits|[remoteActionAudit](../resources/remoteactionaudit.md) collection|The list of device remote action audits with the tenant.|
|remoteAssistancePartners|[remoteAssistancePartner](../resources/remoteassistancepartner.md) collection|The remote assist partners.|
|remoteAssistanceSettings|[remoteAssistanceSettings](../resources/remoteassistancesettings.md)|The remote assistance settings singleton|
|reports|[deviceManagementReports](../resources/devicemanagementreports.md)|Reports singleton|
|resourceAccessProfiles|[deviceManagementResourceAccessProfileBase](../resources/devicemanagementresourceaccessprofilebase.md) collection|Collection of resource access settings associated with account.|
|resourceOperations|[resourceOperation](../resources/resourceoperation.md) collection|The Resource Operations.|
|reusablePolicySettings|[deviceManagementReusablePolicySetting](../resources/devicemanagementreusablepolicysetting.md) collection|List of all reusable settings that can be referred in a policy|
|reusableSettings|[deviceManagementConfigurationSettingDefinition](../resources/devicemanagementconfigurationsettingdefinition.md) collection|List of all reusable settings|
|roleAssignments|[deviceAndAppManagementRoleAssignment](../resources/deviceandappmanagementroleassignment.md) collection|The Role Assignments.|
|roleDefinitions|[roleDefinition](../resources/roledefinition.md) collection|The Role Definitions.|
|roleScopeTags|[roleScopeTag](../resources/rolescopetag.md) collection|The Role Scope Tags.|
|settingDefinitions|[deviceManagementSettingDefinition](../resources/devicemanagementsettingdefinition.md) collection|The device management intent setting definitions|
|softwareUpdateStatusSummary|[softwareUpdateStatusSummary](../resources/softwareupdatestatussummary.md)|The software update status summary.|
|telecomExpenseManagementPartners|[telecomExpenseManagementPartner](../resources/telecomexpensemanagementpartner.md) collection|The telecom expense management partners.|
|templates|[deviceManagementTemplate](../resources/devicemanagementtemplate.md) collection|The available templates|
|templateSettings|[deviceManagementConfigurationSettingTemplate](../resources/devicemanagementconfigurationsettingtemplate.md) collection|List of all TemplateSettings|
|termsAndConditions|[termsAndConditions](../resources/termsandconditions.md) collection|The terms and conditions associated with device management of the company.|
|troubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for the tenant.|
|userExperienceAnalyticsAppHealthApplicationPerformance|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) collection|User experience analytics appHealth Application Performance|
|userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersion](../resources/userexperienceanalyticsapphealthappperformancebyappversion.md) collection|User experience analytics appHealth Application Performance by App Version|
|userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/userexperienceanalyticsapphealthappperformancebyappversiondetails.md) collection|User experience analytics appHealth Application Performance by App Version details|
|userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md) collection|User experience analytics appHealth Application Performance by App Version Device Id|
|userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion|[userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/userexperienceanalyticsapphealthappperformancebyosversion.md) collection|User experience analytics appHealth Application Performance by OS Version|
|userExperienceAnalyticsAppHealthDeviceModelPerformance|[userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/userexperienceanalyticsapphealthdevicemodelperformance.md) collection|User experience analytics appHealth Model Performance|
|userExperienceAnalyticsAppHealthDevicePerformance|[userExperienceAnalyticsAppHealthDevicePerformance](../resources/userexperienceanalyticsapphealthdeviceperformance.md) collection|User experience analytics appHealth Device Performance|
|userExperienceAnalyticsAppHealthDevicePerformanceDetails|[userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/userexperienceanalyticsapphealthdeviceperformancedetails.md) collection|User experience analytics device performance details|
|userExperienceAnalyticsAppHealthOSVersionPerformance|[userExperienceAnalyticsAppHealthOSVersionPerformance](../resources/userexperienceanalyticsapphealthosversionperformance.md) collection|User experience analytics appHealth OS version Performance|
|userExperienceAnalyticsAppHealthOverview|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|User experience analytics appHealth overview|
|userExperienceAnalyticsBaselines|[userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) collection|User experience analytics baselines|
|userExperienceAnalyticsCategories|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md) collection|User experience analytics categories|
|userExperienceAnalyticsDeviceMetricHistory|[userExperienceAnalyticsMetricHistory](../resources/userexperienceanalyticsmetrichistory.md) collection|User experience analytics device metric history|
|userExperienceAnalyticsDevicePerformance|[userExperienceAnalyticsDevicePerformance](../resources/userexperienceanalyticsdeviceperformance.md) collection|User experience analytics device performance|
|userExperienceAnalyticsDeviceScores|[userExperienceAnalyticsDeviceScores](../resources/userexperienceanalyticsdevicescores.md) collection|User experience analytics device scores|
|userExperienceAnalyticsDeviceStartupHistory|[userExperienceAnalyticsDeviceStartupHistory](../resources/userexperienceanalyticsdevicestartuphistory.md) collection|User experience analytics device Startup History|
|userExperienceAnalyticsDeviceStartupProcesses|[userExperienceAnalyticsDeviceStartupProcess](../resources/userexperienceanalyticsdevicestartupprocess.md) collection|User experience analytics device Startup Processes|
|userExperienceAnalyticsDeviceStartupProcessPerformance|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/userexperienceanalyticsdevicestartupprocessperformance.md) collection|User experience analytics device Startup Process Performance|
|userExperienceAnalyticsDevicesWithoutCloudIdentity|[userExperienceAnalyticsDeviceWithoutCloudIdentity](../resources/userexperienceanalyticsdevicewithoutcloudidentity.md) collection|User experience analytics devices without cloud identity.|
|userExperienceAnalyticsImpactingProcess|[userExperienceAnalyticsImpactingProcess](../resources/userexperienceanalyticsimpactingprocess.md) collection|User experience analytics impacting process|
|userExperienceAnalyticsMetricHistory|[userExperienceAnalyticsMetricHistory](../resources/userexperienceanalyticsmetrichistory.md) collection|User experience analytics metric history|
|userExperienceAnalyticsModelScores|[userExperienceAnalyticsModelScores](../resources/userexperienceanalyticsmodelscores.md) collection|User experience analytics model scores|
|userExperienceAnalyticsNotAutopilotReadyDevice|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/userexperienceanalyticsnotautopilotreadydevice.md) collection|User experience analytics devices not Windows Autopilot ready.|
|userExperienceAnalyticsOverview|[userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md)|User experience analytics overview|
|userExperienceAnalyticsRegressionSummary|[userExperienceAnalyticsRegressionSummary](../resources/userexperienceanalyticsregressionsummary.md)|User experience analytics regression summary|
|userExperienceAnalyticsRemoteConnection|[userExperienceAnalyticsRemoteConnection](../resources/userexperienceanalyticsremoteconnection.md) collection|User experience analytics remote connection|
|userExperienceAnalyticsResourcePerformance|[userExperienceAnalyticsResourcePerformance](../resources/userexperienceanalyticsresourceperformance.md) collection|User experience analytics resource performance|
|userExperienceAnalyticsScoreHistory|[userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md) collection|User experience analytics device Startup Score History|
|userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric|[userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md)|User experience analytics work from anywhere hardware readiness metrics.|
|userExperienceAnalyticsWorkFromAnywhereMetrics|[userExperienceAnalyticsWorkFromAnywhereMetric](../resources/userexperienceanalyticsworkfromanywheremetric.md) collection|User experience analytics work from anywhere metrics.|
|userPfxCertificates|[userPFXCertificate](../resources/userpfxcertificate.md) collection|Collection of PFX certificates associated with a user.|
|virtualEndpoint|[virtualEndpoint](../resources/virtualendpoint.md)|**TODO: Add Description**|
|windowsAutopilotDeploymentProfiles|[windowsAutopilotDeploymentProfile](../resources/windowsautopilotdeploymentprofile.md) collection|Windows auto pilot deployment profiles|
|windowsAutopilotDeviceIdentities|[windowsAutopilotDeviceIdentity](../resources/windowsautopilotdeviceidentity.md) collection|The Windows autopilot device identities contained collection.|
|windowsAutopilotSettings|[windowsAutopilotSettings](../resources/windowsautopilotsettings.md)|The Windows autopilot account settings.|
|windowsDriverUpdateProfiles|[windowsDriverUpdateProfile](../resources/windowsdriverupdateprofile.md) collection|A collection of windows driver update profiles|
|windowsFeatureUpdateProfiles|[windowsFeatureUpdateProfile](../resources/windowsfeatureupdateprofile.md) collection|A collection of windows feature update profiles|
|windowsInformationProtectionAppLearningSummaries|[windowsInformationProtectionAppLearningSummary](../resources/windowsinformationprotectionapplearningsummary.md) collection|The windows information protection app learning summaries.|
|windowsInformationProtectionNetworkLearningSummaries|[windowsInformationProtectionNetworkLearningSummary](../resources/windowsinformationprotectionnetworklearningsummary.md) collection|The windows information protection network learning summaries.|
|windowsMalwareInformation|[windowsMalwareInformation](../resources/windowsmalwareinformation.md) collection|The list of affected malware in the tenant.|
|windowsQualityUpdateProfiles|[windowsQualityUpdateProfile](../resources/windowsqualityupdateprofile.md) collection|A collection of windows quality update profiles|
|windowsUpdateCatalogItems|[windowsUpdateCatalogItem](../resources/windowsupdatecatalogitem.md) collection|A collection of windows update catalog items (fetaure updates item , quality updates item)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "accountMoveCompletionDateTime": "String (timestamp)",
  "adminConsent": {
    "@odata.type": "microsoft.graph.adminConsent"
  },
  "deviceComplianceReportSummarizationDateTime": "String (timestamp)",
  "deviceProtectionOverview": {
    "@odata.type": "microsoft.graph.deviceProtectionOverview"
  },
  "intuneAccountId": "Guid",
  "intuneBrand": {
    "@odata.type": "microsoft.graph.intuneBrand"
  },
  "lastReportAggregationDateTime": "String (timestamp)",
  "legacyPcManangementEnabled": "Boolean",
  "managedDeviceCleanupSettings": {
    "@odata.type": "microsoft.graph.managedDeviceCleanupSettings"
  },
  "maximumDepTokens": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings"
  },
  "subscriptions": "String",
  "subscriptionState": "String",
  "unlicensedAdminstratorsEnabled": "Boolean",
  "userExperienceAnalyticsSettings": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsSettings"
  },
  "windowsMalwareOverview": {
    "@odata.type": "microsoft.graph.windowsMalwareOverview"
  }
}
```

