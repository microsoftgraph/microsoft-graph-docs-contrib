---
title: "Bulk upsert places"
description: "Bulk upsert places in async mode."
author: "Dongjing-MSIT"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Bulk upsert places

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Bulk upsert places in async mode.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-post-places-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-patch-places-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /places
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [place](../resources/place.md) delta set.

The same properties can be specified as when you [create](../api/place-post.md) or [update](../api/place-update.md) a **place** object.

## Response

If successful, this method returns a `202 Accepted` response code and an operation ID in the `Location` response header that you can use to [get](../api/place-getoperation.md) the operation.

## Examples

### Request

The following example shows a request to create a building, add a floor to the building, and update a desk.

<!-- {
  "blockType": "request",
  "name": "create_place_from_places"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/places
Content-Type: application/json

{
    "@context": "#$delta",
    "value": [
        {
            "@odata.type": "microsoft.graph.building",
            "displayName": "B01",
            "children@delta": [
                {
                    "@odata.type": "microsoft.graph.floor",
                    "displayName": "F1"
                }
            ]
        },
        {
            "@odata.type": "microsoft.graph.desk",
            "id": "180d375a-4509-42b6-85ed-4f6c135143b7",
            "mode": {
                "@odata.type": "microsoft.graph.assignedPlaceMode",
                "assignedUserId": "26318330-aace-470b-afc5-5b110c95a589"
            }
        }
    ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: /places/getOperation(id='882a6bfd-45d1-4d4b-a382-6db80a249b61')
```
<!--
{
  "type": "#page.annotation",
  "description": "Bulk upsert places in async mode",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
