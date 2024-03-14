---
title: 'Update horizontalSection'
description: "Update the properties of a horizontalSection object."
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---
# Update horizontalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [horizontalSection](../resources/horizontalSection.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "horizontalsection_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/horizontalsection-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [horizontalSection](../resources/horizontalSection.md) resource to update.

## Response

If successful, this method returns a `200 OK` response code and an updated [horizontalSection](../resources/horizontalSection.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- { "blockType": "ignored" } -->

``` http
PATCH https://graph.microsoft.com/beta/sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}

Content-Type: application/json

{
  "emphasis": "strong",
  "layout": "twoColumns",
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.horizontalSection",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "emphasis": "strong",
  "layout": "twoColumns",
  "id": "3",
  "columns": [
    {
      "id": "1",
      "width": 6
    },
    {
      "id": "2",
      "width": 6
    }
  ]
}
```
