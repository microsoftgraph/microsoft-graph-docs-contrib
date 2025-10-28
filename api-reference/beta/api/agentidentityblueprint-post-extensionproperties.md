---
title: "Create extensionProperty"
description: "Create a new extensionProperty object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create extensionProperty

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new extensionProperty object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-post-extensionproperties-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-post-extensionproperties-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /applications/{applicationsId}/extensionProperties
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [extensionProperty](../resources/extensionproperty.md) object.

You can specify the following properties when creating an **extensionProperty**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|appDisplayName|String|**TODO: Add Description** Optional.|
|name|String|**TODO: Add Description** Required.|
|dataType|String|**TODO: Add Description** Required.|
|isMultiValued|Boolean|**TODO: Add Description** Required.|
|isSyncedFromOnPremises|Boolean|**TODO: Add Description** Optional.|
|targetObjects|String collection|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and an [extensionProperty](../resources/extensionproperty.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_extensionproperty_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/{applicationsId}/extensionProperties
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.extensionProperty",
  "deletedDateTime": "String (timestamp)",
  "appDisplayName": "String",
  "name": "String",
  "dataType": "String",
  "isMultiValued": "Boolean",
  "isSyncedFromOnPremises": "Boolean",
  "targetObjects": [
    "String"
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.extensionProperty"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.extensionProperty",
  "id": "24a6ef8f-1272-f3fb-e832-e15ca129bee9",
  "deletedDateTime": "String (timestamp)",
  "appDisplayName": "String",
  "name": "String",
  "dataType": "String",
  "isMultiValued": "Boolean",
  "isSyncedFromOnPremises": "Boolean",
  "targetObjects": [
    "String"
  ]
}
```

