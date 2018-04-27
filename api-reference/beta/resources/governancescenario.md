# governanceScenario

An entity of `governanceScenario` represents a sub area of the `Governance` story.  It could be defined as "service + provider" (like `pimforazurerbac` stands for PIM service for Azure RBAC roles), or a "service" itself. In this set of API, we are onboarding an entity set of `governanceScenario` type, called `privilegedAccess`, indicating PIM service; and `privilegedAccess('pimforazurerbac')` as the specific scenario identifying PIM service for Azure RBAC roles.

### Methods
| Method		  | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/governancescenario_get.md) | [governanceScenario](governancescenario.md) |Read properties and relationships of a single governance scenario entity specified by id.|

`governanceScenario` is read-only for now. No `POST`, `PUT`, `PATCH`, or `DELETE` on `privilegedAccess` entity set is supported.

### Properties
| Key | Property	| Type	    |Description|
|:----|:----------|:----------|:----------|
|✓    |id         |String     |The id of the scenario.|
|     |displayName|String     |The display name of the scenario.|


### Relationships
| Relationship   | Type	                                        |Description|
|:---------------|:---------------------------------------------|:----------|
|resources       |[governanceResource](governanceResource.md) collection            |A collection of resources for the scenario.|
|roleAssignments |[governanceRoleAssignment](governanceroleassignment.md) collection|A collection of role assignments for the scenario.|
|roleDefinitions |[governanceRoleDefinition](governanceroledefinition.md) collection|A collection of role defintions for the scenario.|
|roleAssignmentRequests |[governanceRoleAssignmentRequest](roleassignmentrequest.md) collection|A collection of role assignment requests for the scenario.|
|roleSettings |[governanceRoleSetting](governancerolesetting.md) collection|A collection of role settings for the scenario.|


### JSON representation

Here is a JSON representation of the resource.

```json
{
  "id": "String (identifier)",
  "displayName": "String",
}
```