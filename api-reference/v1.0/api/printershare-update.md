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
``` http
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
|printer|microsoft.graph.printer|The printer that this printer share is related to. Use the `printer@odata.bind` syntax as shown in the following example to update which printer this printer share is associated with.|
|displayName|String|The name of the printer share that print clients should display.|
|allowAllUsers|Boolean|	If true, all users and groups are granted access to this printer share. This supersedes the allowlists defined by the allowedUsers and allowedGroups navigation properties.|

> [!NOTE]
> If you're updating the **printer** property, other properties can't be updated in the same request.

## Response

If successful, this method returns a `200 OK` response code and an updated [printerShare](../resources/printershare.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_printershare"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/print/shares/{printerShareId}
Content-Type: application/json

{
  "displayName": "PrinterShare Name",
  "printer@odata.bind": "https://graph.microsoft.com/v1.0/print/printers/{printerId}",
  "allowAllUsers": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-printershare-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-printershare-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-printershare-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-printershare-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-printershare-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-printershare-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-printershare-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-printershare-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printerShare"
}
-->
``` http
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

