# Update organization

Update the properties of organization object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /organization
```
### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedPlans|AssignedPlan|The collection of service plans associated with the tenant.                            **Notes**: not nullable.            |
|city|String|            |
|companyLastDirSyncTime|DateTimeOffset|The time and date at which the tenant was last synced with the on-premise directory.|
|country|String|            |
|countryLetterCode|String|            |
|deletionTimestamp|DateTimeOffset||
|dirSyncEnabled|Boolean|**true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default).|
|displayName|String|The display name for the tenant.|
|marketingNotificationEmails|String|                                        **Notes**: not nullable.            |
|objectType|String|A string that identifies the object type. For tenants the value is always “Company”. Inherited from [directoryObject].|
|postalCode|String|            |
|preferredLanguage|String|            |
|provisionedPlans|ProvisionedPlan|                                        **Notes**: not nullable.            |
|provisioningErrors|ProvisioningError|                                        **Notes**: not nullable.            |
|securityComplianceNotificationMails|String||
|securityComplianceNotificationPhones|String||
|state|String|            |
|street|String|            |
|technicalNotificationMails|String|                                        **Notes**: not nullable.            |
|telephoneNumber|String|            |
|verifiedDomains|VerifiedDomain|The collection of domains associated with this tenant.                            **Notes**: not nullable.            |

### Response
If successful, this method returns a `200 OK` response code and updated [organization](../resources/organization.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organization"
}-->
```http
PATCH https://graph.microsoft.com/beta/organization
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
  "description": "Update organization",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->