---
title: "userExperienceAnalyticsWorkFromAnywhereModelPerformance resource type"
description: "The user experience analytics work from anywhere model performance."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsWorkFromAnywhereModelPerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics work from anywhere model performance.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsWorkFromAnywhereModelPerformances](../api/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance-list.md)|[userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md) objects.|
|[Get userExperienceAnalyticsWorkFromAnywhereModelPerformance](../api/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance-get.md)|[userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md)|Read properties and relationships of the [userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md) object.|
|[Create userExperienceAnalyticsWorkFromAnywhereModelPerformance](../api/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance-create.md)|[userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md)|Create a new [userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md) object.|
|[Delete userExperienceAnalyticsWorkFromAnywhereModelPerformance](../api/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance-delete.md)|None|Deletes a [userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md).|
|[Update userExperienceAnalyticsWorkFromAnywhereModelPerformance](../api/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance-update.md)|[userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md)|Update the properties of a [userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics model performance object.|
|model|String|The user experience work from anywhere's model name of the devices.|
|manufacturer|String|The user experience work from anywhere's manufacturer name of the devices.|
|modelDeviceCount|Int32|The user experience work from anywhere's devices count for the model. Valid values -2147483648 to 2147483647|
|workFromAnywhereScore|Double|The user experience work from anywhere overall score for the model. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|windowsScore|Double|The user experience work from anywhere windows score for the model. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|cloudManagementScore|Double|The user experience work from anywhere's cloud management score for the model. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|cloudIdentityScore|Double|The user experience work from anywhere's cloud identity score for the model. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|cloudProvisioningScore|Double|The user experience work from anywhere's cloud provisioning score for the model. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|healthStatus|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The health state of the user experience analytics work from anywhere model. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsWorkFromAnywhereModelPerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereModelPerformance",
  "id": "String (identifier)",
  "model": "String",
  "manufacturer": "String",
  "modelDeviceCount": 1024,
  "workFromAnywhereScore": "4.2",
  "windowsScore": "4.2",
  "cloudManagementScore": "4.2",
  "cloudIdentityScore": "4.2",
  "cloudProvisioningScore": "4.2",
  "healthStatus": "String"
}
```





