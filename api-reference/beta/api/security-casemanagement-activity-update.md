---
title: "Update activity"
description: "Update a comment activity in a case timeline."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update activity

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [comment](../resources/security-casemanagement-comment.md) activity in a [case](../resources/security-casemanagement-case.md) timeline. Only comment activities support update. Include `@odata.type` with `#microsoft.graph.security.caseManagement.comment` in the request body to identify the concrete activity type.

> [!IMPORTANT]
> You can't use this API to update comment activities for [incidentCase](../resources/security-casemanagement-incidentcase.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-activity-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-activity-update-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/caseManagement/cases/{caseId}/activities/{activityId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

Supply a JSON representation of the resource. Include `@odata.type` to identify the concrete activity type.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|The OData type of the concrete activity. To update a comment, use `#microsoft.graph.security.caseManagement.comment`.|
|message|String|The comment body.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_update_activity"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/caseManagement/cases/987757fb-6ef4-1061-17e7-9de0d088e1dd/activities/c5dcf8b0-0732-750b-0e35-7f44188423bf
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.comment",
  "message": "This is a modified comment."
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.comment",
  "id": "c5dcf8b0-0732-750b-0e35-7f44188423bf",
  "createdDateTime": "2026-05-20T11:12:28Z",
  "createdBy": "user@contoso.com",
  "lastModifiedDateTime": "2026-05-20T11:18:45Z",
  "lastModifiedBy": "user@contoso.com",
  "message": "This is a modified comment."
}
```
