# user resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

**TODO: Documentation is missing please add the `\[ODataDescription()\]` and/or `\[ODataLongDescription()\]` attributes.**
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List users](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_user_list.md)|[user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_user.md) collection|List properties and relationships of the [user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_user.md) objects.|
|[Get user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_user_get.md)|[user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_user.md)|Read properties and relationships of the [user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_user.md) object.|
|[Create user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_user_create.md)|[user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_user.md)|Create a new [user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_user.md) object.|
|[Delete user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_user_delete.md)|None|Deletes a [user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_user.md).|
|[Update user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_onboarding_user_update.md)|[user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_user.md)|Update the properties of a [user](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_onboarding_user.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique identifier of the user.|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)",
  "deviceEnrollmentLimit": 1024
}
```



