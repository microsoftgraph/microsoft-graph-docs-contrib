---
title: "Update customObjectDefinition"
description: "Update the properties of a customObjectDefinition object."
author: "biodero"
ms.date: 09-22-2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Update customObjectDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a customObjectDefinition object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customobjectdefinition-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customobjectdefinition-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/customData/definitions/{definitionId}
PATCH /identityGovernance/customData/definitions('{definitionId}')
PATCH /identityGovernance/customData/definitions(objectType='{objectType}')
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|If-Match|Current ETag. Required. Wildcard (`*`) isn't supported; a stale ETag returns `412 PreconditionFailed`.|
|Prefer|`return=minimal`. Optional. Returns `204 No Content` with `ETag` and `Preference-Applied`.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the definition.|
|displayName|String|Display name of the definition.|
|fields|customObjectFieldDefinition collection|Additive updates only. Change field descriptions or add optional nullable fields.|



## Response

By default, if successful, this method returns `200 OK`, the updated [customObjectDefinition](../resources/customobjectdefinition.md), and a new ETag. `Prefer: return=minimal` returns `204 No Content` with `ETag` and `Preference-Applied`.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_customobjectdefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/customData/definitions/1f9e2d04-bc62-49f8-ae15-4b5de0d1bca1
Content-Type: application/json
If-Match: W/"definition-etag-1"

{
  "displayName": "Organizational department"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
ETag: W/"definition-etag-2"

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/customData/definitions/$entity",
  "@odata.type": "#microsoft.graph.customObjectDefinition",
  "id": "1f9e2d04-bc62-49f8-ae15-4b5de0d1bca1",
  "@odata.etag": "W/\"definition-etag-2\"",
  "objectType": "Department",
  "displayName": "Organizational department",
  "description": "Organizational department lookup records.",
  "fields": [
    {
      "name": "code",
      "dataType": "string",
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
