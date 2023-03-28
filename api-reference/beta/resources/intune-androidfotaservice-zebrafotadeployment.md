---
title: "zebraFotaDeployment resource type"
description: "The Zebra FOTA deployment entity that describes settings, deployment device groups required to create a FOTA deployment, and deployment status."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# zebraFotaDeployment resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Zebra FOTA deployment entity that describes settings, deployment device groups required to create a FOTA deployment, and deployment status.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List zebraFotaDeployments](../api/intune-androidfotaservice-zebrafotadeployment-list.md)|[zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) collection|List properties and relationships of the [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) objects.|
|[Get zebraFotaDeployment](../api/intune-androidfotaservice-zebrafotadeployment-get.md)|[zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md)|Read properties and relationships of the [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object.|
|[Create zebraFotaDeployment](../api/intune-androidfotaservice-zebrafotadeployment-create.md)|[zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md)|Create a new [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object.|
|[Delete zebraFotaDeployment](../api/intune-androidfotaservice-zebrafotadeployment-delete.md)|None|Deletes a [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md).|
|[Update zebraFotaDeployment](../api/intune-androidfotaservice-zebrafotadeployment-update.md)|[zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md)|Update the properties of a [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object.|
|[cancel action](../api/intune-androidfotaservice-zebrafotadeployment-cancel.md)|Boolean|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|System generated deployment id provided during creation of the deployment. Returned only if operation was a success.|
|displayName|String|A human readable name of the deployment.|
|description|String|A human readable description of the deployment.|
|deploymentSettings|[zebraFotaDeploymentSettings](../resources/intune-androidfotaservice-zebrafotadeploymentsettings.md)|Represents settings required to create a deployment such as deployment type, artifact info, download and installation|
|deploymentAssignments|[androidFotaDeploymentAssignment](../resources/intune-androidfotaservice-androidfotadeploymentassignment.md) collection|Collection of Android FOTA Assignment|
|deploymentStatus|[zebraFotaDeploymentStatus](../resources/intune-androidfotaservice-zebrafotadeploymentstatus.md)|Represents the deployment status from Zebra. The status is a high level status of the deployment as opposed being a detailed status per device.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.zebraFotaDeployment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.zebraFotaDeployment",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.zebraFotaDeploymentSettings",
    "deviceModel": "String",
    "updateType": "String",
    "timeZoneOffsetInMinutes": 1024,
    "firmwareTargetArtifactDescription": "String",
    "firmwareTargetBoardSupportPackageVersion": "String",
    "firmwareTargetPatch": "String",
    "firmwareTargetOsVersion": "String",
    "scheduleMode": "String",
    "scheduleDurationInDays": 1024,
    "downloadRuleNetworkType": "String",
    "downloadRuleStartDateTime": "String (timestamp)",
    "installRuleStartDateTime": "String (timestamp)",
    "installRuleWindowStartTime": "String (time of day)",
    "installRuleWindowEndTime": "String (time of day)",
    "batteryRuleMinimumBatteryLevelPercentage": 1024,
    "batteryRuleRequireCharger": true
  },
  "deploymentAssignments": [
    {
      "@odata.type": "microsoft.graph.androidFotaDeploymentAssignment",
      "id": "String",
      "displayName": "String",
      "target": {
        "@odata.type": "microsoft.graph.androidFotaDeploymentAssignmentTarget",
        "groupId": "String"
      }
    }
  ],
  "deploymentStatus": {
    "@odata.type": "microsoft.graph.zebraFotaDeploymentStatus",
    "state": "String",
    "errorCode": "String",
    "totalDevices": 1024,
    "totalCreated": 1024,
    "totalScheduled": 1024,
    "totalDownloading": 1024,
    "totalAwaitingInstall": 1024,
    "totalSucceededInstall": 1024,
    "totalCanceled": 1024,
    "totalUnknown": 1024,
    "totalFailedDownload": 1024,
    "totalFailedInstall": 1024,
    "completeOrCanceledDateTime": "String (timestamp)",
    "cancelRequested": true,
    "lastUpdatedDateTime": "String (timestamp)"
  }
}
```
