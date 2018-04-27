# `permission` type
Represents the access permission that a `subject` has to a specific `resource`.  



### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accessLevel|String|The access level. Valid values: ``None``, ``UserRead``, ``AdminRead``, and ``AdminReadWrite``.|
|isActive|Boolean|Indicate if the the requestor has any active role assignment for the access level.|
|isEligible|Boolean|Indicate if the requestor has any eligible role assignment for the access level.|

### JSON representation

Here is a JSON representation of the resource.

```json
{
  "accessLevel": "String",
  "isActive": true,
  "isEligible": true
}

```