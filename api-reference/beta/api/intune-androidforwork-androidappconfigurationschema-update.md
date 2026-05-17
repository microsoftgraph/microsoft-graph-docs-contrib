---
title: "Update androidAppConfigurationSchema"
description: "Update the properties of a androidAppConfigurationSchema object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update androidAppConfigurationSchema

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md) object.

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
PATCH /deviceManagement/androidAppConfigurationSchema
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md) object.

The following table shows the properties that are required when you create the [androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity the application configuration schema corresponds to|
|exampleJson|Binary|UTF8 encoded byte array containing example JSON string conforming to this schema that demonstrates how to set the configuration for this app|
|schemaItems|[appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md) collection|Collection of items each representing a named configuration option in the schema. It only contains the root-level configuration.|
|nestedSchemaItems|[appConfigurationSchemaItemType](../resources/intune-androidforwork-appconfigurationschemaitemtype.md) collection|Collection of items each representing a named configuration option in the schema. It contains a flat list of all configuration.|



## Response
If successful, this method returns a `200 OK` response code and an updated [androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/androidAppConfigurationSchema
Content-type: application/json
Content-length: 699

{
  "@odata.type": "#microsoft.graph.androidAppConfigurationSchema",
  "exampleJson": "ZXhhbXBsZUpzb24=",
  "schemaItems": [
    {
      "@odata.type": "microsoft.graph.appConfigurationSchemaItemType",
      "index": 5,
      "parentIndex": 11,
      "schemaItemKey": "Schema Item Key value",
      "displayName": "Display Name value",
      "description": "Description value"
    }
  ],
  "nestedSchemaItems": [
    {
      "@odata.type": "microsoft.graph.appConfigurationSchemaItemType",
      "index": 5,
      "parentIndex": 11,
      "schemaItemKey": "Schema Item Key value",
      "displayName": "Display Name value",
      "description": "Description value"
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 748

{
  "@odata.type": "#microsoft.graph.androidAppConfigurationSchema",
  "id": "6348e750-e750-6348-50e7-486350e74863",
  "exampleJson": "ZXhhbXBsZUpzb24=",
  "schemaItems": [
    {
      "@odata.type": "microsoft.graph.appConfigurationSchemaItemType",
      "index": 5,
      "parentIndex": 11,
      "schemaItemKey": "Schema Item Key value",
      "displayName": "Display Name value",
      "description": "Description value"
    }
  ],
  "nestedSchemaItems": [
    {
      "@odata.type": "microsoft.graph.appConfigurationSchemaItemType",
      "index": 5,
      "parentIndex": 11,
      "schemaItemKey": "Schema Item Key value",
      "displayName": "Display Name value",
      "description": "Description value"
    }
  ]
}
```
