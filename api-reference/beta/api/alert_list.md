# List alerts

Retrieve a list of alert objects.

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
GET /security/alerts
GET /security/alerts?$top=1
GET /security/alerts?$filter={property} eq '{property-value}'
GET /security/alerts?$filter={property} eq '{property-value}'&$top=5
GET /security/alerts?$filter={property} eq '{property-value}'&{property} eq '{property-value}'
```

## Optional query parameters

This method supports the `$count, $filter, $orderby, $select, $skip, and $top` [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

To return an alternative property set, you must specify the desired set of [alert](../resources/alert.md) properties using the OData `$select` query parameter. For example, to return _assignedTo_, _category_, and _severity_, you would add the following to your query `$select=assignedTo,category,severity`

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code} (required)|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [Alert](../resources/alert.md) objects in the response body.

## Example

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_alerts"
}-->

```http
GET https://graph.microsoft.com/beta/security/alerts
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.Alert",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "activityGroupStates": [
        {
          "aliases": [
            "aliases-value"
          ],
          "name": "name-value"
        }
      ],
      "applicationStates": [
        {
          "deploymentPackageUrl": "deploymentPackageUrl-value",
          "name": "name-value",
          "permissionsRequired": "permissionsRequired-value",
          "publisher": "publisher-value",
          "riskScore": "riskScore-value"
        }
      ],
      "assignedTo": "assignedTo-value",
      "azureSubscriptionId": "azureSubscriptionId-value",
      "category": "category-value",
      "closedDateTime": "datetime-value"
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
  "description": "List alerts",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->