---
title: "Create customObject"
description: "Create a new customObject object."
author: "biodero"
ms.date: 09-22-2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Create customObject

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new customObject object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customdatacontainer-post-objects-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customdatacontainer-post-objects-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/customData/objects
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [customObject](../resources/customobject.md) object.

You can specify the following properties when creating a **customObject**.

|Property|Type|Description|
|:---|:---|:---|
|customProperties|Object|Values that conform to the definition's fields. Required.|
|definitionId|String|Identifier of the definition. Required.|
|displayName|String|Display name. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [customObject](../resources/customobject.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_customobject_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/customData/objects
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customObject",
  "definitionId": "Contoso Seattle Store",
  "displayName": "Contoso Seattle Store",
  "customProperties": {
    "@odata.type": "microsoft.graph.customObjectProperties"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customObject"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customObject",
  "id": "b20fd2d9-79e3-4d26-8a03-3ca2e57e6a33",
  "definitionId": "Contoso Seattle Store",
  "displayName": "Contoso Seattle Store",
  "customProperties": {
    "@odata.type": "microsoft.graph.customObjectProperties"
  },
  "createdDateTime": "2026-09-22T10:00:00Z",
  "lastModifiedDateTime": "2026-09-22T10:00:00Z"
}
```
