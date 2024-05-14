---
title: "Delete referenceDefinition"
description: "Soft Delete a microsoft.graph.industryData.referenceDefinition object."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Delete referenceDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Soft deletes a [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) object. This leaves the reference definition in the disabled state.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-referencedefinition-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-referencedefinition-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /external/industryData/referenceDefinitions/{referenceDefinitionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_referencedefinition"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/external/industryData/referenceDefinitions/RefAcademicSubject-TestGrade
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```

