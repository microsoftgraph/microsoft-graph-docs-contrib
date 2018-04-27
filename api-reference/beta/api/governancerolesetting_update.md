# Update

Update the properties of a role setting object.

### HTTP request

```http
PATCH /privilegedAccess/<id>/roleSettings/<id>
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}|


### Request body
In the request body, supply the values for relevant fields that should be updated. 

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|adminEligibleSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when an administrator tries to add an eligible role assignment.|
|adminMemberSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when an administrator tries to add a direct member role assignment.|
|userEligibleSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when a user tries to add an eligible role assignment. This is not supported for `pimforazurerbac` scenario for now, and may be available in the future scenarios.|
|userMemberSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when a user tries to activate his role assignment.|

### Response
If successful, this method returns a `204 No Cotent` response code.
### Example : 
Update role setting for "Custom Role 3" in subscription "Wingtip Toys - Prod"
##### Request

```http
PATCH https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleSettings/5fb5aef8-1081-4b8e-bb16-9d5d0385bab5
Content-type: application/json
Content-length: 350

{
  "adminEligibleSettings":[{"ruleIdentifier":"ExpirationRule","setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}"}],
  "adminMemberSettings":[{"ruleIdentifier":"ExpirationRule","setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":43200}"},{"ruleIdentifier":"MfaRule","setting":"{\"mfaRequired\":false}"},{"ruleIdentifier":"JustificationRule","setting":"{\"required\":true}"}],
  "userEligibleSettings":[],
  "userMemberSettings":[{"ruleIdentifier":"ExpirationRule","setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":540}"},{"ruleIdentifier":"MfaRule","setting":"{\"mfaRequired\":false}"},{"ruleIdentifier":"JustificationRule","setting":"{\"required\":true}"},{"ruleIdentifier":"ApprovalRule","setting":"{\"enabled\":false,\"approvers\":[{\"id\":\"b080efb4-4720-4eca-b103-d507259069e0\",\"displayName\":\"Sankara Srinivas\",\"type\":\"User\",\"email\":\"v-savelp@fimdev.net\"}]}"}]
}
```
##### Response
None.