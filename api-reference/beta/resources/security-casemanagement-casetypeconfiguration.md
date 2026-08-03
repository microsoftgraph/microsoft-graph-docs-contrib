---
title: "caseTypeConfiguration resource type"
description: "Exposes the allowed status tree and the custom-field schema for a single case type."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# caseTypeConfiguration resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes the discovery configuration for a single case type: the allowed status tree and the custom-field schema (the blank-form definition) that applies to every [case](../resources/security-casemanagement-case.md) of that type.

Each configuration is keyed by **id**, whose value is the case type: `genericCase`, `incidentCase`, or `exposureCase`. The configuration is reached by containment navigation from the case management root at `/security/caseManagement/caseTypeConfigurations`, so each contained status and custom field is individually addressable. The collection and all of its contained resources are read-only.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casemanagementroot-list-casetypeconfigurations.md)|[microsoft.graph.security.caseManagement.caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md) collection|Get a list of the [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md) objects and their properties.|
|[Get](../api/security-casemanagement-casetypeconfiguration-get.md)|[microsoft.graph.security.caseManagement.caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md)|Read the properties and relationships of a [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md) object.|
|[List customFields](../api/security-casemanagement-casetypeconfiguration-list-customfields.md)|[microsoft.graph.security.caseManagement.customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md) collection|Get the custom-field definitions that make up the blank-form schema for this case type.|
|[List statuses](../api/security-casemanagement-casetypeconfiguration-list-statuses.md)|[microsoft.graph.security.caseManagement.statusDefinition](../resources/security-casemanagement-statusdefinition.md) collection|Get the top-level statuses that make up the allowed status tree for this case type.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultStatusId|String|The **id** of the top-level [status](../resources/security-casemanagement-statusdefinition.md) that a new case of this type starts in.|
|displayName|String|The human-readable label of the case type.|
|id|String|The unique identifier of the case type. The value is the case type name: `genericCase`, `incidentCase`, or `exposureCase`. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customFields|[microsoft.graph.security.caseManagement.customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md) collection|The contained custom-field definitions that make up the blank-form schema for this case type. Read-only. Supports `$count`, `$expand`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top`.|
|statuses|[microsoft.graph.security.caseManagement.statusDefinition](../resources/security-casemanagement-statusdefinition.md) collection|The contained top-level statuses that a case of this type can be set to. Read-only. Supports `$count`, `$expand`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.caseTypeConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.caseTypeConfiguration",
  "id": "String (identifier)",
  "displayName": "String",
  "defaultStatusId": "String"
}
```
