# secureScores resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a tenants Secure Score per day scoring data, at the tenant and control level. By default 90 days of data is held, this data is sorted by createdDateTime, latest to last. This will allow you to page responses back by using $top(n), where n = the number of days data that you wish to retrieve. 


## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List secureScores](../api/get_secureScores.md) | [secureScores](secureScores.md) |Read properties and metadata of a secureScores object.|


## Properties - secureScore
Entity type containing properties of the tenent security score (daily snapshot data).

|Property |Type |Description |
|:--|:--|:--|
|	azureTenantId	|	String	|	GUID string for tenant ID	|
|	createdDateTime	|	DateTimeOffset	|	The date  when the entity is created  |
|	id	|	String	|	Combination of azureTenantId_createdDateTime	|
|	licensedUserCount	|	Int32	|	Licensed user count of the provided tenant	|
|	activeUserCount	|	Int32	|	Active user count of the given tenant	|
|	currentScore	|	Double	|	Tenant current attained score on specified date	|
|	maxScore |	Double	|	Tenant maximum possible score on specified date	|
|	enabledServices |	collection(String)	|	Microsoft provided services for the tenant (Ex: Excahnge online, Skype, Sharepoint etc)	|
|	averageComparativeScores |	collection(averageComparativeScore)	|Average score by different scopes(ex: average by industry, average by seating etc) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope	|
|	controlScores |	string	|	Contains tenant score for individual control and control discription	|

## Properties - averageComparativeScores
Complex type containing properties for average score by different scopes(ex: average by industry, average by seating etc) and control category (Identity, Data, Device, Apps, Infrastructure) with in the basis. Also contains other extended properties.

|Property |Type |Description |
|:--|:--|:--|
|	basis	|	String	|	Scope type (By AllTenants, TotalSeats, IndustryTypes)	|
|	averageScore	|	Double	| Average score with in specified basis |
|	deviceScore	|	Double	| Average score with in specified basis |
|	dataScore	|	Double	| Average score with in specified basis |
|	identityScore	|	Double	| Average score with in specified basis |

## Properties - controlScores
Complex type contains tenant score for individual control and control discription

|Name |Type |Description |
|:--|:--|:--|
|	controlName	|	String	|	Control unique name	|
|	score	|	Double	|  Tenant achieved score for the control (its varies day by day depends on tenant action on the control) |
|	controlCategory	|	String	|  Control action category(Identity, Data, Device, Apps, Infrastructure) |
|	description	|	String	|  Description of the control |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.secureScores"
}-->

```json
{
"id": "String",
"AzureTenantId": "Guid",
"createdDate": "DateTimeOffset",
"licensedUserCount": "Int32",
"activeUserCount": "Int32",
"currentScore": "Int32",
"maxScore": "Int32",
"averageScore": "Double",
"enabledServices": "Collection(string)",
"averageComparativeScores": "Collection(microsoft.graph.SecureScore.averageComparativeScores)",
"controlScores": "Collection(microsoft.graph.SecureScore.controlScores)",
}

```


<!-- {
  "type": "#page.annotation",
  "description": "secureScores resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
