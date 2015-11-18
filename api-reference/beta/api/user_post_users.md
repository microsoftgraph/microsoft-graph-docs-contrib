# Create User

Use this API to create a new User.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /organization

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply a JSON representation of [User](../resources/user.md) object.


### Response
If successful, this method returns `201, Created` response code and [User](../resources/user.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_user_from_users"
}-->
```http
POST https://graph.microsoft.com/beta/users
Content-type: application/json
Content-length: 551

{
  "user": {
    "accountEnabled": true,
    "assignedLicenses": [
      {
        "disabledPlans": [
          "disabledPlans-value"
        ],
        "skuId": "skuId-value"
      }
    ],
    "assignedPlans": [
      {
        "assignedDateTime": "datetime-value",
        "capabilityStatus": "capabilityStatus-value",
        "service": "service-value",
        "servicePlanId": "servicePlanId-value"
      }
    ],
    "businessPhones": [
      "businessPhones-value"
    ],
    "city": "city-value",
    "companyName": "companyName-value"
  }
}
```
In the request body, supply a JSON representation of [user](../resources/user.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
Content-type: application/json
Content-length: 551

{
  "user": {
    "accountEnabled": true,
    "assignedLicenses": [
      {
        "disabledPlans": [
          "disabledPlans-value"
        ],
        "skuId": "skuId-value"
      }
    ],
    "assignedPlans": [
      {
        "assignedDateTime": "datetime-value",
        "capabilityStatus": "capabilityStatus-value",
        "service": "service-value",
        "servicePlanId": "servicePlanId-value"
      }
    ],
    "businessPhones": [
      "businessPhones-value"
    ],
    "city": "city-value",
    "companyName": "companyName-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create User",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->