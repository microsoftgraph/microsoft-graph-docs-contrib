# List hostSecurityProfiles

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve a list of [hostSecurityProfile](../resources/hostsecurityprofile.md) objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All  |
|Delegated (personal Microsoft account) | Not supported.  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/hostSecurityProfile
GET /security/hostSecurityProfile?$top=1
GET /security/hostSecurityProfile?$filter={property} eq '{property-value}'
GET /security/hostSecurityProfile?$filter={property} eq '{property-value}'&$top=5
GET /security/hostSecurityProfile?$filter={property} eq '{property-value}'&{property} eq '{property-value}'
```

## Optional query parameters

This method supports the following [OData query parameters](../../../concepts/query_parameters.md) to help customize the response:

- `$count`
- `$filter`
- `$orderby`
- `$select`
- `$skip`
- `$top`

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method.

### Response

If successful, this method returns a `200 OK` response code and collection of [hostSecurityProfile](../resources/hostsecurityprofile.md) objects in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_hostsecurityprofiles"
}-->

```http
GET https://graph.microsoft.com/beta/security/hostSecurityProfiles
```

### Response

The following is an example of the response.
> **Note:** The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.hostSecurityProfile",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "azureSubscriptionId": "azureSubscriptionId-value",
      "createdDateTime": "datetime-value",
      "fqdn": "fqdn-value",
      "id": "id-value",
      "isAzureAdJoined": true,
      "isAzureAdRegistered": true
      ...
    }
    ...
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List hostSecurityProfiles",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->