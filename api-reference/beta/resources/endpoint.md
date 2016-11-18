# Endpoint resource type

When workloads are notified about the creation of a new unified group, resources may be provisioned by the workloads for that group and associated resource URLs need to be made available to other workloads and applications. Each resource URL will be represented as a containment entity of type endpoint. 

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get endpoint](../api/endpoint_get.md) | [Endpoint](endpoint.md) |Read properties and relationships of endpoint object.|

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| capability     | String  | Represents the capability that is associated with this resource. No validation is performed on the value of this property. Expectation is that this will be one of an agreed upon list (e.g. messages, conversations, etc.)  Not nullable.  |
| id             | String  | A Guid that is the unique identifier for the serviceEndpoint; Key. Not nullable. Read-only.|
| providerId     | String  | Set to the application id of the workload that is publishing the URL. Not nullable. |
| providerName   | String  | Name of the publishing workload. |
| providerResourceId|String| For resource URLs, this should be set to a well-known name for the resource (e.g. Yammer.FeedURL etc.) Not nullable. |
| uri            | String  | Actual URL for the resource. Not nullable. |

### Relationships

None.


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.Endpoint"
}-->

```json
{
  "capability": "String",
  "id": "String (identifier)",
  "providerId": "String",
  "providerName": "String",
  "providerResourceId": "String",
  "uri": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Endpoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->