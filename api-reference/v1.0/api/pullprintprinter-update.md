---
title: "Update pullPrintPrinter"
description: "Update the properties of a pullPrintPrinter object."
author: nilakhan
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
---

# Update pullPrintPrinter

Namespace: microsoft.graph

Update the properties of a [pullPrintPrinter](../resources/pullprintprinter.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "pullprintprinter_update"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/pullprintprinter-update-permissions.md)]

[!INCLUDE [rbac-universal-print-admin](../includes/rbac-for-apis/rbac-universal-print-apis-admin.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /print/pullPrintPrinters/{pullPrintPrinterId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

Only **defaults**, **includeAllPrinters**, and **location** can be updated.

|Property|Type|Description|
|:---|:---|:---|
|defaults|[printerDefaults](../resources/printerdefaults.md)|The default print settings of the pull print printer. Inherited from [printerBase](../resources/printerbase.md). Optional.|
|includeAllPrinters|Boolean|Indicates whether every printer in the tenant is automatically a member of this pull print printer. When `true`, the **printers** collection doesn't need to be managed explicitly. Optional.|
|location|[printerLocation](../resources/printerlocation.md)|The organizational location of the pull print printer. You can update only a subset of the **printerLocation** properties: **building**, **city**, **countryOrRegion**, **floor**, **floorDescription**, **organization**, **roomDescription**, **roomName**, **site**, **stateOrProvince**, and **subdivision**. The other **printerLocation** properties can't be updated with this method. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [pullPrintPrinter](../resources/pullprintprinter.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_pullprintprinter"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/print/pullPrintPrinters/15037699-acf2-2dbb-b20c-897053051345
Content-Type: application/json

{
  "includeAllPrinters": true
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "update_pullprintprinter",
  "truncated": true,
  "@odata.type": "microsoft.graph.pullPrintPrinter"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.pullPrintPrinter",
  "id": "15037699-acf2-2dbb-b20c-897053051345",
  "displayName": "Contoso Pull Print - Building 5",
  "registeredDateTime": "2026-08-03T18:00:05Z",
  "includeAllPrinters": true
}
```
