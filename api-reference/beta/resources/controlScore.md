#  controlScore resource type

Complex type contains tenant score for individual control and control description

|Name |Type |Description |
|:--|:--|:--|
|	controlName	|	String	|	Control unique name	|
|	score	|	Double	|  Tenant achieved score for the control (its varies day by day depends on tenant action on the control) |
|	controlCategory	|	String	|  Control action category(Identity, Data, Device, Apps, Infrastructure) |
|	description	|	String	|  Description of the control |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.controlScore"
}-->

```json
{
  "controlName": "String",
  "score": "String",
  "controlCategory": "String",
  "description": "String"
}

```


<!-- {
  "type": "#page.annotation",
  "description": "controlScore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
