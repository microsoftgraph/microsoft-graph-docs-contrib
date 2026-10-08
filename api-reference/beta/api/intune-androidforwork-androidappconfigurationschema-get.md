---
title: "Get androidAppConfigurationSchema"
description: "Read properties and relationships of the androidAppConfigurationSchema object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Get androidAppConfigurationSchema

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
```http
GET /deviceManagement/androidAppConfigurationSchema
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
If successful, this method returns a `200 OK` response code and [androidAppConfigurationSchema](../resources/intune-androidforwork-androidappconfigurationschema.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/androidAppConfigurationSchema
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 813

{
  "value": {
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
}
```
