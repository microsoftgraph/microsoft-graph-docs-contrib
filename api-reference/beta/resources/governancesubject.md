# governanceSubject

Represents users, groups, and service principals being managed in Privileged Identity Management (PIM).


### Properties
| Key | Property	| Type	    |Required  |Description|
|:----|:----------|:----------|:---------|:----------|
|✓    |id         |String     |✓         | The id of the subject.|
|     |type       |String     |           |The type of the subject. The value can be ``User``, ``Group``, ``ServicePrincipal``, ``GroupSecurityNotEnabled``, and ``Role``.|
|     |displayName|String     |           |The display name of the subject.|
|     |email      |String     |           |The email address of the user subject. If the subject is in other types, it is empty.|
|     |principalName|String   |           |The principal name of the user subject. If the subject is in other types, it is empty.|

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

```json
{
  "id": "String",  
  "displayName": "String",
  "email": "String",
  "principalName": "String",
  "type": "String"
}

```