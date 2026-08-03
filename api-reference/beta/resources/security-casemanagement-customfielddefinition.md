---
title: "customFieldDefinition resource type"
description: "Abstract base type describing a single tenant-defined custom field in the case blank-form schema."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# customFieldDefinition resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type describing a single tenant-defined custom field — one entry in the blank-form schema of a [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md). Each custom field is a concrete subtype, identified by `@odata.type`, that marks the field kind.

This is an abstract type and can't be instantiated directly. Collections of custom-field definitions contain instances of the following derived types:

- [stringCustomFieldDefinition](../resources/security-casemanagement-stringcustomfielddefinition.md)
- [numberCustomFieldDefinition](../resources/security-casemanagement-numbercustomfielddefinition.md)
- [dateTimeCustomFieldDefinition](../resources/security-casemanagement-datetimecustomfielddefinition.md)
- [optionsCustomFieldDefinition](../resources/security-casemanagement-optionscustomfielddefinition.md)

Custom-field definitions are reached by containment navigation from a case type configuration at `/security/caseManagement/caseTypeConfigurations/{caseTypeConfigurationId}/customFields`, so each field is individually addressable. The collection is read-only.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casemanagement-casetypeconfiguration-list-customfields.md)|[microsoft.graph.security.caseManagement.customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md) collection|Get a list of the [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md) objects for a case type.|
|[Get](../api/security-casemanagement-customfielddefinition-get.md)|[microsoft.graph.security.caseManagement.customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md)|Read the properties of a [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|The field description. Supports `$filter` and `$orderby`.|
|displayName|String|The field label shown on the case form. Supports `$filter` and `$orderby`.|
|id|String|The unique identifier of the custom field. Read-only. Supports `$filter` and `$orderby`.|
|isDisabled|Boolean|`true` if the field is disabled; otherwise, `false`. Supports `$filter` and `$orderby`.|
|isRequired|Boolean|`true` if a value is required for this field; otherwise, `false`. Supports `$filter` and `$orderby`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.customFieldDefinition",
  "abstract": true,
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.customFieldDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "isRequired": "Boolean",
  "isDisabled": "Boolean"
}
```
