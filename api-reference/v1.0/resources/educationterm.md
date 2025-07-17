---
title: "educationTerm resource type"
description: "A term. This represents a designated portion of the academic year. It's used within educationClass."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# educationTerm resource type

Namespace: microsoft.graph

A term. This represents a designated portion of the academic year. It's used within [educationClass](educationclass.md).

## Properties

| Property    | Type   | Description                       |
| :---------- | :----- | :-------------------------------- |
| displayName | String | Display name of the term.         |
| endDate     | Date   | End of the term.                  |
| externalId  | String | ID of term in the syncing system. |
| startDate   | Date   | Start of the term.                |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationTerm"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationTerm",
  "displayName": "String",
  "endDate": "Date",
  "externalId": "String",
  "startDate": "Date"
}
```
