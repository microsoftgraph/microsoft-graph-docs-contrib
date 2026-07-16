---
title: "Update attachment"
description: "Update the properties of an attachment object."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update attachment

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [attachment](../resources/security-casemanagement-attachment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-attachment-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-attachment-update-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/caseManagement/cases/{caseId}/attachments/{attachmentId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

Supply a JSON representation of the properties to update.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the resource.|
|description|String|The description of the resource.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_update_attachment"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/attachments/{attachmentId}
Content-Type: application/json

{
  "displayName": "Case MS-001 Attachment",
  "description": "Screenshot of suspicious sign-in activity"
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.attachment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.attachment",
  "id": "1719f11c-21e9-acf2-85db-ade533556fba",
  "createdDateTime": "2026-05-20T11:12:28Z",
  "createdBy": "user@contoso.com",
  "lastModifiedDateTime": "2026-05-20T11:18:45Z",
  "lastModifiedBy": "user@contoso.com",
  "displayName": "Case MS-001 Attachment",
  "description": "Screenshot of suspicious sign-in activity",
  "fileSize": 1000,
  "fileExtension": "jpeg",
  "scanResult": "noThreatsFound",
  "origin": {
    "@odata.type": "microsoft.graph.security.caseManagement.attachmentOrigin",
    "resourceId": "987757fb-6ef4-1061-17e7-9de0d088e1dd",
    "resourceType": "case"
  }
}
```
