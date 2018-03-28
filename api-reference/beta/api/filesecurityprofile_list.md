# List fileSecurityProfiles

Retrieve a list of fileSecurityProfile objects.

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
GET /security/fileSecurityProfiles
GET /security/fileSecurityProfiles?$top=1
GET /security/fileSecurityProfiles?$filter={property} eq '{property-value}'
GET /security/fileSecurityProfiles?$filter={property} eq '{property-value}'&$top=5
GET /security/fileSecurityProfiles?$filter={property} eq '{property-value}'&{property} eq '{property-value}'
```

## Optional query parameters

This method supports the `$count, $filter, $orderby, $select, $skip, and $top`  [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code} (Required)|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [fileSecurityProfile](../resources/filesecurityprofile.md) objects in the response body.

## Example

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_filesecurityprofiles"
}-->

```http
GET https://graph.microsoft.com/beta/security/fileSecurityProfiles
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.FileSecurityProfile",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "authenticodeHash256": "authenticodeHash256-value",
      "azureSubscriptionId": "azureSubscriptionId-value",
      "certificateThumbprint": "certificateThumbprint-value",
      "createdDateTime": "datetime-value",
      "id": "id-value",
      "lastModifiedDateTime": "datetime-value"
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
  "description": "List fileSecurityProfiles",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->