---
title: "Update workbook"
description: "Create or replace a Microsoft Security workbook using a client-selected ID."
author: "MrFrankel"
ms.date: 09/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update workbook

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create or replace a [workbook](../resources/security-workbook.md) using a client-selected ID.

Supply a GUID in the request URL. Without a conditional header, this method creates the workbook if that ID doesn't exist, or replaces its name and content if it does. Reusing the same GUID preserves the workbook's identity. Updates preserve **createdByUpn** and **createdAtDateTime**.

The **content** value replaces the complete JSON document. It isn't a partial update or a nested merge.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-workbook-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-workbook-update-permissions.md)]

The tenant must be active and onboarded to use the Workbooks APIs. The delegated work or school and application permissions require administrator consent. Delegated access also requires the signed-in user to have the applicable Microsoft Defender XDR Unified RBAC authorization. Personal Microsoft accounts aren't supported.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/workbooks/{workbookId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|If-Match|The current workbook ETag. Makes the request update-only: the workbook must exist and the ETag must match. Optional.|
|If-None-Match|Set to `*` to make the request an atomic create-only operation. The workbook must not already exist. Optional.|

For `If-Match`, copy the value from the workbook's HTTP `ETag` response header unchanged, including its `W/` prefix and quotation marks. Matching strong and weak representations of the current ETag are accepted. Treat ETags as opaque values; don't generate them yourself.

## Request body

Supply both **name** and **content** in the request body. Include the complete **content** document; nested properties that you omit aren't retained from the previous version.

|Property|Type|Description|
|:---|:---|:---|
|content|[microsoft.graph.security.workbookContent](../resources/security-workbookcontent.md)|The complete JSON document to store. Supply a JSON object, not a JSON-encoded string.|
|name|String|The display name of the workbook. Maximum length is 256 characters.|

Don't supply **id**, **etag**, **createdByUpn**, **lastUpdatedByUpn**, **createdAtDateTime**, or **updatedAtDateTime** in the request body. The URL determines the ID; the service manages the concurrency and audit properties.

## Response

If successful, this method returns a [microsoft.graph.security.workbook](../resources/security-workbook.md) object in the response body and one of the following response codes:

- `201 Created` when the workbook is created. The `Location` header contains the workbook's Microsoft Graph URL.
- `200 OK` when an existing workbook is replaced.

The `ETag` response header contains the workbook's current concurrency token.

### Errors

The method returns `412 Precondition Failed` when either of the following conditions applies:

- You supply `If-None-Match: *`, but the workbook already exists.
- You supply `If-Match`, but the workbook doesn't exist or the supplied ETag doesn't match its current version.

## Examples

### Example 1: Replace a workbook only if it hasn't changed

#### Request

The following example uses the weak `ETag` returned by [Get workbook](../api/security-workbook-get.md). The supplied **content** object replaces the previous document.
<!-- {
  "blockType": "request",
  "name": "update_workbook"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/workbooks/ba989c62-af63-b8de-286d-7474ec579357
Content-Type: application/json
If-Match: W/"0x8DE000000000001"

{
  "name": "Threat hunting overview - updated",
  "content": {
    "version": "2.0",
    "title": "Priority investigations",
    "items": [
      {
        "type": "text",
        "text": "Review the highest-priority investigations first."
      }
    ]
  }
}
```

#### Response

The following example shows the response. The ID and creation audit properties are preserved, while the update audit properties and ETag reflect the new version. The prior **content.settings** property isn't retained because it wasn't supplied in the replacement document.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "update_workbook",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.workbook"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
ETag: W/"0x8DE000000000002"

{
  "@odata.type": "#microsoft.graph.security.workbook",
  "id": "ba989c62-af63-b8de-286d-7474ec579357",
  "name": "Threat hunting overview - updated",
  "content": {
    "version": "2.0",
    "title": "Priority investigations",
    "items": [
      {
        "type": "text",
        "text": "Review the highest-priority investigations first."
      }
    ]
  },
  "createdByUpn": "adelev@contoso.com",
  "lastUpdatedByUpn": "alexw@contoso.com",
  "createdAtDateTime": "2026-09-22T10:00:00Z",
  "updatedAtDateTime": "2026-09-22T10:15:00Z"
}
```

### Example 2: Create a workbook only if its ID doesn't exist

#### Request

This independent example assumes the workbook ID doesn't exist. The `If-None-Match: *` header prevents the request from replacing a workbook that already uses the ID.

<!-- {
  "blockType": "request",
  "name": "create_workbook_with_id"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/workbooks/ba989c62-af63-b8de-286d-7474ec579357
Content-Type: application/json
If-None-Match: *

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

#### Response

The following example shows the response when the ID didn't exist. Repeating this create-only request after the workbook exists returns `412 Precondition Failed`.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "create_workbook_with_id",
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
