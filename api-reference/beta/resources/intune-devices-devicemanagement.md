---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-devices-devicemanagement-get.md)|[deviceManagement](../resources/intune-devices-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-devices-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-devices-devicemanagement-update.md)|[deviceManagement](../resources/intune-devices-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-devices-devicemanagement.md) object.|
|[sendCustomNotificationToCompanyPortal action](../api/intune-devices-devicemanagement-sendcustomnotificationtocompanyportal.md)|None||
|[userExperienceAnalyticsSummarizeWorkFromAnywhereDevices function](../api/intune-devices-devicemanagement-userexperienceanalyticssummarizeworkfromanywheredevices.md)|[userExperienceAnalyticsWorkFromAnywhereDevicesSummary](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevicessummary.md)||
|[userExperienceAnalyticsSummarizedDeviceScopes function](../api/intune-devices-devicemanagement-userexperienceanalyticssummarizeddevicescopes.md)|[userExperienceAnalyticsDeviceScopeSummary](../resources/intune-devices-userexperienceanalyticsdevicescopesummary.md)||
|[getComanagedDevicesSummary function](../api/intune-devices-devicemanagement-getcomanageddevicessummary.md)|[comanagedDevicesSummary](../resources/intune-devices-comanageddevicessummary.md)||
|[getComanagementEligibleDevicesSummary function](../api/intune-devices-devicemanagement-getcomanagementeligibledevicessummary.md)|[comanagementEligibleDevicesSummary](../resources/intune-devices-comanagementeligibledevicessummary.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device|
|subscriptionState|[deviceManagementSubscriptionState](../resources/intune-devices-devicemanagementsubscriptionstate.md)|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|subscriptions|[deviceManagementSubscriptions](../resources/intune-devices-devicemanagementsubscriptions.md)|Tenant's Subscription. Possible values are: `none`, `intune`, `office365`, `intunePremium`, `intune_EDU`, `intune_SMB`.|
|managedDeviceCleanupSettings|[managedDeviceCleanupSettings](../resources/intune-devices-manageddevicecleanupsettings.md)|Device cleanup rule|
|adminConsent|[adminConsent](../resources/intune-devices-adminconsent.md)|Admin consent information.|
|deviceProtectionOverview|[deviceProtectionOverview](../resources/intune-devices-deviceprotectionoverview.md)|Device protection overview.|
|windowsMalwareOverview|[windowsMalwareOverview](../resources/intune-devices-windowsmalwareoverview.md)|Malware overview for windows devices.|
|accountMoveCompletionDateTime|DateTimeOffset|The date & time when tenant data moved between scaleunits.|
|userExperienceAnalyticsSettings|[userExperienceAnalyticsSettings](../resources/intune-devices-userexperienceanalyticssettings.md)|User experience analytics device settings|
|dataProcessorServiceForWindowsFeaturesOnboarding|[dataProcessorServiceForWindowsFeaturesOnboarding](../resources/intune-devices-dataprocessorserviceforwindowsfeaturesonboarding.md)|A configuration entity for MEM features that utilize Data Processor Service for Windows (DPSW) data.|
|userExperienceAnalyticsAnomalySeverityOverview|[userExperienceAnalyticsAnomalySeverityOverview](../resources/intune-devices-userexperienceanalyticsanomalyseverityoverview.md)|The user experience analytics anomaly severity overview entity contains the count information for each severity of anomaly.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|remoteActionAudits|[remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) collection|The list of device remote action audits with the tenant.|
|applePushNotificationCertificate|[applePushNotificationCertificate](../resources/intune-devices-applepushnotificationcertificate.md)|Apple push notification certificate.|
|deviceManagementScripts|[deviceManagementScript](../resources/intune-devices-devicemanagementscript.md) collection|The list of device management scripts associated with the tenant.|
|deviceShellScripts|[deviceShellScript](../resources/intune-devices-deviceshellscript.md) collection|The list of device shell scripts associated with the tenant.|
|deviceCustomAttributeShellScripts|[deviceCustomAttributeShellScript](../resources/intune-devices-devicecustomattributeshellscript.md) collection|The list of device custom attribute shell scripts associated with the tenant.|
|deviceHealthScripts|[deviceHealthScript](../resources/intune-devices-devicehealthscript.md) collection|The list of device health scripts associated with the tenant.|
|deviceComplianceScripts|[deviceComplianceScript](../resources/intune-devices-devicecompliancescript.md) collection|The list of device compliance scripts associated with the tenant.|
|managedDeviceOverview|[managedDeviceOverview](../resources/intune-devices-manageddeviceoverview.md)|Device overview|
|managedDeviceCleanupRules|[managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md) collection|Device cleanup rule V2|
|detectedApps|[detectedApp](../resources/intune-devices-detectedapp.md) collection|The list of detected apps associated with a device.|
|managedDevices|[managedDevice](../resources/intune-devices-manageddevice.md) collection|The list of managed devices.|
|windowsMalwareInformation|[windowsMalwareInformation](../resources/intune-devices-windowsmalwareinformation.md) collection|The list of affected malware in the tenant.|
|dataSharingConsents|[dataSharingConsent](../resources/intune-devices-datasharingconsent.md) collection|Data sharing consents.|
|mobileAppTroubleshootingEvents|[mobileAppTroubleshootingEvent](../resources/intune-devices-mobileapptroubleshootingevent.md) collection|The collection property of MobileAppTroubleshootingEvent.|
|userExperienceAnalyticsOverview|[userExperienceAnalyticsOverview](../resources/intune-devices-userexperienceanalyticsoverview.md)|User experience analytics overview|
|userExperienceAnalyticsBaselines|[userExperienceAnalyticsBaseline](../resources/intune-devices-userexperienceanalyticsbaseline.md) collection|User experience analytics baselines|
|userExperienceAnalyticsCategories|[userExperienceAnalyticsCategory](../resources/intune-devices-userexperienceanalyticscategory.md) collection|User experience analytics categories|
|userExperienceAnalyticsDevicePerformance|[userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md) collection|User experience analytics device performance|
|userExperienceAnalyticsDeviceStartupHistory|[userExperienceAnalyticsDeviceStartupHistory](../resources/intune-devices-userexperienceanalyticsdevicestartuphistory.md) collection|User experience analytics device Startup History|
|userExperienceAnalyticsDeviceStartupProcesses|[userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md) collection|User experience analytics device Startup Processes|
|userExperienceAnalyticsDeviceStartupProcessPerformance|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) collection|User experience analytics device Startup Process Performance|
|userExperienceAnalyticsScoreHistory|[userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) collection|User experience analytics device Startup Score History|
|userExperienceAnalyticsMetricHistory|[userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md) collection|User experience analytics metric history|
|userExperienceAnalyticsDeviceMetricHistory|[userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md) collection|User experience analytics device metric history|
|userExperienceAnalyticsAppHealthApplicationPerformance|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md) collection|User experience analytics appHealth Application Performance|
|userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversion.md) collection|User experience analytics appHealth Application Performance by App Version|
|userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md) collection|User experience analytics appHealth Application Performance by App Version details|
|userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md) collection|User experience analytics appHealth Application Performance by App Version Device Id|
|userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion|[userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md) collection|User experience analytics appHealth Application Performance by OS Version|
|userExperienceAnalyticsAppHealthDevicePerformance|[userExperienceAnalyticsAppHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformance.md) collection|User experience analytics appHealth Device Performance|
|userExperienceAnalyticsAppHealthDeviceModelPerformance|[userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md) collection|User experience analytics appHealth Model Performance|
|userExperienceAnalyticsAppHealthOSVersionPerformance|[userExperienceAnalyticsAppHealthOSVersionPerformance](../resources/intune-devices-userexperienceanalyticsapphealthosversionperformance.md) collection|User experience analytics appHealth OS version Performance|
|userExperienceAnalyticsAppHealthOverview|[userExperienceAnalyticsCategory](../resources/intune-devices-userexperienceanalyticscategory.md)|User experience analytics appHealth overview|
|userExperienceAnalyticsAppHealthDevicePerformanceDetails|[userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md) collection|User experience analytics device performance details|
|userExperienceAnalyticsDevicesWithoutCloudIdentity|[userExperienceAnalyticsDeviceWithoutCloudIdentity](../resources/intune-devices-userexperienceanalyticsdevicewithoutcloudidentity.md) collection|User experience analytics devices without cloud identity.|
|userExperienceAnalyticsNotAutopilotReadyDevice|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md) collection|User experience analytics devices not Windows Autopilot ready.|
|userExperienceAnalyticsWorkFromAnywhereMetrics|[userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md) collection|User experience analytics work from anywhere metrics.|
|userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric|[userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md)|User experience analytics work from anywhere hardware readiness metrics.|
|userExperienceAnalyticsWorkFromAnywhereModelPerformance|[userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md) collection|The user experience analytics work from anywhere model performance|
|comanagedDevices|[managedDevice](../resources/intune-devices-manageddevice.md) collection|The list of co-managed devices report|
|comanagementEligibleDevices|[comanagementEligibleDevice](../resources/intune-devices-comanagementeligibledevice.md) collection|The list of co-management eligible devices report|
|userExperienceAnalyticsResourcePerformance|[userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md) collection|User experience analytics resource performance|
|userExperienceAnalyticsRemoteConnection|[userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md) collection|User experience analytics remote connection|
|userExperienceAnalyticsImpactingProcess|[userExperienceAnalyticsImpactingProcess](../resources/intune-devices-userexperienceanalyticsimpactingprocess.md) collection|User experience analytics impacting process|
|userExperienceAnalyticsDeviceScores|[userExperienceAnalyticsDeviceScores](../resources/intune-devices-userexperienceanalyticsdevicescores.md) collection|User experience analytics device scores|
|userExperienceAnalyticsModelScores|[userExperienceAnalyticsModelScores](../resources/intune-devices-userexperienceanalyticsmodelscores.md) collection|User experience analytics model scores|
|cloudPCConnectivityIssues|[cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md) collection|The list of CloudPC Connectivity Issue.|
|userExperienceAnalyticsBatteryHealthDevicePerformance|[userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md) collection|User Experience Analytics Battery Health Device Performance|
|userExperienceAnalyticsBatteryHealthModelPerformance|[userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md) collection|User Experience Analytics Battery Health Model Performance|
|userExperienceAnalyticsBatteryHealthOsPerformance|[userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md) collection|User Experience Analytics Battery Health Os Performance|
|userExperienceAnalyticsBatteryHealthAppImpact|[userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md) collection|User Experience Analytics Battery Health App Impact|
|userExperienceAnalyticsBatteryHealthCapacityDetails|[userExperienceAnalyticsBatteryHealthCapacityDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthcapacitydetails.md)|User Experience Analytics Battery Health Capacity Details|
|userExperienceAnalyticsBatteryHealthRuntimeDetails|[userExperienceAnalyticsBatteryHealthRuntimeDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthruntimedetails.md)|User Experience Analytics Battery Health Runtime Details|
|userExperienceAnalyticsBatteryHealthDeviceAppImpact|[userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md) collection|User Experience Analytics Battery Health Device App Impact|
|userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory|[userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md) collection|User Experience Analytics Battery Health Device Runtime History|
|userExperienceAnalyticsDeviceScopes|[userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md) collection|The user experience analytics device scope entity contains device scope configuration use to apply filtering on the endpoint analytics reports.|
|userExperienceAnalyticsDeviceScope|[userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md)|The user experience analytics device scope entity endpoint to trigger on the service to either START or STOP computing metrics data based on a device scope configuration.|
|tenantAttachRBAC|[tenantAttachRBAC](../resources/intune-devices-tenantattachrbac.md)|TenantAttach RBAC Enablement|
|userExperienceAnalyticsAnomaly|[userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) collection|The user experience analytics anomaly entity contains anomaly details.|
|userExperienceAnalyticsAnomalyDevice|[userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) collection|The user experience analytics anomaly entity contains device details.|
|userExperienceAnalyticsAnomalyCorrelationGroupOverview|[userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md) collection|The user experience analytics anomaly correlation group overview entity contains the information for each correlation group of an anomaly.|
|userExperienceAnalyticsDeviceTimelineEvent|[userExperienceAnalyticsDeviceTimelineEvent](../resources/intune-devices-userexperienceanalyticsdevicetimelineevent.md) collection|The user experience analytics device events entity contains NRT device timeline event details.|
|privilegeManagementElevations|[privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) collection|The endpoint privilege management elevation event entity contains elevation details.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "subscriptionState": "String",
  "subscriptions": "String",
  "managedDeviceCleanupSettings": {
    "@odata.type": "microsoft.graph.managedDeviceCleanupSettings",
    "deviceInactivityBeforeRetirementInDays": "String"
  },
  "adminConsent": {
    "@odata.type": "microsoft.graph.adminConsent",
    "shareAPNSData": "String",
    "shareUserExperienceAnalyticsData": "String"
  },
  "deviceProtectionOverview": {
    "@odata.type": "microsoft.graph.deviceProtectionOverview",
    "totalReportedDeviceCount": 1024,
    "inactiveThreatAgentDeviceCount": 1024,
    "unknownStateThreatAgentDeviceCount": 1024,
    "pendingSignatureUpdateDeviceCount": 1024,
    "cleanDeviceCount": 1024,
    "pendingFullScanDeviceCount": 1024,
    "pendingRestartDeviceCount": 1024,
    "pendingManualStepsDeviceCount": 1024,
    "pendingOfflineScanDeviceCount": 1024,
    "criticalFailuresDeviceCount": 1024,
    "pendingQuickScanDeviceCount": 1024
  },
  "windowsMalwareOverview": {
    "@odata.type": "microsoft.graph.windowsMalwareOverview",
    "malwareDetectedDeviceCount": 1024,
    "totalMalwareCount": 1024,
    "totalDistinctMalwareCount": 1024,
    "malwareStateSummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareStateCount",
        "state": "String",
        "deviceCount": 1024,
        "malwareDetectionCount": 1024,
        "distinctMalwareCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "malwareSeveritySummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareSeverityCount",
        "severity": "String",
        "malwareDetectionCount": 1024,
        "distinctMalwareCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "malwareExecutionStateSummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareExecutionStateCount",
        "executionState": "String",
        "deviceCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "malwareCategorySummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareCategoryCount",
        "category": "String",
        "deviceCount": 1024,
        "activeMalwareDetectionCount": 1024,
        "distinctActiveMalwareCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "malwareNameSummary": [
      {
        "@odata.type": "microsoft.graph.windowsMalwareNameCount",
        "malwareIdentifier": "String",
        "name": "String",
        "deviceCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ],
    "osVersionsSummary": [
      {
        "@odata.type": "microsoft.graph.osVersionCount",
        "osVersion": "String",
        "deviceCount": 1024,
        "lastUpdateDateTime": "String (timestamp)"
      }
    ]
  },
  "accountMoveCompletionDateTime": "String (timestamp)",
  "userExperienceAnalyticsSettings": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsSettings",
    "configurationManagerDataConnectorConfigured": true
  },
  "dataProcessorServiceForWindowsFeaturesOnboarding": {
    "@odata.type": "microsoft.graph.dataProcessorServiceForWindowsFeaturesOnboarding",
    "hasValidWindowsLicense": true,
    "areDataProcessorServiceForWindowsFeaturesEnabled": true
  },
  "userExperienceAnalyticsAnomalySeverityOverview": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomalySeverityOverview",
    "lowSeverityAnomalyCount": 1024,
    "mediumSeverityAnomalyCount": 1024,
    "highSeverityAnomalyCount": 1024,
    "informationalSeverityAnomalyCount": 1024
  }
}
```
