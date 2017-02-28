# schemaExtension resource type (schema extensions)

Schema extensions allow you to define a schema you can use to extend a resource type. Schema extension definitions let you add strongly-typed custom data to a resource. The custom data appears as a complex type on the extended resource.

The [schema extension example](../../../concepts/extensibility_schema_groups.md) shows how you to use schema extensions to add custom data to a group.

Schema extensions are supported for the following resource types:

 - a [message](message.md) and [event](event.md) 
 - an **event** or [post](post.md) for an Office 365 group
 - a [device](device.md)
 - a [group](group.md)
 - a [user](user.md)

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create](../api/schemaextension_post_schemaextensions.md) | [schemaExtension](schemaextension.md) |Create a schema extension definition.|
|[List](../api/schemaextension_list.md) | [schemaExtension](schemaextension.md) |List the avaialbe schemaExtension defintions and their properties.|
|[Get](../api/schemaextension_get.md) | [schemaExtension](schemaextension.md) |Read the properties of a specific schemaExtension definition.|
|[Update](../api/schemaextension_update.md) | [schemaExtension](schemaextension.md)	|Update a schemaExtension definition. |
|[Delete](../api/schemaextension_delete.md) | None |Delete a schemaExtension definition. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|Description for the schema extension.|
|id|String|The unique identifier for the schema extension definition. The value must be a concatenation of one of your verified domains (e.g. contoso.com) and a name for the schema extension - e.g. *contoso_mySchema*. |
|owner|String|The appId of the application that created the schema extension. Read-only.|
|properties|[ExtensionSchemaProperty](extensionschemaproperty.md) collection|The collection of property names and types that make up the schema extension definition.|
|status|String|The lifecycle state of the schema extension. Possible states are *InDevelopment*, *Available*, and *Deprecated*. Automatically set to *InDevelopment* on creation.|
|targetTypes|String collection|Set of Microsoft Graph types (that can support extensions) that the schema extension can be applied to. Currently this is *user, device, event, group, message, post*, with *administrativeUnit, organization* and *contact* coming soon. |

## Lifecycle details
When you create a schema extension definition, the application used (for creation) is marked as the owner of the schema extension. Only this application can update and delete the schema extension definition. The schema extension may be updated with non-breaking changes. The schema extension can be in various different lifecycle states. You can change the lifecycle state through a PATCH operation.

| State | Lifecycle state behavior |
|-------------|------------|
| InDevelopment | Initial state after creation.  In this state, only the owning app can use the schema extension to add data to the targeted resource. The schema extension can be updated with additive changes and it can be deleted. Additionally, in this state, only the owning app can extend resources using this schema definition and only in the same directory where the owning app is registered. You can move the schema extension from *InDevelopment* to the *Available* state. |
| Available |  The schema extension schema is available for use by all apps and can be used by any app to extend resources (as long as that app has permissions to that resource). The schema extension can be updated with additive changes but it can **not** be deleted. You can move the schema extension from *Available* to the *Deprecated* state.| 
| Deprecated |  When the schema extension is *Deprecated*, apps can still read and update extension properties based on the schema extension. The schema extension is not available to be viewed and cannot be used to create new properties. The schema extension cannot be updated or deleted. You can move a schema extension from *Deprecated* back to the *Available* state. |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.schemaExtension"
}-->

```json
{
  "description": "String",
  "id": "String (identifier)",
  "owner": "String",
  "properties": [{"@odata.type": "microsoft.graph.ExtensionSchemaProperty"}],
  "status": "String",
  "targetTypes": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "schemaExtension resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->