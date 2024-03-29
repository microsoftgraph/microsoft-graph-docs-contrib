---
title: "Update deviceInventoryCollectionProperty"
description: "Update the properties of a deviceInventoryCollectionProperty object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceInventoryCollectionProperty

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) object.

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
PATCH ** Entity URI for microsoft.management.services.api.deviceInventoryCollectionProperty not found
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) object.

The following table shows the properties that are required when you create the [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The catalog id for this inventory property type Inherited from [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md)|
|displayName|String|The localized display name of the property. Example: "Size (MB)". This property is read-only. Inherited from [deviceInventoryProperty](../resources/intune-devices-deviceinventoryproperty.md)|
|values|[deviceInventoryValue](../resources/intune-devices-deviceinventoryvalue.md) collection|Collection value of the property. This property is read-only.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceInventoryCollectionProperty](../resources/intune-devices-deviceinventorycollectionproperty.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta** Entity URI for microsoft.management.services.api.deviceInventoryCollectionProperty not found
Content-type: application/json
Content-length: 272

{
  "@odata.type": "#microsoft.graph.deviceInventoryCollectionProperty",
  "displayName": "Display Name value",
  "values": [
    {
      "@odata.type": "microsoft.graph.deviceInventoryDateTimeValue",
      "value": "2017-01-01T00:02:59.3325615-08:00"
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 321

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
```
