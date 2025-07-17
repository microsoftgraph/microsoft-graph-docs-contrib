---
title: "relatedContact resource type"
description: "Contact record related to an educationUser that provides information for guardians, aides, doctors, and so on."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# relatedContact resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contact record related to an [educationUser](../resources/educationuser.md) that provides information for guardians, aides, doctors, and so on.

## Methods

| Method                                    | Return Type                   | Description                                                             |
| :---------------------------------------- | :---------------------------- | :---------------------------------------------------------------------- |
| [Update](../api/relatedcontact-update.md) | **relatedContact** collection | Update the **relatedContacts** for an [educationUser](educationuser.md) |

## Properties

| Property      | Type                | Description                                                                                                                                |
| :------------ | :------------------ | :----------------------------------------------------------------------------------------------------------------------------------------- |
| displayName   | String              | Name of the contact. Required.                                                                                                             |
| accessConsent | Boolean             | Indicates whether the user has been consented to access student data.                                                                      |
| emailAddress  | String              | Email address of the contact.                                                                                                              |
| mobilePhone   | String              | Mobile phone number of the contact.                                                                                                        |
| relationship  | contactRelationship | Relationship to the user. Possible values are: `parent`, `relative`, `aide`, `doctor`, `guardian`, `child`, `other`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.relatedContact"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.relatedContact",
  "displayName": "String",
  "emailAddress": "String",
  "mobilePhone": "String",
  "relationship": "String",
  "accessConsent": "Boolean"
}
```
