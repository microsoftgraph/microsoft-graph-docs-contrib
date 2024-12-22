---
title: "mailbox: exportItems"
description: "Export Exchange mailbox items in full fidelity FTS format for the purpose of backup."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# mailbox: exportItems

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export Exchange mailbox [items](../resources/mailboxitem.md) in full fidelity [FTS format](/openspecs/exchange_server_protocols/ms-oxcfxics/ed7d3455-9bdf-40eb-90bd-8dfe6164a250#gt_12daff0e-4241-4498-a93f-212795ab2450)
for the purpose of backup. This item format can be restored back to same or different mailbox.

You can export up to 20 items in a single export request.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailbox-exportitems-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailbox-exportitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/exchange/mailboxes/{mailboxId}/exportItems
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|itemIds|String collection|A collection of identifiers of [items](../resources/mailboxitem.md) to export. All identifiers in the collection _must_ be for items in the same mailbox. Maximum size of this collection is 20 strings.|

## Response

If successful, this action returns a `200 OK` response code and a collection of [exportItemResponse](../resources/exportitemresponse.md) objects in the response body.

## Examples

### Request

The following example exports two items present in the user's mailbox. The **itemIds** of the items to be exported are specified in the request body.
<!-- {
  "blockType": "request",
  "name": "mailboxthis.exportitems"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/exportItems
Content-type: application/json

{
    "itemIds": [
        "EDSVrdi3lRAADmpnf1AAA=",
        "EDSVrdi3lRAAD45b7RAAA="
    ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.OutlookServices.exportItemResponse)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.exportItemResponse)",
    "value": [
        {
            "itemId": "EDSVrdi3lRAADmpnf1AAA=",
            "changeKey": "CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAEu4C+G",
            "data": "AQAAAAgAAAAAAAAAAQAAAAMAAAAYAAAAAQAAAAcDAgAAAAAAwAAAAAAAAEYAJACABAAAAAYAAAAUDwCSghc"
        },
        {
            "itemId": "EDSVrdi3lRAAD45b7RAAA=",
            "changeKey": "CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAD4pUax",
            "data": "AAAAwHsAAAMAFwABAAAAsIQaABIAAABJAFAATQAuAE4AbwB0AGUAAAADACYAAAAAAAsAKQAAAAMANgAAAAAAsIQ3AFwAAABB"
        }
    ]
}
```
