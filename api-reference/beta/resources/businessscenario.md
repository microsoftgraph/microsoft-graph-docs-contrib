---
title: "businessScenario resource type"
description: "Represents a scenario which collects relevant data and configuration for a specific problem domain."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# businessScenario resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a scenario which collects relevant data and configuration for a specific problem domain. For more details about business scenarios, see [Business Scenarios (Preview) Overview](/graph/businessscenarios-concept-overview.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List businessScenarios](../api/solutionsroot-list-businessscenarios.md)|[businessScenario](../resources/businessscenario.md) collection|Get a list of the [businessScenario](../resources/businessscenario.md) objects and their properties.|
|[Create businessScenario](../api/solutionsroot-post-businessscenarios.md)|[businessScenario](../resources/businessscenario.md)|Create a new [businessScenario](../resources/businessscenario.md) object.|
|[Get businessScenario](../api/businessscenario-get.md)|[businessScenario](../resources/businessscenario.md)|Read the properties and relationships of a [businessScenario](../resources/businessscenario.md) object.|
|[Update businessScenario](../api/businessscenario-update.md)|[businessScenario](../resources/businessscenario.md)|Update the properties of a [businessScenario](../resources/businessscenario.md) object.|
|[Delete businessScenario](../api/solutionsroot-delete-businessscenarios.md)|None|Delete a [businessScenario](../resources/businessscenario.md) object.|
|[Get businessScenarioPlanner](../api/businessscenarioplanner-get.md)|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|Read the properties and relationships of a [businessScenarioPlanner](../resources/businessscenarioplanner.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the user who created the scenario.|
|createdDateTime|DateTimeOffset|The date and time when the scenario was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|displayName|String|Display name of the scenario.|
|id|String|The unique identifier for the scenario. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the user who last modified the scenario.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the scenario was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|ownerAppIds|String collection|Identifiers of applications that are authorized to work with this scenario.|
|uniqueName|String|Unique name of the scenario. To avoid conflicts, the recommended value for the unique name is a reverse domain name format, owned by the author of the scenario. For example, a scenario authored by *Contoso.com* would have a unique name that starts with `com.contoso`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|planner|[businessScenarioPlanner](../resources/businessscenarioplanner.md)|Planner content related to the scenario.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.businessScenario",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessScenario",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "ownerAppIds": ["String"],
  "uniqueName": "String"
}
```
