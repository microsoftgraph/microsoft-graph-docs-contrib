---
title: "servicePrincipalCreationConditionSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# servicePrincipalCreationConditionSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List servicePrincipalCreationConditionSets](../api/serviceprincipalcreationconditionset-list.md)|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) collection|Get a list of the [servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) objects and their properties.|
|[Create servicePrincipalCreationConditionSet](../api/serviceprincipalcreationconditionset-create.md)|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md)|Create a new [servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) object.|
|[Get servicePrincipalCreationConditionSet](../api/serviceprincipalcreationconditionset-get.md)|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md)|Read the properties and relationships of a [servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) object.|
|[Update servicePrincipalCreationConditionSet](../api/serviceprincipalcreationconditionset-update.md)|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md)|Update the properties of a [servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) object.|
|[Delete servicePrincipalCreationConditionSet](../api/serviceprincipalcreationconditionset-delete.md)|None|Deletes a [servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationIds|String collection|**TODO: Add Description**|
|applicationPublisherIds|String collection|**TODO: Add Description**|
|applicationsFromVerifiedPublisherOnly|Boolean|**TODO: Add Description**|
|applicationTenantIds|String collection|**TODO: Add Description**|
|certifiedApplicationsOnly|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.servicePrincipalCreationConditionSet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.servicePrincipalCreationConditionSet",
  "id": "String (identifier)",
  "applicationIds": [
    "String"
  ],
  "applicationTenantIds": [
    "String"
  ],
  "applicationPublisherIds": [
    "String"
  ],
  "applicationsFromVerifiedPublisherOnly": "Boolean",
  "certifiedApplicationsOnly": "Boolean"
}
```

