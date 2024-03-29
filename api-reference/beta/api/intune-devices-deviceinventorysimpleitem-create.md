---
title: "Create deviceInventorySimpleItem"
description: "Create a new deviceInventorySimpleItem object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create deviceInventorySimpleItem

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/deviceInventories/{deviceInventoryId}/instances
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceInventorySimpleItem object.

The following table shows the properties that are required when you create the deviceInventorySimpleItem.

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the inventory data Inherited from [deviceInventoryItem](../resources/intune-devices-deviceinventoryitem.md)|



## Response
If successful, this method returns a `201 Created` response code and a [deviceInventorySimpleItem](../resources/intune-devices-deviceinventorysimpleitem.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/deviceInventories/{deviceInventoryId}/instances
Content-type: application/json
Content-length: 67

{
  "@odata.type": "#microsoft.graph.deviceInventorySimpleItem"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 116

{
  "@odata.type": "#microsoft.graph.deviceInventorySimpleItem",
  "id": "b70f94fc-94fc-b70f-fc94-0fb7fc940fb7"
}
```
