---
title: "Create customObjectDefinition"
description: "Create a new customObjectDefinition object."
author: "biodero"
ms.date: 09-22-2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Create customObjectDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new customObjectDefinition object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customdatacontainer-post-definitions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customdatacontainer-post-definitions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/customData/definitions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [customObjectDefinition](../resources/customobjectdefinition.md) object.

You can specify the following properties when creating a **customObjectDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the definition. Optional.|
|displayName|String|Display name of the definition. Required.|
|fields|customObjectFieldDefinition collection|Field definitions. Required.|
|objectType|String|Immutable alternate key. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [customObjectDefinition](../resources/customobjectdefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_customobjectdefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/customData/definitions
Content-Type: application/json

{
  "objectType": "Department",
  "displayName": "Department",
  "description": "Organizational department lookup records.",
  "fields": [
    {
      "name": "code",
      "dataType": "string",
      "description": "Department code.",
      "isRequired": true,
      "isFilterable": true,
      "isUnique": true,
      "isImmutable": true,
      "isCaseSensitive": false,
      "isNullable": false
    }
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customObjectDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Location: /beta/identityGovernance/customData/definitions/1f9e2d04-bc62-49f8-ae15-4b5de0d1bca1
ETag: W/"definition-etag-1"

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/customData/definitions/$entity",
  "@odata.type": "#microsoft.graph.customObjectDefinition",
  "id": "1f9e2d04-bc62-49f8-ae15-4b5de0d1bca1",
  "objectType": "Department",
  "displayName": "Department",
  "description": "Organizational department lookup records.",
  "fields": [
    {
      "name": "code",
      "dataType": "string",
      "description": "Department code.",
      "isRequired": true,
      "isFilterable": true,
      "isUnique": true,
      "isImmutable": true,
      "isCaseSensitive": false,
      "isNullable": false
    }
  ],
  "createdDateTime": "2026-07-10T00:00:00Z",
  "lastModifiedDateTime": "2026-07-10T00:00:00Z"
}
```
