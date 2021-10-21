---
title: "Get device"
description: "Get the properties and relationships of a device object."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get device

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a device object.

Since the **device** resource supports [extensions](/graph/extensibility-overview), you can also use the `GET` operation to get custom properties and extension data in a **device** instance.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Device.Read.All, Directory.Read.All, Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Device.Read.All, Device.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

## HTTP request

The `{id}` in the request is the value of the **id** property of the device, not the **deviceId** property.
<!-- { "blockType": "ignored" } -->
```http
GET /devices/{id}
```
## Optional query parameters
This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.
## Request headers
| Name       | Description|
|:-----------|:------|
| Authorization  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [device](../resources/device.md) object in the response body.
## Example
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_device"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/devices/000005c3-b7a6-4c61-89fc-80bf5ccfc366
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-device-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-device-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-device-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-device-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


> **Note:** The `id` in the request is the **id** property of the device, not the **deviceId** property.

### Response
The following example shows a response for a device with no **hostNames**. 

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.device"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#devices/$entity",
  "@odata.id": "https://graph.microsoft.com/v2/72f988bf-86f1-41af-91ab-2d7cd011db47/directoryObjects/000005c3-b7a6-4c61-89fc-80bf5ccfc366/Microsoft.DirectoryServices.Device",
  "accountEnabled": true,
  "approximateLastSignInDateTime": "2021-08-26T21:15:01Z",
  "deviceId": "000005c3-b7a6-4c61-89fc-80bf5ccfc366",
  "deviceMetadata": null,
  "deviceVersion": 2,
  "hostNames": []
}
```

The following example shows a response for a device with **hostNames**. 

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.device"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "accountEnabled": true,
  "approximateLastSignInDateTime": "2016-10-19T10:37:00Z",
  "deviceId": "deviceId-value",
  "deviceMetadata": "deviceMetadata-value",
  "deviceVersion": 99,
  "hostnames":["hostname1.contoso.onmicrosoft.com", "hostname1"]
}
```


The following example shows a response for a device with **extensionAttributes**.

``` JSON
GET https://graph.microsoft.com/beta/devices?$select=extensionAttributes,id

HTTP/1.1 200 OK
{
    "id": "id-value",
    "extensionAttributes": {
      "extensionAttribute1": "string",
      "extensionAttribute2": "string",
      "extensionAttribute3": "string",
      "extensionAttribute4": "string",
      "extensionAttribute5": "string",
      "extensionAttribute6": "string",
      "extensionAttribute7": "string",
      "extensionAttribute8": "string",
      "extensionAttribute9": "string",
      "extensionAttribute10": "string",
      "extensionAttribute11": "string",
      "extensionAttribute12": "string",
      "extensionAttribute13": "string",
      "extensionAttribute14": "string",
      "extensionAttribute15": "string"
  }
}
```

The following example shows a response for a device using filter with **extensionAttributes**.

``` JSON
GET https://graph.microsoft.com/beta/devices?$filter=extensionAttributes/extensionAttributes1 eq 'extensionAttributes1-value'&$count=true
ConsistencyLevel: eventual


{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#devices",
  "@odata.count": "long",
  "value": [
  {
    "accountEnabled": true,
    "approximateLastSignInDateTime": "String (timestamp)",
    "complianceExpirationDateTime": "String (timestamp)",
    "deviceCategory": "string",
    "deviceId": "string",
    "deviceMetadata": "string",
    "deviceOwnership": "string",
    "deviceVersion": 1024,
    "displayName": "string",
    "domainName": "string",
    "enrollmentProfileName": "string",
    "enrollmentType": "string",
    "extensionAttributes": {"@odata.type": "microsoft.graph.onPremisesExtensionAttributes"},
    "id": "string (identifier)",
    "isCompliant": true,
    "isManaged": true,
    "isRooted": true,
    "mdmAppId": "string",
    "onPremisesLastSyncDateTime": "String (timestamp)",
    "onPremisesSyncEnabled": true,
    "operatingSystem": "string",
    "operatingSystemVersion": "string",
    "physicalIds": ["string"],
    "profileType": "string",
    "registrationDateTime": "String (timestamp)",
    "systemLabels": ["string"],
    "hostNames" : ["string"],
    "trustType": "string",
    "Name": "string",
    "Status": "string",
    "Platform": "string",
    "Kind": "string",
    "Model": "string",
    "managementType": "string",
    "Manufacturer": "string"
   }
  ]
}
```

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions (preview)](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions (preview)](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get device",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
