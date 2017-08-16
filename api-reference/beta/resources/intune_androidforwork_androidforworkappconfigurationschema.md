# androidForWorkAppConfigurationSchema resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Schema describing an Android for Work application's custom configurations.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidForWorkAppConfigurationSchemas](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_androidforworkappconfigurationschema_list.md)|[androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md) collection|List properties and relationships of the [androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md) objects.|
|[Get androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_androidforworkappconfigurationschema_get.md)|[androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md)|Read properties and relationships of the [androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md) object.|
|[Create androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_androidforworkappconfigurationschema_create.md)|[androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md)|Create a new [androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md) object.|
|[Delete androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_androidforworkappconfigurationschema_delete.md)|None|Deletes a [androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md).|
|[Update androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_androidforwork_androidforworkappconfigurationschema_update.md)|[androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md)|Update the properties of a [androidForWorkAppConfigurationSchema](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschema.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity the Android package name for the application the schema corresponds to|
|exampleJson|[androidForWorkAppConfigurationExample](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationexample.md)|Example JSON confirming to this schema that demonstrates how to set the configuration for this app|
|schemaItems|[androidForWorkAppConfigurationSchemaItem](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_androidforwork_androidforworkappconfigurationschemaitem.md) collection|Collection of items each representing a named configuration option in the schema|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidForWorkAppConfigurationSchema"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidForWorkAppConfigurationSchema",
  "id": "String (identifier)",
  "exampleJson": {
    "@odata.type": "microsoft.graph.androidForWorkAppConfigurationExample"
  },
  "schemaItems": [
    {
      "@odata.type": "microsoft.graph.androidForWorkAppConfigurationSchemaItem",
      "schemaItemKey": "String",
      "displayName": "String",
      "description": "String",
      "defaultBoolValue": true,
      "defaultIntValue": 1024,
      "defaultStringValue": "String",
      "defaultStringArrayValue": [
        "String"
      ],
      "dataType": "String",
      "selections": [
        {
          "@odata.type": "microsoft.graph.keyValuePair",
          "name": "String",
          "value": "String"
        }
      ]
    }
  ]
}
```



