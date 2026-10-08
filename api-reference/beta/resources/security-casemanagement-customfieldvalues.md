---
title: "customFieldValues resource type"
description: "Represents tenant-defined custom field values on a case."
author: "alfeldsh"
ms.date: 06/03/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# customFieldValues resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an open collection of tenant-defined custom field values in the **customFields** property of a [case](../resources/security-casemanagement-case.md).

## Properties

This open type has no fixed properties. To identify the available custom fields, call [List customFields](../api/security-casemanagement-casetypeconfiguration-list-customfields.md) at `/security/caseManagement/caseTypeConfigurations/{caseTypeConfigurationId}/customFields`, where `{caseTypeConfigurationId}` is `genericCase` or `incidentCase`.

> [!IMPORTANT]
> Use the definition's **displayName**, not its **id**, as the dynamic property name. The display name must match exactly one definition in the case type configuration. A request fails if the name matches no definition or more than one definition. If a display name changes, update integrations that use it as a key.

For each custom field value:

- Use the definition's **displayName** value as the dynamic property name.
- Supply an object as the dynamic property value. Bare values such as strings or numbers aren't supported.
- Include `@odata.type` in every value object.
- Use the definition's `@odata.type` to select the corresponding custom field value type and value property from the following table.
- Use **isRequired** and **isDisabled** to determine whether the field must or can be supplied.
- For an options field, use only values listed in the definition's **options** property.

### Custom field value mapping

|Custom field definition `@odata.type`|Custom field value `@odata.type`|Value property|
|:---|:---|:---|
|[`#microsoft.graph.security.caseManagement.dateTimeCustomFieldDefinition`](../resources/security-casemanagement-datetimecustomfielddefinition.md)|[`#microsoft.graph.security.caseManagement.customFieldDateTimeValue`](../resources/security-casemanagement-customfielddatetimevalue.md)|**valueDateTime** (DateTimeOffset)|
|[`#microsoft.graph.security.caseManagement.numberCustomFieldDefinition`](../resources/security-casemanagement-numbercustomfielddefinition.md)|[`#microsoft.graph.security.caseManagement.customFieldNumberValue`](../resources/security-casemanagement-customfieldnumbervalue.md)|**value** (Int32)|
|[`#microsoft.graph.security.caseManagement.optionsCustomFieldDefinition`](../resources/security-casemanagement-optionscustomfielddefinition.md)|[`#microsoft.graph.security.caseManagement.customFieldOptionsValue`](../resources/security-casemanagement-customfieldoptionsvalue.md)|**values** (String collection)|
|[`#microsoft.graph.security.caseManagement.stringCustomFieldDefinition`](../resources/security-casemanagement-stringcustomfielddefinition.md)|[`#microsoft.graph.security.caseManagement.customFieldStringValue`](../resources/security-casemanagement-customfieldstringvalue.md)|**value** (String)|

### Example

The following example shows the shape of a **customFields** payload. `External reference` is the exact **displayName** returned by the custom field definition.

``` json
{
  "customFields": {
    "External reference": {
      "@odata.type": "#microsoft.graph.security.caseManagement.customFieldStringValue",
      "value": "INC-2026-0042"
    }
  }
}
```

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.customFieldValues"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.customFieldValues"
}
```
