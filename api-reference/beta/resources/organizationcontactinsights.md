---
title: "organizationContactInsights resource type"
description: "Represents contact insights for an organization."
ms.localizationpriority: medium
author: "rogoy"
ms.prod: "outlook"
doc_type: resourcePageType
---

# organizationContactInsights resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Represents _settings_ to manage the audience in an organization for whom intelligent features related to contact management (e.g. duplicate contact merge suggestions) are enabled in M365. The feature availability can be controlled at the organization level (i.e., Tenant) or at a security group level (i.e., a subset of the organization). 

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/organizationsettings-list-contactinsights.md) | [organizationContactInsights](organizationcontactinsights.md) | Read the properties of a organizationContactInsights object. |
| [Update](../api/organizationsettings-update-contactinsights.md) | [organizationContactInsights](organizationcontactinsights.md) | Update the properties of a organizationContactInsights object. |


## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| `true` if contact insights are enabled for the organization; `false` if it is disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String| The ID of an Azure Active Directory group in which the contact insights are disabled for its members. Default is `empty`. Optional.|

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





