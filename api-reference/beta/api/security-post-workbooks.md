---
title: "Create workbook"
description: "Create a Microsoft Security workbook with a server-generated ID."
author: "MrFrankel"
ms.date: 09/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create workbook

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [workbook](../resources/security-workbook.md) with a server-generated ID.

To deploy a workbook with a stable, client-selected GUID, use [Update workbook](../api/security-workbook-update.md) instead.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-post-workbooks-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-post-workbooks-permissions.md)]

The tenant must be active and onboarded to use the Workbooks APIs. The delegated work or school and application permissions require administrator consent. Delegated access also requires the signed-in user to have the applicable Microsoft Defender XDR Unified RBAC authorization. Personal Microsoft accounts aren't supported.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/workbooks
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.workbook](../resources/security-workbook.md) object.

You can specify the following properties when creating a **workbook**.

|Property|Type|Description|
|:---|:---|:---|
|content|[microsoft.graph.security.workbookContent](../resources/security-workbookcontent.md)|The workbook's complete JSON document. Supply a JSON object, not a JSON-encoded string. Required.|
|name|String|The display name of the workbook. Maximum length is 256 characters. Required.|

Don't supply **id**, **etag**, **createdByUpn**, **lastUpdatedByUpn**, **createdAtDateTime**, or **updatedAtDateTime**. The service generates the ID and sets the concurrency and audit properties.

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.workbook](../resources/security-workbook.md) object in the response body.

The `Location` header contains the new workbook's Microsoft Graph URL. The `ETag` header contains the current concurrency token, which you can use unchanged as the `If-Match` value in a subsequent [update](../api/security-workbook-update.md).

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_workbook_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/workbooks
Content-Type: application/json

{
  "name": "Threat hunting overview",
  "content": {
    "version": "1.0",
    "title": "Threat hunting overview",
    "items": [
      {
        "type": "text",
        "text": "Investigate recent security activity."
      }
    ],
    "settings": {
      "showTitle": true
    }
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "create_workbook_from_",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.workbook"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Location: https://graph.microsoft.com/beta/security/workbooks/ba989c62-af63-b8de-286d-7474ec579357
ETag: W/"0x8DE000000000001"

{
  "@odata.type": "#microsoft.graph.security.workbook",
  "id": "ba989c62-af63-b8de-286d-7474ec579357",
  "name": "Threat hunting overview",
  "content": {
    "version": "1.0",
    "title": "Threat hunting overview",
    "items": [
      {
        "type": "text",
        "text": "Investigate recent security activity."
      }
    ],
    "settings": {
      "showTitle": true
    }
  },
  "createdByUpn": "adelev@contoso.com",
  "lastUpdatedByUpn": "adelev@contoso.com",
  "createdAtDateTime": "2026-09-22T10:00:00Z",
  "updatedAtDateTime": "2026-09-22T10:00:00Z"
}
```
