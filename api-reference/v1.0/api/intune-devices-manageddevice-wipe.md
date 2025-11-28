---
title: "wipe action"
description: "Wipe a device"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# wipe action

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Wipe a device

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementManagedDevices.PrivilegedOperations.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementManagedDevices.PrivilegedOperations.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/managedDevices/{managedDeviceId}/wipe
POST /deviceManagement/detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}/wipe
POST /deviceManagement/detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}/users/{userId}/managedDevices/{managedDeviceId}/wipe
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|keepEnrollmentData|Boolean|uses doWipePersistProvisionedData|
|keepUserData|Boolean|uses doWipePersistUserData|
|macOsUnlockCode|String|A six-digit recovery PIN used when remotely wiping a Mac via MDM|
|obliterationBehavior|[obliterationBehavior](../resources/intune-devices-obliterationbehavior.md)|This setting controls the fallback wipe method on modern Macs during a remote wipe|
|persistEsimDataPlan|Boolean|This setting controls whether an eSIM cellular data plan is retained or wiped during a device wipe|



## Response
If successful, this action returns a `204 No Content` response code.

## Example

### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/v1.0/deviceManagement/managedDevices/{managedDeviceId}/wipe

Content-type: application/json
Content-length: 187

{
  "keepEnrollmentData": true,
  "keepUserData": true,
  "macOsUnlockCode": "Mac Os Unlock Code value",
  "obliterationBehavior": "doNotObliterate",
  "persistEsimDataPlan": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```
