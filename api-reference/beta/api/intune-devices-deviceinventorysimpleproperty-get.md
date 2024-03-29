---
title: "Get deviceInventorySimpleProperty"
description: "Read properties and relationships of the deviceInventorySimpleProperty object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get deviceInventorySimpleProperty

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md) object.

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
GET ** Entity URI for microsoft.management.services.api.deviceInventorySimpleProperty not found
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [deviceInventorySimpleProperty](../resources/intune-devices-deviceinventorysimpleproperty.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta** Entity URI for microsoft.management.services.api.deviceInventorySimpleProperty not found
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 331

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceInventorySimpleProperty",
    "id": "13e13882-3882-13e1-8238-e1138238e113",
    "displayName": "Display Name value",
    "value": {
      "@odata.type": "microsoft.graph.deviceInventoryDateTimeValue",
      "value": "2017-01-01T00:02:59.3325615-08:00"
    }
  }
}
```
