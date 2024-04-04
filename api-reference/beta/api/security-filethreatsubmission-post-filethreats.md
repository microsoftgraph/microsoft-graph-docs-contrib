---
title: "Create fileThreatSubmission"
description: "Create a new fileThreatSubmission object."
author: "caigen"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.topic: reference
---

# Create fileThreatSubmission
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [fileThreatSubmission](../resources/security-filethreatsubmission.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_filethreatsubmission_post_filethreats" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-filethreatsubmission-post-filethreats-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/threatSubmission/fileThreats
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [fileContentThreatSubmission](../resources/security-filecontentthreatsubmission.md) object. The [fileUrlContentThreatSubmission](../resources/security-fileurlthreatsubmission.md) is reserved and not supported as of today.

## Response

If successful, this method returns a `201 Created` response code and a [fileThreatSubmission](../resources/security-filethreatsubmission.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_filethreatsubmission_from_filethreats"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/threatSubmission/fileThreatSubmissions
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.security.fileContentThreatSubmission",
  "category": "malware",
  "fileName": "test.html",
  "fileContent": "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC....."
}
```


### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.fileThreatSubmission"
}
-->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/threatSubmission/fileThreatSubmission/$entity",
  "@odata.type": "#microsoft.graph.security.fileThreatSubmission",
  "category": "malware",
  "id": "49c5ef5b-1f65-444a-e6b9-08d772ea2059",
  "createdDateTime": "2021-10-10T03:30:18.6890937Z",
  "contentType": "file",
  "fileName": "test.html",
  "status": "running",
  "source": "administrator",
  "createdBy": {
    "user": {
      "identity": "c52ce8db-3e4b-4181-93c4-7d6b6bffaf60",
      "displayName": "Ronald Admin",
      "email": "tifc@contoso.com"
    }
  },
  "result": {
  	"detail": "underInvestigation"
  },
  "adminReview": null,
  "tenantId" : "39238e87-b5ab-4ef6-a559-af54c6b07b42"
}
```

