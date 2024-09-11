---
title: "Create deviceInventoryEntity"
description: "Create a new deviceInventoryEntity object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
---

# Create deviceInventoryEntity

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md) object.

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
POST /deviceManagement/deviceInventoryEntities
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceInventoryEntity object.

The following table shows the properties that are required when you create the deviceInventoryEntity.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of an Inventory Catalog entity. Read-only.|
|systemDisplayName|String|The Kusto Query Language (KQL) version of the entity's name, which is how it will be displayed in the Intune Pivot Multi-Device entity list. This name corresponds to a Kusto table and is written in CamelCase. Example: Cpu. Read-only.|
|displayName|String|The localized name of the entity. Example: CPU. Read-only.|
|attributes|[deviceInventoryAttribute](../resources/intune-multidevicepivotservice-deviceinventoryattribute.md) collection|The collection of attributes for the entity, where each deviceInventoryAttribute is a complex type containing the Kusto Query Language (KQL) version of the attribute's name, the localized attribute name, and the attribute type (see definition below). Ready-only.|



## Response
If successful, this method returns a `201 Created` response code and a [deviceInventoryEntity](../resources/intune-multidevicepivotservice-deviceinventoryentity.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/deviceInventoryEntities
Content-type: application/json
Content-length: 397

{
  "@odata.type": "#microsoft.graph.deviceInventoryEntity",
  "systemDisplayName": "System Display Name value",
  "displayName": "Display Name value",
  "attributes": [
    {
      "@odata.type": "microsoft.graph.deviceInventoryAttribute",
      "systemDisplayName": "System Display Name value",
      "displayName": "Display Name value",
      "attributeType": "datetime"
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 446

{
  "@odata.type": "#microsoft.graph.deviceInventoryEntity",
  "id": "66e7c076-c076-66e7-76c0-e76676c0e766",
  "systemDisplayName": "System Display Name value",
  "displayName": "Display Name value",
  "attributes": [
    {
      "@odata.type": "microsoft.graph.deviceInventoryAttribute",
      "systemDisplayName": "System Display Name value",
      "displayName": "Display Name value",
      "attributeType": "datetime"
    }
  ]
}
```
