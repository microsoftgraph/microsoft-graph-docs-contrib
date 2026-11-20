---
title: Update printershare
description: Update the properties of printer share. This method can be used to "swap" printers.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
ms.date: 06/06/2024
---

# Update printerShare
Namespace: microsoft.graph

Update the properties of a printer share. This method can be used to swap [printers](../resources/printer.md).

For example, if a physical printer device breaks, an administrator can register a new [printer](../resources/printer.md) device and update this [printerShare](../resources/printerShare.md) to point to the new printer without requiring users to take any action.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "printershare_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/printershare-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /print/shares/{printerShareId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the values for relevant [printerShare](../resources/printershare.md) fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

Following properties can be updated: 

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowAllUsers|Boolean|	If true, all users and groups are granted access to this printer share. This supersedes the allowlists defined by the allowedUsers and allowedGroups navigation properties.|
|displayName|String|The name of the printer share that print clients should display.|
|holdJobsForSecureRelease|Boolean|Indicates whether print jobs sent to this printer share are held in the cloud until a user releases them at the printer. Set to `true` to enable secure release. Optional.|
|printer|microsoft.graph.printer|The printer that this printer share is related to. Use the `printer@odata.bind` syntax as shown in the following example to update which printer this printer share is associated with.|

> [!NOTE]
> If you're updating the **printer** property, other properties can't be updated in the same request.

## Response

If successful, this method returns a `200 OK` response code and an updated [printerShare](../resources/printershare.md) object in the response body.

## Examples

### Example 1: Update the printer associated with a share

The following example shows how to update the printer associated with a share.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_printershare"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/print/shares/d837c17b-3296-4384-a053-828d56e10f50
Content-Type: application/json

{
  "printer@odata.bind": "https://graph.microsoft.com/v1.0/print/printers/d5f2a1b0-1111-2222-3333-444455556666"
}
```

#### Response
The following example shows the response.
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "update_printershare",
  "truncated": true,
  "@odata.type": "microsoft.graph.printerShare"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#print/shares/$entity",
  "id": "d837c17b-3296-4384-a053-828d56e10f50",
  "displayName": "PrinterShare Name",
  "createdDateTime": "2020-02-04T00:00:00.0000000Z",
  "isAcceptingJobs": true,
  "allowAllUsers": false,
  "status": {
    "state": "stopped",
    "details": ["disconnected"],
    "description": ""
  }
}
```

### Example 2: Enable secure release

The following example enables secure release for a printer share.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_printershare_secure_release"
} -->
```http
PATCH https://graph.microsoft.com/v1.0/print/shares/b1c2d3e4-5555-6666-7777-888899990000
Content-Type: application/json

{
  "holdJobsForSecureRelease": true
}
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "update_printershare_secure_release",
  "truncated": true,
  "@odata.type": "microsoft.graph.printerShare"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "b1c2d3e4-5555-6666-7777-888899990000",
  "displayName": "Contoso Printer - Building 5, Floor 2",
  "holdJobsForSecureRelease": true
}
```
