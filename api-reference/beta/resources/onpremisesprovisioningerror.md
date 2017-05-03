# onPremisesProvisioningError resource type

Represents directory sync errors during provisioning. When a User, Group, Contact or PublicFolder contains a collection of onPremisesProvisioningErrors, it often indicates key end-user is not functioning correctly. For example, the user cannot sign in or the user cannot send or receive email.

### Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|category|String||
|occurredDateTime|DateTimeOffset| The date and time at which the error occurred. |
|propertyCausingError|String||
|value|String| A description of the error. |

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesProvisioningError"
}-->

```json
{
  "category": "String",
  "occurredDateTime": "String (timestamp)",
  "propertyCausingError": "String",
  "value": "String"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesProvisioningError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->