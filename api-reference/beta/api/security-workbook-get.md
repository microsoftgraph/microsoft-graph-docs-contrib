---
title: "Get workbook"
description: "Get a Microsoft Security workbook by its ID."
author: "MrFrankel"
ms.date: 09/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get workbook

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [workbook](../resources/security-workbook.md) by its ID.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-workbook-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-workbook-get-permissions.md)]

The tenant must be active and onboarded to use the Workbooks APIs. The delegated work or school and application permissions require administrator consent. Delegated access also requires the signed-in user to have the applicable Microsoft Defender XDR Unified RBAC authorization. Personal Microsoft accounts aren't supported.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/workbooks/{workbookId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to choose the properties to return. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.workbook](../resources/security-workbook.md) object in the response body.

The response's `ETag` header identifies the current version of the workbook. For a conditional [update](../api/security-workbook-update.md), copy this value unchanged into the `If-Match` header, including the `W/` prefix and quotation marks.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_workbook"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/workbooks/ba989c62-af63-b8de-286d-7474ec579357
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_workbook",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.workbook"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
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
