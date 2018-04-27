# byResourceId

Retrieve a list of role setting objects on a resource.

### HTTP request

```http
GET /privilegedAccess/<id>/roleSettings?$filter=resourceId+eq+'<resourceId>'
GET /privilegedAccess/<id>/resources/<id>/roleSettings
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [governanceRoleSetting](../resources/governancerolesetting.md) objects in the response body.

### Example: An administrator lists role definitions for resource "Wingtip Toys - Prod" 
##### Request
```http
GET https://graph.microsoft.com/beta/privilgedAccess/pimforazurerbac/roleSettings?$filter=resourceId+eq+`bc6f10e6-6dd9-4393-853e-09e13c036b17'&$expand=resource,roleDefinitions($expand=resource)&$orderby=lastUpdatedDateTime+desc
```
##### Response
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 463

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleSettings",
    "value": [
        {
            "id": "21d96096-b162-414a-8302-d8354f9d91b2",
            "resourceId": "bc6f10e6-6dd9-4393-853e-09e13c036b17",
            "roleDefinitionId": "2199084d-1c5c-45ab-bf9c-cddcd6cab633",           
            "isDefault": true,
            "lastUpdatedDateTime": null,
            "lastUpdatedBy": null,
            "adminEligibleSettings": [
                {
                    "ruleIdentifier": "ExpirationRule",
                    "setting": "{\"MaximumGrantPeriod\":\"90.00:00:00\",\"MaximumGrantPeriodInMinutes\":129600,\"PermanentAssignment\":false}"
                },
                {
                    "ruleIdentifier": "MfaRule",
                    "setting": "{\"MfaRequired\":false}"
                }
            ],
            "adminMemberSettings": [
                {
                    "ruleIdentifier": "ExpirationRule",
                    "setting": "{\"MaximumGrantPeriod\":\"30.00:00:00\",\"MaximumGrantPeriodInMinutes\":43200,\"PermanentAssignment\":false}"
                },
                {
                    "ruleIdentifier": "MfaRule",
                    "setting": "{\"MfaRequired\":false}"
                },
                {
                    "ruleIdentifier": "JustificationRule",
                    "setting": "{\"Required\":true}"
                }
            ],
            "userEligibleSettings": [ ],
            "userMemberSettings": [
                {
                    "ruleIdentifier": "ExpirationRule",
                    "setting": "{\"MaximumGrantPeriod\":\"08:00:00\",\"MaximumGrantPeriodInMinutes\":480,\"PermanentAssignment\":false}"
                },
                {
                    "ruleIdentifier": "MfaRule",
                    "setting": "{\"MfaRequired\":false}"
                },
                {
                    "ruleIdentifier": "JustificationRule",
                    "setting": "{\"Required\":true}"
                },
                {
                    "ruleIdentifier": "ActivationDayRule",
                    "setting": "{\"AllowedDaysOfWeek\":[1,2,3,4,5],\"AllowedDays\":[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\"],\"TimeZoneInfo\":{\"Id\":\"UTC\",\"DisplayName\":\"UTC\",\"StandardName\":\"UTC\",\"DaylightName\":\"UTC\",\"BaseUtcOffset\":\"00:00:00\",\"AdjustmentRules\":null,\"SupportsDaylightSavingTime\":false},\"TimeZoneId\":\"UTC\",\"CustomSetting\":false}"
                },
                {
                    "ruleIdentifier": "ApprovalRule",
                    "setting": "{\"Enabled\":false,\"BusinessFlowId\":\"00000000-0000-0000-0000-000000000000\",\"Approvers\":null}"
                }
            ],
            "resource@odata.context": "https://graph.microsoft.com/beta/$metadata#roleSettings('21d96096-b162-414a-8302-d8354f9d91b2')/resource/$entity",
            "resource": {
                "id": "bc6f10e6-6dd9-4393-853e-09e13c036b17",
                "externalId": "/subscriptions/b3797212-a671-4ab5-b866-d71fd4159334",
                "displayName": "alpha",
                "type": "subscription",
                "status": "Active"
            },
            "roleDefinitions@odata.context": "https://graph.microsoft.com/beta/$metadata#roleSettings('21d96096-b162-414a-8302-d8354f9d91b2')/roleDefinitions",
            "roleDefinitions": [
                {
                    "id": "21d96096-b162-414a-8302-d8354f9d91b2",
                    "resourceId": "bc6f10e6-6dd9-4393-853e-09e13c036b17",              
                    "externalId": null,     
                    "templateId": "21d96096-b162-414a-8302-d8354f9d91b2",
                    "displayName": "Azure Service Deploy Release Management Contributor",
                    "ruleSettings": [],
                    "resource@odata.context": "https://graph.microsoft.com/beta/$metadata#roleSettings('21d96096-b162-414a-8302-d8354f9d91b2')/roleDefinitions('bc6f10e6-6dd9-4393-853e-09e13c036b17')/resource/$entity",
                    "resource": {
                        "id": "bc6f10e6-6dd9-4393-853e-09e13c036b17",
                        "externalId": "/subscriptions/b3797212-a671-4ab5-b866-d71fd4159334",
                        "displayName": "alpha",
                        "type": "subscription",
                        "status": "Active",
                    }
                }
            ]
        }
        ...
    ]
}
```