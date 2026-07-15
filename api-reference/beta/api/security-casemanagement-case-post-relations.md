---
title: "Create case relation"
description: "Create a new external resource relation for a security case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create case relation

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an external resource [relation](../resources/security-casemanagement-relation.md) for a [case](../resources/security-casemanagement-case.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-case-post-relations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-case-post-relations-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/caseManagement/cases/{caseId}/relations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md) object.

You can specify the following properties when creating a **relation**.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|The OData type of the concrete relation. To create an incident relation, use `#microsoft.graph.security.caseManagement.incidentRelation`. Required.|
|displayName|String|The display name of the resource. Required.|
|relatedResourceId|String|The identifier of the related external resource. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_create_case_relation"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/relations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.incidentRelation",
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
HTTP/1.1 201 Created
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
