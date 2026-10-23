---
title: "List workbook objects"
description: "Get the Microsoft Security workbooks in the tenant."
author: "MrFrankel"
ms.date: 09/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List workbook objects

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [workbooks](../resources/security-workbook.md) in the tenant.

The response omits **content** by default. To retrieve workbook documents in the collection response, explicitly select **content**, for example, `$select=id,name,content`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-list-workbooks-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-list-workbooks-permissions.md)]

The tenant must be active and onboarded to use the Workbooks APIs. The delegated work or school and application permissions require administrator consent. Delegated access also requires the signed-in user to have the applicable Microsoft Defender XDR Unified RBAC authorization. Personal Microsoft accounts aren't supported.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/workbooks
```

## Optional query parameters

This method supports the `$select` OData query parameter to choose the properties to return. For general information, see [OData query parameters](/graph/query-parameters).

If a response contains `@odata.nextLink`, request that complete URL unchanged to retrieve the next page. Continue until the response no longer contains `@odata.nextLink`. Treat the skip token in the URL as opaque; don't decode it or construct a token yourself.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.workbook](../resources/security-workbook.md) objects in the response body.

## Examples

### Example 1: List workbook metadata

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_workbook"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/workbooks
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "list_workbook",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.workbook"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.workbook",
      "id": "ba989c62-af63-b8de-286d-7474ec579357",
      "name": "Threat hunting overview",
      "createdByUpn": "adelev@contoso.com",
      "lastUpdatedByUpn": "adelev@contoso.com",
      "createdAtDateTime": "2026-09-22T10:00:00Z",
      "updatedAtDateTime": "2026-09-22T10:00:00Z"
    }
  ]
}
```

### Example 2: Include workbook content

#### Request

The following example selects the workbook ID, name, and complete content document.

<!-- {
  "blockType": "request",
  "name": "list_workbook_with_content"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/workbooks?$select=id,name,content
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "list_workbook_with_content",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.workbook"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
      }
    }
  ]
}
```
