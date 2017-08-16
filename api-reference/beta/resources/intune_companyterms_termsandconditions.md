# termsAndConditions resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A termsAndConditions entity represents the metadata and contents of a given Terms and Conditions (T&C) policy. T&C policies’ contents are presented to users upon their first attempt to enroll into Intune and subsequently upon edits where an administrator has required re-acceptance. They enable administrators to communicate the provisions to which a user must agree in order to have devices enrolled into Intune.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List termsAndConditionses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_companyterms_termsandconditions_list.md)|[termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditions.md) collection|List properties and relationships of the [termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditions.md) objects.|
|[Get termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_companyterms_termsandconditions_get.md)|[termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditions.md)|Read properties and relationships of the [termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditions.md) object.|
|[Create termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_companyterms_termsandconditions_create.md)|[termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditions.md)|Create a new [termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditions.md) object.|
|[Delete termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_companyterms_termsandconditions_delete.md)|None|Deletes a [termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditions.md).|
|[Update termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_companyterms_termsandconditions_update.md)|[termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditions.md)|Update the properties of a [termsAndConditions](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditions.md) object.|
|[List termsAndConditionsGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_companyterms_termsandconditionsgroupassignment_list.md)|[termsAndConditionsGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditionsgroupassignment.md) collection|List properties and relationships of the [termsAndConditionsGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditionsgroupassignment.md) objects.|
|[List termsAndConditionsAcceptanceStatuses](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_companyterms_termsandconditionsacceptancestatus_list.md)|[termsAndConditionsAcceptanceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditionsacceptancestatus.md) collection|List properties and relationships of the [termsAndConditionsAcceptanceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditionsacceptancestatus.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique identifier of the T&C policy.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|modifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Administrator-supplied name for the T&C policy. |
|description|String|Administrator-supplied description of the T&C policy.|
|title|String|Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.|
|bodyText|String|Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.|
|acceptanceStatement|String|Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.|
|version|Int32|Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[termsAndConditionsGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditionsgroupassignment.md) collection|The list of group assignments for this T&C policy.|
|acceptanceStatuses|[termsAndConditionsAcceptanceStatus](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_companyterms_termsandconditionsacceptancestatus.md) collection|The list of acceptance statuses for this T&C policy.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termsAndConditions"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.termsAndConditions",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "title": "String",
  "bodyText": "String",
  "acceptanceStatement": "String",
  "version": 1024
}
```



