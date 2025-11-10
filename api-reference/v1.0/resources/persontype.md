---
title: "personType resource type"
description: "Represents the type of person."
ms.localizationpriority: medium
author: "simonhult"
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 11/10/2025
---

# personType resource type

Namespace: microsoft.graph

Represents the type of person.


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personType"
}-->

```json
{
  "class": "string",
  "subclass": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|class|String|The type of data source, such as Person.|
|subclass|String|The secondary type of data source, such as OrganizationUser.|

## Values
| class | subclass | Description |
|:------|:---------|:------------|
| Person | | |
|  | OrganizationUser | User in the signed-in user’s organization. |
|  | PersonalContact | Contact added to the signed-in user’s address book. |
|  | OrganizationContact | Contact added to the organization’s address book. |
|  | ImplicitContact | Entity deemed relevant to the signed-in user based on communication, collaboration, or business signals. |
|  | Unknown |  |
| Group | | |
|  | UnifiedGroup | Azure Active Directory group, such as an Office 365 group |
|  | ImplicitGroup | Entity group deemed relevant to the signed-in user based on communication, collaboration, or business signals. |
|  | PublicDistributionList | Public contact list in the signed-in user’s organization. |
|  | PersonalDistributionList | Contact list in the signed-in user’s address book. |
|  | Unknown |  |
| Other | | |
|  | Room | Room mailbox in the signed-in user’s organization. |
|  | Guest | Azure Active Directory business-to-business (B2B) collaboration user. |
|  | Unknown |  |

The following are the possible values for class and subclass.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "personType resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

