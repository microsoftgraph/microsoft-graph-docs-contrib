---
title: "numberCustomFieldDefinition resource type"
description: "Numeric custom field schema."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# numberCustomFieldDefinition resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the schema for a numeric custom field on a case form.

Inherits from [microsoft.graph.security.caseManagement.customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md). Instances appear in the custom-fields collection of a [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md), differentiated by the `@odata.type` value `#microsoft.graph.security.caseManagement.numberCustomFieldDefinition`.

## Methods

For methods, see the base type [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultValue|Int32|The default numeric value applied to the field on a new case.|
|description|String|The field description. Inherited from [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md).|
|displayName|String|The field label shown on the case form. Inherited from [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md).|
|id|String|The unique identifier of the custom field. Read-only. Inherited from [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md).|
|isDisabled|Boolean|`true` if the field is disabled; otherwise, `false`. Inherited from [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md).|
|isRequired|Boolean|`true` if a value is required for this field; otherwise, `false`. Inherited from [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.numberCustomFieldDefinition",
  "baseType": "microsoft.graph.security.caseManagement.customFieldDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.numberCustomFieldDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "isRequired": "Boolean",
  "isDisabled": "Boolean",
  "defaultValue": "Int32"
}
```
