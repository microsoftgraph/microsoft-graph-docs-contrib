# privilegedAccess

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

An entity of `privilegedAccess` represents a group of functionalities provided by privileged Identity Management service.  Different instance of `privilegedAccess` represents different providers managed by PIM, for example, `privilegedAccess/azureResources` represents PIM managing privileged access to Azure resources.


`privilegedAccess` is read-only for now. No `POST`, `PUT`, `PATCH`, or `DELETE` on `privilegedAccess` entity set is supported.

### Properties
| Key | Property	| Type	    |Description|
|:----|:----------|:----------|:----------|
|✓    |id         |String     |The id of the provider managed by PIM.|
|     |displayName|String     |The display name of the provider managed by PIM.|


### Relationships
| Relationship   | Type	                                        |Description|
|:---------------|:---------------------------------------------|:----------|
|resources       |[governanceResource](governanceResource.md) collection            |A collection of resources for the provider.|
|roleAssignments |[governanceRoleAssignment](governanceroleassignment.md) collection|A collection of role assignments for the provider.|
|roleDefinitions |[governanceRoleDefinition](governanceroledefinition.md) collection|A collection of role defintions for the provider.|
|roleAssignmentRequests |[governanceRoleAssignmentRequest](roleassignmentrequest.md) collection|A collection of role assignment requests for the provider.|
|roleSettings |[governanceRoleSetting](governancerolesetting.md) collection|A collection of role settings for the provider.|


### JSON representation

Here is a JSON representation of the resource.

```json
{
  "id": "String (identifier)",
  "displayName": "String",
}
```