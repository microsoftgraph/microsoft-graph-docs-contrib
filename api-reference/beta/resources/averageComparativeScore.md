#  averageComparativeScore resource type

Complex type containing properties for average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the basis. Also contains other extended properties.

|Property |Type |Description |
|:--|:--|:--|
|	basis	|	String	|	Scope type (By AllTenants, TotalSeats, IndustryTypes)	|
|	averageScore	|	Double	| Average score within specified basis |
|	deviceScore	|	Double	| Average score within specified basis |
|	dataScore	|	Double	| Average score within specified basis |
|	identityScore	|	Double	| Average score within specified basis |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.averageComparativeScore"
}-->

```json
{
  "basis": "String",
  "averageScore": "Double",
  "deviceScore": "Double",
  "dataScore": "Double",
  "identityScore": "Double"
}

```


<!-- {
  "type": "#page.annotation",
  "description": "averageComparativeScore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
