---
title: "agreementFileLocalization resource type"
description: "Represents a localized policy file of a terms of use agreement in Azure Active Directory (Azure AD)."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "governance"
author: AlexFilipin
---

# agreementFileLocalization resource type

Namespace: microsoft.graph

Represents a customizable terms of use agreement file that a tenant manages with Azure Active Directory (Azure AD). It contains metadata about the agreement file (for example, the name, the language, and whether it is the default file).

Inherits from [agreementFileProperties](agreementfileproperties.md).

## Methods

None.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdDateTime|DateTimeOffset|The date time representing when the file was created.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [agreementFileProperties](../resources/agreementfileproperties.md).|
|displayName|String|Localized display name of the policy file of an agreement. The localized display name is shown to end users who view the agreement. Inherited from [agreementFileProperties](../resources/agreementfileproperties.md).|
|fileData|[agreementFileData](agreementfiledata.md)|Data that represents the terms of use PDF document. Read-only. Inherited from [agreementFileProperties](../resources/agreementfileproperties.md).|
|fileName|String|Name of the agreement file (for example, TOU.pdf). Read-only. Inherited from [agreementFileProperties](../resources/agreementfileproperties.md).|
|id|String|The identifier of the agreementFileVersion object. Read-only. Inherited from [agreementFileProperties](../resources/agreementfileproperties.md).|
|isDefault|Boolean|If none of the languages matches the client preference, indicates whether this is the default agreement file . If none of the files are marked as default, the first one is treated as the default. Read-only. Inherited from [agreementFileProperties](../resources/agreementfileproperties.md).|
|isMajorVersion|Boolean|Indicates whether the agreement file is a major version update. Major version updates invalidate the agreement's acceptances on the corresponding language. Inherited from [agreementFileProperties](../resources/agreementfileproperties.md).|
|language|String|The language of the agreement file in the format "languagecode2-country/regioncode2". "languagecode2" is a lowercase two-letter code derived from ISO 639-1, while "country/regioncode2" is derived from ISO 3166 and usually consists of two uppercase letters, or a BCP-47 language tag. For example, U.S. English is `en-US`. Read-only. Inherited from [agreementFileProperties](../resources/agreementfileproperties.md).|


## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|versions|[agreementFileVersion](agreementfileversion.md) collection|Read-only. Customized versions of the terms of use agreement in the Azure AD tenant.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agreementFileLocalization"
}-->

```json
{
  "fileData": {"@odata.type": "microsoft.graph.agreementFileData"},
  "fileName": "String",
  "id": "String (identifier)",
  "isDefault": "Boolean",
  "language": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "agreementFileLocalization resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
