# targetResource resource type
Indicates the target resource entiry that changed by the activity. Includes information like the display name of the resource, unique Id and any properties that was changed during the activity. 


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|Indicates the display name of the resources outlined under Target Resource Types below.|
|id|String|Indicates the Unique Id of the resource (E.g. UserId, AppId, RoleId etc..).|
|modifiedProperties|[modifiedProperty](modifiedproperty.md) collection|Indicates Name, old value and new value of each attribute that changed. This is applicable for any "Update" activities|

### Target Resource Types

|Resource Name| Reference
|-------------|----------|
Device|targetresourcedevice.md
Directory|targetresourcedirectory.md
Group|targetresourcegroup.md
Policy|targetresourcepolicy.md
Role|targetresourcerole.md
Service Principal|targetresourceserviceprincipal.md
User|targetresourceuser.md
Other|targetresourceother.md
## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.targetResource"
}-->

```json
{
  "displayName": "String",
  "id": "String",
  "modifiedProperties": [{"@odata.type": "microsoft.graph.modifiedProperty"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "targetResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->