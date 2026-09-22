---
title: "Get customObjectDefinition"
description: "Read the properties and relationships of customObjectDefinition object."
author: "biodero"
ms.date: 09-22-2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get customObjectDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [customObjectDefinition](../resources/customobjectdefinition.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customobjectdefinition-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customobjectdefinition-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/customData/definitions/{definitionId}
GET /identityGovernance/customData/definitions('{definitionId}')
GET /identityGovernance/customData/definitions(objectType='{objectType}')
```

## Optional query parameters

This method doesn't support OData query parameters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [customObjectDefinition](../resources/customobjectdefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_customobjectdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/customData/definitions/1f9e2d04-bc62-49f8-ae15-4b5de0d1bca1
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
HTTP/1.1 200 OK
Content-Type: application/json
ETag: W/"definition-etag-1"

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/customData/definitions/$entity",
  "@odata.type": "#microsoft.graph.customObjectDefinition",
  "@odata.etag": "W/\"definition-etag-1\"",
  "id": "1f9e2d04-bc62-49f8-ae15-4b5de0d1bca1",
  "objectType": "Department",
  "displayName": "Department",
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
