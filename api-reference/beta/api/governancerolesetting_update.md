# Update governanceRoleSetting

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update the properties of [governanceRoleSetting](../resources/governancerolesetting.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | PrivilegedAccess.ReadWrite.AzureResources |

Besides the permission scope, this API requires the requestor to have at least one `Active` administrator role assignment (`owner` or `user access administrator`) on the resource.
## HTTP request

```http
PATCH /privilegedAccess/azureResources/roleSettings/{id}
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}|
| Content-type  | application/json|


## Request body
In the request body, supply the values for [governanceRuleSettings](../resources/governancerulesetting.md) that needs to be updated. 

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|adminEligibleSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when an administrator tries to add an eligible role assignment.|
|adminMemberSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when an administrator tries to add a direct member role assignment.|
|userEligibleSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when a user tries to add an eligible role assignment. This is not supported for `pimforazurerbac` scenario for now, and may be available in the future scenarios.|
|userMemberSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when a user tries to activate his role assignment.|

## Response
If successful, this method returns `204 NoContent` response code. It does not return anything in the response body. 

## Error codes
This API follows the standard of HTTP codes. Besides, the custom error codes are shown below.
|Error code     | Error message              | Details
|:--------------------| :---------------------|:--------------------|
| 400 BadRequest | RoleSettingNotFound | The [governanceRoleSetting](../resources/governancerolesetting.md) does not exist in system.
| 400 BadRequest | InvalidRoleSetting    | The [governanceRuleSettings](../resources/governancerulesetting.md) values provided in the request body are not valid.

## Example : 
Update role setting for "Custom Role 3" in subscription "Wingtip Toys - Prod"
##### Request

```http
PATCH https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleSettings/5fb5aef8-1081-4b8e-bb16-9d5d0385bab5
Content-type: application/json
Content-length: 350

{
  "adminEligibleSettings":[{"ruleIdentifier":"ExpirationRule","setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}"}]
}
```
##### Response
None.