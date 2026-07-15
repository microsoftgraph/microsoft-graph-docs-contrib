---
title: "Create case attachment"
description: "Create a new attachment for a security case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create case attachment

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an [attachment](../resources/security-casemanagement-attachment.md) for a [case](../resources/security-casemanagement-case.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-case-post-attachments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-case-post-attachments-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/caseManagement/cases/{caseId}/attachments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md) object.

You can specify the following properties when creating an **attachment**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the resource. Required.|
|description|String|The description of the resource. Optional.|
|fileSize|Int64|The size of the attachment in bytes. Optional.|
|fileExtension|String|The file extension of the attachment. Optional.|
|scanResult|[microsoft.graph.security.caseManagement.attachmentScanResult](../resources/security-casemanagement-attachment.md#attachmentscanresult-values)|The malware scan result for the attachment. Required.|
|origin|[microsoft.graph.security.caseManagement.attachmentOrigin](../resources/security-casemanagement-attachmentorigin.md)|The origin reference for the attachment. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_create_case_attachment"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/attachments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.attachment",
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

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.attachment"
}
-->
``` http
HTTP/1.1 201 Created
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
