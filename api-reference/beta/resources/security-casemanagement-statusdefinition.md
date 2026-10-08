---
title: "statusDefinition resource type"
description: "A top-level status that a case of a given type can be set to."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# statusDefinition resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a top-level status that a [case](../resources/security-casemanagement-case.md) of a given type can be set to. A **statusDefinition** belongs to the allowed status tree of a [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md) and carries a nested collection of custom statuses that are returned inline.

Status definitions are reached by containment navigation from a case type configuration at `/security/caseManagement/caseTypeConfigurations/{caseTypeConfigurationId}/statuses`, so each status is individually addressable. The collection is read-only. Custom statuses are returned inline as [customStatusDefinition](../resources/security-casemanagement-customstatusdefinition.md) values within the **customStatuses** property and aren't separately addressable.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casemanagement-casetypeconfiguration-list-statuses.md)|[microsoft.graph.security.caseManagement.statusDefinition](../resources/security-casemanagement-statusdefinition.md) collection|Get a list of the [statusDefinition](../resources/security-casemanagement-statusdefinition.md) objects for a case type.|
|[Get](../api/security-casemanagement-statusdefinition-get.md)|[microsoft.graph.security.caseManagement.statusDefinition](../resources/security-casemanagement-statusdefinition.md)|Read the properties of a [statusDefinition](../resources/security-casemanagement-statusdefinition.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|customStatuses|[microsoft.graph.security.caseManagement.customStatusDefinition](../resources/security-casemanagement-customstatusdefinition.md) collection|The custom statuses returned inline within this top-level status. These aren't separately addressable.|
|displayName|String|The human-readable label of the status. Supports `$filter` and `$orderby`.|
|id|String|The unique identifier of the status within the case type. Read-only. Supports `$filter` and `$orderby`.|
|sortOrder|Int32|The display order of the status relative to other statuses of the same case type. Supports `$filter` and `$orderby`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.statusDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.statusDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "sortOrder": "Int32",
  "customStatuses": [
    {
      "@odata.type": "microsoft.graph.security.caseManagement.customStatusDefinition",
      "customStatusId": "String",
      "displayName": "String",
      "sortOrder": "Int32",
      "isFinal": "Boolean"
    }
  ]
}
```
