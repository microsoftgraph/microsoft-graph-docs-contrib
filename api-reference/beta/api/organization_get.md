# Get organization

Retrieve the properties and relationships of organization object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /organization
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [organization](../resources/organization.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organization"
}-->
```http
GET https://graph.microsoft.com/beta/organization
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.organization"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1647

{
  "assignedPlans": [
    {
      "assignedTimestamp": "datetime-value",
      "capabilityStatus": "capabilityStatus-value",
      "service": "service-value",
      "servicePlanId": "servicePlanId-value"
    }
  ],
  "city": "city-value",
  "companyLastDirSyncTime": "datetime-value",
  "country": "country-value",
  "countryLetterCode": "countryLetterCode-value",
  "dirSyncEnabled": true,
  "displayName": "displayName-value",
  "marketingNotificationEmails": [
    "marketingNotificationEmails-value"
  ],
  "postalCode": "postalCode-value",
  "preferredLanguage": "preferredLanguage-value",
  "provisionedPlans": [
    {
      "capabilityStatus": "capabilityStatus-value",
      "provisioningStatus": "provisioningStatus-value",
      "service": "service-value"
    }
  ],
  "provisioningErrors": [
    {
      "errorDetail": "errorDetail-value",
      "resolved": true,
      "service": "service-value",
      "timestamp": "datetime-value"
    }
  ],
  "securityComplianceNotificationMails": [
    "securityComplianceNotificationMails-value"
  ],
  "securityComplianceNotificationPhones": [
    "securityComplianceNotificationPhones-value"
  ],
  "state": "state-value",
  "street": "street-value",
  "technicalNotificationMails": [
    "technicalNotificationMails-value"
  ],
  "telephoneNumber": "telephoneNumber-value",
  "verifiedDomains": [
    {
      "capabilities": "capabilities-value",
      "default": true,
      "id": "id-value",
      "initial": true,
      "name": "name-value",
      "type": "type-value"
    }
  ],
  "objectType": "objectType-value",
  "objectId": "objectId-value",
  "deletionTimestamp": "datetime-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get organization",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->