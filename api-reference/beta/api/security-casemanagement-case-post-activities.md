---
title: "Create case activity"
description: "Create a new timeline activity for a security case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create case activity

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [comment](../resources/security-casemanagement-comment.md) activity for a [case](../resources/security-casemanagement-case.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-case-post-activities-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-case-post-activities-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/caseManagement/cases/{caseId}/activities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md) object. To create a comment, include `@odata.type` with `#microsoft.graph.security.caseManagement.comment` and the **message** property. Audit log activities are system generated and can't be created by clients.

You can specify the following properties when creating an **activity**.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|The OData type of the concrete activity. To create a comment, use `#microsoft.graph.security.caseManagement.comment`. Required.|
|message|String|The comment body. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_create_case_activity"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/activities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.comment",
  "message": "This is a comment for the case."
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.activity"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.comment",
  "id": "d2a408d7-9023-4e99-ac69-2e00b36314eb",
  "message": "This is a comment for the case.",
  "createdDateTime": "2026-05-20T11:12:28Z",
  "createdBy": "user@contoso.com",
  "lastModifiedDateTime": "2026-05-20T11:18:45Z",
  "lastModifiedBy": "user@contoso.com"
}
```
