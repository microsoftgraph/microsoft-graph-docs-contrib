---
title: "Get zebraFotaDeployment"
description: "Read properties and relationships of the zebraFotaDeployment object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get zebraFotaDeployment

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/zebraFotaDeployments/{zebraFotaDeploymentId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [zebraFotaDeployment](../resources/intune-androidfotaservice-zebrafotadeployment.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/zebraFotaDeployments/{zebraFotaDeploymentId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 2251

{
  "value": {
    "@odata.type": "#microsoft.graph.zebraFotaDeployment",
    "id": "8bbfa8a0-a8a0-8bbf-a0a8-bf8ba0a8bf8b",
    "displayName": "Display Name value",
    "description": "Description value",
    "deploymentSettings": {
      "@odata.type": "microsoft.graph.zebraFotaDeploymentSettings",
      "deviceModel": "Device Model value",
      "updateType": "latest",
      "timeZoneOffsetInMinutes": 7,
      "firmwareTargetArtifactDescription": "Firmware Target Artifact Description value",
      "firmwareTargetBoardSupportPackageVersion": "Firmware Target Board Support Package Version value",
      "firmwareTargetPatch": "Firmware Target Patch value",
      "firmwareTargetOsVersion": "Firmware Target Os Version value",
      "scheduleMode": "scheduled",
      "scheduleDurationInDays": 6,
      "downloadRuleNetworkType": "wifi",
      "downloadRuleStartDateTime": "2016-12-31T23:59:33.2519835-08:00",
      "installRuleStartDateTime": "2017-01-01T00:02:31.1558076-08:00",
      "installRuleWindowStartTime": "11:57:19.2230000",
      "installRuleWindowEndTime": "11:58:38.5330000",
      "batteryRuleMinimumBatteryLevelPercentage": 8,
      "batteryRuleRequireCharger": true
    },
    "deploymentAssignments": [
      {
        "@odata.type": "microsoft.graph.androidFotaDeploymentAssignment",
        "id": "Id value",
        "displayName": "Display Name value",
        "target": {
          "@odata.type": "microsoft.graph.androidFotaDeploymentAssignmentTarget",
          "groupId": "Group Id value"
        }
      }
    ],
    "deploymentStatus": {
      "@odata.type": "microsoft.graph.zebraFotaDeploymentStatus",
      "state": "createFailed",
      "errorCode": "noDevicesFoundInSelectedAadGroups",
      "totalDevices": 12,
      "totalCreated": 12,
      "totalScheduled": 14,
      "totalDownloading": 0,
      "totalAwaitingInstall": 4,
      "totalSucceededInstall": 5,
      "totalCanceled": 13,
      "totalUnknown": 12,
      "totalFailedDownload": 3,
      "totalFailedInstall": 2,
      "completeOrCanceledDateTime": "2016-12-31T23:59:29.651377-08:00",
      "cancelRequested": true,
      "lastUpdatedDateTime": "2017-01-01T00:00:56.8321556-08:00"
    }
  }
}
```
