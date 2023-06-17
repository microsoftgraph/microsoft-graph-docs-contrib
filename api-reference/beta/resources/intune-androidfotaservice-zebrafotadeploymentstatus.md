---
title: "zebraFotaDeploymentStatus resource type"
description: "Describes the status for a single FOTA deployment."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# zebraFotaDeploymentStatus resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes the status for a single FOTA deployment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|state|[zebraFotaDeploymentState](../resources/intune-androidfotaservice-zebrafotadeploymentstate.md)|See zebraFotaDeploymentState enum for possible values. Possible values are: `pendingCreation`, `createFailed`, `created`, `inProgress`, `completed`, `pendingCancel`, `canceled`, `unknownFutureValue`.|
|errorCode|[zebraFotaErrorCode](../resources/intune-androidfotaservice-zebrafotaerrorcode.md)|An error code indicating the failure reason, when the deployment state is `createFailed`. Possible values: See zebraFotaErrorCode enum. Possible values are: `success`, `noDevicesFoundInSelectedAadGroups`, `noIntuneDevicesFoundInSelectedAadGroups`, `noZebraFotaEnrolledDevicesFoundForCurrentTenant`, `noZebraFotaEnrolledDevicesFoundInSelectedAadGroups`, `noZebraFotaDevicesFoundForSelectedDeviceModel`, `zebraFotaCreateDeploymentRequestFailure`, `unknownFutureValue`.|
|totalDevices|Int32|An integer that indicates the total number of devices in the deployment.|
|totalCreated|Int32|An integer that indicates the total number of devices that have a job in the CREATED state. Typically indicates jobs that did not reach the devices. |
|totalScheduled|Int32|An integer that indicates the total number of devices that received the json and are scheduled. |
|totalDownloading|Int32|An integer that indicates the total number of devices where installation was successful.|
|totalAwaitingInstall|Int32|An integer that indicates the total number of devices where installation was successful.|
|totalSucceededInstall|Int32|An integer that indicates the total number of devices where installation was successful.|
|totalCanceled|Int32|An integer that indicates the total number of devices where installation was canceled.|
|totalUnknown|Int32|An integer that indicates the total number of devices where no deployment status or end state has not received, even after the scheduled end date was reached.|
|totalFailedDownload|Int32|An integer that indicates the total number of devices that have failed to download the new OS file.|
|totalFailedInstall|Int32|An integer that indicates the total number of devices that have failed to install the new OS file.|
|completeOrCanceledDateTime|DateTimeOffset|The date and time when this deployment was completed or canceled. The actual date time is determined by the value of state. If the state is canceled, this property holds the cancellation date/time. If the the state is completed, this property holds the completion date/time. If the deployment is not completed before the deployment end date, then completed date/time and end date/time are the same. This is always in the deployment timezone. Note: An installation that is in progress can continue past the deployment end date.|
|cancelRequested|Boolean|A boolean that indicates if a cancellation was requested on the deployment. NOTE: A cancellation request does not guarantee that the deployment was canceled.|
|lastUpdatedDateTime|DateTimeOffset| Date and time when the deployment status was updated from Zebra|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.zebraFotaDeploymentStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.zebraFotaDeploymentStatus",
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
```
