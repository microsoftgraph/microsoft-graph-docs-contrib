---
title: "Update deviceAndAppManagementDeployment"
description: "Update the properties of a deviceAndAppManagementDeployment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update deviceAndAppManagementDeployment

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deployments/{deviceAndAppManagementDeploymentId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.

The following table shows the properties that are required when you create the [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key for the resource.|
|deploymentPlanId|String|Key of the device and app management deployment plan.|
|displayName|String|The display name of the deployment plan.|
|description|String|The description of the deployment plan.|
|payloads|[deviceAndAppManagementDeploymentPayload](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentpayload.md) collection|The payloads associated with the device and app management deployment.|
|createdDateTime|DateTimeOffset|The date and time of when the deployment was created (UTC).|
|lastModifiedDateTime|DateTimeOffset|The date and time of when the plan was last modified (UTC).|
|mode|[deviceAndAppManagementDeploymentMode](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentmode.md)|Indicates the device and app management deployment mode. Possible values are: `draft`, `active`, `unknownFutureValue`.|
|state|[deviceAndAppManagementDeploymentState](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentstate.md)|Indicates the device and app management deployment state. Possible values are: `notStarted`, `inProgress`, `canceled`, `paused`, `completed`, `error`, `unknownFutureValue`.|
|ringCount|Int32|The number of rings in the deployment.|
|startDateTime|DateTimeOffset|The start date and time of the deployment (UTC).|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deployments/{deviceAndAppManagementDeploymentId}
Content-type: application/json
Content-length: 587

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeployment",
  "deploymentPlanId": "Deployment Plan Id value",
  "displayName": "Display Name value",
  "description": "Description value",
  "payloads": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPayload",
      "payloadId": "Payload Id value",
      "payloadDisplayName": "Payload Display Name value",
      "payloadType": "Payload Type value"
    }
  ],
  "mode": "active",
  "state": "inProgress",
  "ringCount": 9,
  "startDateTime": "2016-12-31T23:58:46.7156189-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 759

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeployment",
  "id": "5ce15db1-5db1-5ce1-b15d-e15cb15de15c",
  "deploymentPlanId": "Deployment Plan Id value",
  "displayName": "Display Name value",
  "description": "Description value",
  "payloads": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPayload",
      "payloadId": "Payload Id value",
      "payloadDisplayName": "Payload Display Name value",
      "payloadType": "Payload Type value"
    }
  ],
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "mode": "active",
  "state": "inProgress",
  "ringCount": 9,
  "startDateTime": "2016-12-31T23:58:46.7156189-08:00"
}
```