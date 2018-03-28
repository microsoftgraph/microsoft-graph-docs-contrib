# Get ipSecurityProfile

Retrieve the properties and relationships of ipSecurityProfile object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All  |
|Delegated (personal Microsoft account) |  Not supported  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/ipSecurityProfiles/{ipSecurityProfile_Id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code} (required)|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [ipSecurityProfile](../resources/ipsecurityprofile.md) object in the response body.

## Example

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_ipsecurityprofile"
}-->

```http
GET https://graph.microsoft.com/beta/security/ipSecurityProfiles/{ipSecurityProfile_Id}
```

### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.IpSecurityProfile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "address": "String",
  "asn": 1024,
  "azureSubscriptionId": "String",
  "azureTenantId": "String",
  "city": "String",
  "countryOrRegionCode": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "organization": "String",
  "riskScore": "String",
  "state": "String",
  "tags": ["String"],
  "vendorInformation": {
    "provider": "String",
    "providerVersion": "String",
    "subProvider": "String",
    "vendor": "String"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get ipSecurityProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->