---
title: "Update managedDeviceResourceQuery"
description: "Update the properties of a managedDeviceResourceQuery object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update managedDeviceResourceQuery

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [managedDeviceResourceQuery](../resources/intune-multidevicepivotservice-manageddeviceresourcequery.md) object.

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
``` http
PATCH /deviceManagement/managedDeviceResourceQuery
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [managedDeviceResourceQuery](../resources/intune-multidevicepivotservice-manageddeviceresourcequery.md) object.

The following table shows the properties that are required when you create the [managedDeviceResourceQuery](../resources/intune-multidevicepivotservice-manageddeviceresourcequery.md).

|Property|Type|Description|
|:---|:---|:---|



## Response
If successful, this method returns a `200 OK` response code and an updated [managedDeviceResourceQuery](../resources/intune-multidevicepivotservice-manageddeviceresourcequery.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/managedDeviceResourceQuery
Content-type: application/json
Content-length: 68

{
  "@odata.type": "#microsoft.graph.managedDeviceResourceQuery"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 68

{
  "@odata.type": "#microsoft.graph.managedDeviceResourceQuery"
}
```
