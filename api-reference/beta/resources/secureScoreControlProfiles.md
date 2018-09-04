# secureScoreControlProfiles resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a tenant's Secure Score per control data. By default, it returns all controls for a tenant and can explicitly pull individual controls.


## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List secureScores](../api/get_secureScoreControlProfiles.md) | [secureScoreControlProfiles](secureScoreControlProfiles.md) |Read properties and metadata of a secureScoreControlProfiles object.|


## Properties
Entity type containing properties of the Microsoft security control data (inventory data)

|Name |Type |Description |
|:--|:--|:--|
|	azureTenantId	|	String	|	GUID string for tenant ID	|
|	controlName	|	String	|	Name of the control |
|	title	|	String	|	Title of the control	|
|	controlCategory	|	String	|	Control action category (Account, Data, Device, Apps, Infrastructure)	|
|	actionType	|	String	|	control action type (Config, Review, Behavior)	|
|	service	|	String	|	Service that owns the control (Exchange, Sharepoint, Azure AD)	|
|	maxScore |	String	|	Current obtained max score on specified date	|
|	tier |	String	|	Control tier (Core, Defense in Depth, Advanced)	|
|	userImpact |	String	| User impact of implementing control (low, moderate, high)	|
|	implementationCost |	String	|	Resource cost of implemmentating control (low, moderate, high)	|
|	rank |	Int32	|	Microsoft's stack ranking of control	|
|	threats |	collection(String)	|	List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,elevationOfPrivilege,maliciousInsider,passwordCracking,phishingOrWhaling,spoofing)	|
|	deprecated |	Boolean	|	Flag to indicate if a control is depreciated	|
|	remediation |	String	|	Description of what the control will help remediate |
|	remediationImpact |	String	|	Description of the impact on users of the remediation |
|	actionUrl |	String	|	URL to where the control can be actioned |
|	controlStateUpdates |	String	|	Flag to indicate where the tenant has marked a control (ignore, thirdParty, reviewed) (supports [update](../api/secureScoreControlProfiles_update.md)) |
|	tenantNote |	String	|	Tenant can set per control comments (supports [update](../api/secureScoreControlProfiles_update.md)) |
|	assignedTo |	String	|	Tenant can assign the control to a individual (supports [update](../api/secureScoreControlProfiles_update.md)) |
|	updatedBy |	String	|	UPN of user who made changes to a Controls state |

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
"title": "String", 
"azureTenantId": "Guid", 
"referenceId": "String", 
"controlName": "String", 
"maxScore": "Int32",
"actionCategory": "Collection(microsoft.graph.SecureScore.actionCategory)",
"actionType": "Collection(microsoft.graph.SecureScore.actionType)",
"service": "String",
"tier": "Collection(microsoft.graph.SecureScore.tier)",
"userImpact": "Collection(microsoft.graph.SecureScore.ranking)",
"implementationCost ": "Collection(microsoft.graph.SecureScore.ranking)",
"rank ": "Int32",
"threats": "Collection(microsoft.graph.SecureScore.threat)",
"deprecated ": "Boolean",
"remediation": "String",
"remediationImpact ": "String",
"actionUrl": "String",
"controlStateUpdates": "Collection(microsoft.graph.SecureScore.controlStateUpdates)",
"tenantNotes": "String",
"upn": "String",
"comments": "String",
}


```


<!-- {
  "type": "#page.annotation",
  "description": "secureScoreControlProfiles resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
