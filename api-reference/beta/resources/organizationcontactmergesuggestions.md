---
title: "contactMergeSuggestions resource type"
description: "Represents contact merge suggestions for an organization."
ms.localizationpriority: medium
author: "rogoy"
ms.prod: "outlook"
doc_type: resourcePageType
---

# contactMergeSuggestions resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Represents _settings_ to manage the audience in an organization for whom the contact de-duplication feature is enabled in M365. The feature availability can be controlled at the organization level (i.e., Tenant) or at a security group level (i.e., a subset of the organization). 


When a contact list has multiple entries for the same individual, information is scattered across contacts or replicated with no added benefit. Contact merge suggestions allow easy merger of information into a single contact in which all information from duplicates is saved. 

Additionally, users can disable/enable this feature using [contactMergeSuggestions resource type](../resources/contactmergesuggestions.md) 

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/organizationsettings-list-contactmergesuggestions.md) | [contactMergeSuggestions](organizationcontactmergesuggestions.md) | Read the properties of a contactMergeSuggestions object. |
| [Update](../api/organizationsettings-update-contactmergesuggestions.md) | [contactMergeSuggestions](organizationcontactmergesuggestions.md) | Update the properties of a contactMergeSuggestions object. |


## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| `true` if contact merge suggestions are enabled for the organization; `false` if it is disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String| The ID of an Azure Active Directory group in which the contact merge suggestions are disabled for its members. Default is `empty`. Optional.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.insightsSettings"
}-->

```json
{
  "disabledForGroup": "String",
  "isEnabledInOrganization": "Boolean"
}
```





