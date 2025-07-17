---
title: Update printer
description: "Update the properties of a printer object."
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: apiPageType
ms.date: 04/05/2024
---

# Update printer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [printer](../resources/printer.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "printer_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/printer-update-permissions.md)]

>**Note:** Right now, only printers that don't have physical devices can be updated using application permissions.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /print/printers/{id}
```
## Request headers
| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | `application/json` when using delegated permissions, `application/ipp` or `application/json` when using application permissions. Required.|

## Request body

### Delegated permissions and JSON payload

If using delegated permissions, in the request body, supply the values for the relevant [printer](../resources/printer.md) fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed. 

The following properties can be updated using delegated permissions.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|defaults|[printerDefaults](../resources/printerdefaults.md)|The printer's default print settings.|
|location|[printerLocation](../resources/printerlocation.md)|The physical and/or organizational location of the printer.|
|displayName|String|The name of the printer.|

### Application permissions and JSON payload
In the request body, supply the values for the relevant [printer](../resources/printer.md) fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed. 

The following properties can be updated using application permissions.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|defaults|[printerDefaults](../resources/printerdefaults.md)|The printer's default print settings.|
|capabilities|[printerCapabilities](../resources/printerCapabilities.md)|The capabilities of the printer associated with this printer share.|
|displayName|String|The name of the printer.|
|manufacturer|String|The manufacturer of the printer.|
|model|String|The model name of the printer.|
|status|[printerStatus](../resources/printerstatus.md)|The processing status of the printer, including any errors.|
|isAcceptingJobs|Boolean|Whether the printer is currently accepting new print jobs.|

### Application permissions and IPP payload

With application permissions, a printer can also be updated using an Internet Printing Protocol (IPP) payload. In this case, the request body contains a binary stream that represents the Printer Attributes group in [IPP encoding](https://tools.ietf.org/html/rfc8010).

The client MUST supply a set of Printer attributes with one or more values (including explicitly allowed out-of-band values) as defined in [RFC8011 section 5.2](https://tools.ietf.org/html/rfc8011#section-5.2) Job Template Attributes ("xxx-default", "xxx-supported", and "xxx-ready" attributes), [Section 5.4](https://tools.ietf.org/html/rfc8011#section-5.4) Printer Description Attributes. Also, the client must supply any attribute extensions supported by the Printer. The value(s) of each Printer attribute
supplied replaces the value(s) of the corresponding Printer attribute on the target Printer object. For attributes that can have multiple values (1setOf), all values supplied by the client replace all values of the corresponding Printer object attribute.

> **Note:** Do not pass operation attributes in the request body. The request body should only contain printer attributes.


> **Note:** For printers to work with a particular platform, it should meet the requirements of that platform. For example, on the Windows client, it is expected that the printer specifies all attributes that are considered mandatory as per [MOPRIA](https://mopria.org) specs. Please note MOPRIA specs are available to only the paid members of MOPRIA.

## Response

### Delegated permissions and JSON payload

If using delegated permissions, if successful, this method returns a `200 OK` response code and an updated [printer](../resources/printer.md) object in the response body.

### Application permissions and JSON payload

If using delegated permissions, if successful, this method returns a `200 OK` response code and an updated [printer](../resources/printer.md) object in the response body.

### Application permissions and IPP payload

If using application permissions, if successful, this method returns `204 No content` response code. It doesn't return anything in the response body.

## Example

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_printer"
}-->
```http
PATCH https://graph.microsoft.com/beta/print/printers/{id}
Content-type: application/json

{
  "name": "PrinterName",
  "location": {
    "latitude": 1.1,
    "longitude": 2.2,
    "altitudeInMeters": 3
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-printer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-printer-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-printer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-printer-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-printer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-printer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-printer-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printer"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#print/printers/$entity",
  "id": "016b5565-3bbf-4067-b9ff-4d68167eb1a6",
  "displayName": "PrinterName",
  "manufacturer": "PrinterManufacturer",
  "model": "PrinterModel",
  "isShared": true,
  "registeredDateTime": "2020-02-04T00:00:00.0000000Z",
  "isAcceptingJobs": true,
  "status": {
    "state": "idle",
    "details": [],
    "description": ""
  },
  "defaults": {
    "copiesPerJob":1,
    "contentType": "application/oxps",
    "finishings": ["none"],
    "mediaType": "stationery"
  },
  "location": {
    "latitude": 1.1,
    "longitude": 2.2,
    "altitudeInMeters": 3,
    "streetAddress": "One Microsoft Way",
    "subUnit": [
        "Main Plaza",
        "Unit 400"
    ],
    "city": "Redmond",
    "postalCode": "98052",
    "countryOrRegion": "USA",
    "site": "Puget Sound",
    "building": "Studio E",
    "floor": "1",
    "floorDescription": "First Floor",
    "roomName": "1234",
    "roomDescription": "First floor copy room",
    "organization": [
        "C+AI",
        "Microsoft Graph"
    ],
    "subdivision": [
        "King County",
        "Red West"
    ],
    "stateOrProvince": "Washington"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update printer",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
