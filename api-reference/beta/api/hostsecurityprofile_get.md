# Get hostSecurityProfile

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of a [hostSecurityProfile](../resources/hostsecurityprofile.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/hostSecurityProfiles/{hostSecurityProfile_Id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [hostSecurityProfile](../resources/hostsecurityprofile.md) object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_hostsecurityprofile"
}-->

```http
GET https://graph.microsoft.com/beta/security/hostSecurityProfiles/{hostSecurityProfile_Id}
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.HostSecurityProfile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "azureSubscriptionId": "azureSubscriptionId-value",
  "azureTenantId": "String",
  "createdDateTime": "datetime-value",
  "fqdn": "fqdn-value",
  "id": "id-value",
  "isAzureAdJoined": true,
  "isAzureAdRegistered": true,
  "isHybridAzureDomainJoined": true,
  "lastModifiedDateTime": "String (timestamp)",
  "logicalName": "String",
  "logonUsers": [
    {
      "accountDomain": "String",
      "accountName": "String",
      "accountType": "String",
      "firstSeenDateTime": "String (timestamp)",
      "lastSeenDateTime": "String (timestamp)",
      "logonId": "String",
      "logonTypes": ["String"]
    }
  ],
  "netBiosName": "String",
  "networkInterfaces": [
    {
      "description": "String",
      "ipV4Address": "String",
      "ipV6Address": "String",
      "localIpV6Address": "String",
      "macAddress": "String"
    }
  ],
  "osVersion": "String",
  "parentHost": "String",
  "platform": "String",
  "riskScore": "String",
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
  "description": "Get hostSecurityProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->