# groupSettingTemplate resource type




### Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Get groupsettingtemplate](../api/groupsettingtemplate_get.md) | [groupSettingTemplate](groupsettingtemplate.md) |Read properties and relationships of groupSettingTemplate object.|
|[Update](../api/groupsettingtemplate_update.md) | [groupSettingTemplate](groupsettingtemplate.md)	|Update groupsettingtemplate object. |
|[Delete](../api/groupsettingtemplate_delete.md) | None |Delete groupSettingTemplate object. |
|[Checkmembergroups](../api/groupsettingtemplate_checkmembergroups.md)|String collection||
|[Getbyids](../api/groupsettingtemplate_getbyids.md)|[directoryObject](directoryobject.md) collection||
|[Getmembergroups](../api/groupsettingtemplate_getmembergroups.md)|String collection||
|[Getmemberobjects](../api/groupsettingtemplate_getmemberobjects.md)|String collection||

### Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|description|String||
|displayName|String||
|id|String| Read-only.|
|values|[settingTemplateValue](settingtemplatevalue.md) collection||

### Relationships

None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.groupSettingTemplate"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "values": [{"@odata.type": "microsoft.graph.settingTemplateValue"}]
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupSettingTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->