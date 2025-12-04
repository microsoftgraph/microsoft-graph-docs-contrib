---
title: "teamsUserConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 12/03/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# teamsUserConfiguration resource type

Namespace: microsoft.graph.teamsAdministration



**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamsadministration-teamsadminroot-list-userconfigurations.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) collection|Get a list of the teamsUserConfiguration objects and their properties.|
|[Create](../api/teamsadministration-teamsadminroot-post-userconfigurations.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md)|Create a new teamsUserConfiguration object.|
|[Get](../api/teamsadministration-teamsuserconfiguration-get.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md)|Read the properties and relationships of [microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) object.|
|[Update](../api/teamsadministration-teamsuserconfiguration-update.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md)|Update the properties of a teamsUserConfiguration object.|
|[Delete](../api/teamsadministration-teamsadminroot-delete-userconfigurations.md)|None|Delete a teamsUserConfiguration object.|
|[List user](../api/teamsadministration-teamsuserconfiguration-list-user.md)|[microsoft.graph.user](../resources/user.md) collection|**TODO: Add a useful description.**|
|[Add user](../api/teamsadministration-teamsuserconfiguration-post-user.md)|[microsoft.graph.user](../resources/user.md)|Add user by posting to the user collection.|
|[Remove user](../api/teamsadministration-teamsuserconfiguration-delete-user.md)|None|Remove a [user](../resources/user.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountType|microsoft.graph.teamsAdministration.accountType|**TODO: Add Description**. The possible values are: `user`, `resourceAccount`, `guest`, `sfbOnPremUser`, `unknown`, `unknownFutureValue`, `ineligibleUser`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `ineligibleUser`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|effectivePolicyAssignments|[microsoft.graph.teamsAdministration.effectivePolicyAssignment](../resources/teamsadministration-effectivepolicyassignment.md) collection|**TODO: Add Description**|
|featureTypes|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isEnterpriseVoiceEnabled|Boolean|**TODO: Add Description**|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|telephoneNumbers|[microsoft.graph.teamsAdministration.assignedTelephoneNumber](../resources/teamsadministration-assignedtelephonenumber.md) collection|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|user|[user](../resources/user.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsUserConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": "id"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsUserConfiguration",
  "id": "String (identifier)",
  "userPrincipalName": "String",
  "tenantId": "String",
  "effectivePolicyAssignments": [
    {
      "@odata.type": "microsoft.graph.teamsAdministration.effectivePolicyAssignment"
    }
  ],
  "telephoneNumbers": [
    {
      "@odata.type": "microsoft.graph.teamsAdministration.assignedTelephoneNumber"
    }
  ],
  "isEnterpriseVoiceEnabled": "Boolean",
  "featureTypes": [
    "String"
  ],
  "accountType": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)"
}
```

