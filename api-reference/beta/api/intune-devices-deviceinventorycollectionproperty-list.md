---
title: "List deviceInventoryCollectionProperties"
description: "List properties and relationships of the deviceInventoryCollectionProperty objects."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# List deviceInventoryCollectionProperties

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.management.services.api.deviceInventoryCollectionProperty not found
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.management.services.api.deviceInventoryCollectionProperty not found
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 390

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceInventoryCollectionProperty",
      "id": "407d83d8-83d8-407d-d883-7d40d8837d40",
      "displayName": "Display Name value",
      "values": [
        {
          "@odata.type": "microsoft.graph.deviceInventoryDateTimeValue",
          "value": "2017-01-01T00:02:59.3325615-08:00"
        }
      ]
    }
  ]
}
```
