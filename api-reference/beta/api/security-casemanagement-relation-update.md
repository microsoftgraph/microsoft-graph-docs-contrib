---
title: "Update relation"
description: "Update the properties of a relation object."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update relation

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [relation](../resources/security-casemanagement-relation.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-relation-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-relation-update-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/caseManagement/cases/{caseId}/relations/{relationId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

Supply a JSON representation of the resource. For polymorphic resources, include `@odata.type` to identify the derived type.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the resource.|
|relatedResourceId|String|The identifier of the related external resource.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_update_relation"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/relations/{relationId}
Content-Type: application/json

{
  "relatedResourceId": "987654321",
  "displayName": "Related incident"
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.relation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.incidentRelation",
  "id": "790478d8-6402-8452-4584-5d32e6acf31a",
  "createdDateTime": "2026-05-20T11:12:28Z",
  "createdBy": "user@contoso.com",
  "lastModifiedDateTime": "2026-05-20T11:18:45Z",
  "lastModifiedBy": "user@contoso.com",
  "relatedResourceId": "987654321",
  "displayName": "Related incident"
}
```
