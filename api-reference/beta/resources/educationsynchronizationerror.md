---
title: "educationSynchronizationError resource type (deprecated)"
description: "Represents an error during school data profile validation and/or sync. A unique error is generated for every entry that fails to validate and/or synchronize with Microsoft Entra ID."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Synchronization error (deprecated)
ms.date: 07/23/2024
---

# educationSynchronizationError resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [educationsynchronizationprofile-deprecate](../includes/education-deprecate-educationsynchronizationprofile.md)]

Represents an error during school data profile validation and/or sync. A unique error is generated for every entry that fails to validate and/or synchronize with Microsoft Entra ID.

## Methods

| Method                                                                     | Return Type                                  | Description                                                           |
| :------------------------------------------------------------------------- | :------------------------------------------- | :-------------------------------------------------------------------- |
| [Get](../api/educationsynchronizationerrors-get.md) | **educationSynchronizationError** collection | Returns the list of synchronization errors associated with a profile. |

## Properties

| Property             | Type           | Description                                                     |
| :------------------- | :------------- | :-------------------------------------------------------------- |
| id                   | String         | The unique identifier for the resource. (read-only)             |
| entryType            | String         | Represents the sync entity (school, section, student, teacher). |
| errorCode            | String         | Represents the error code for this error.                       |
| errorMessage         | String         | Contains a description of the error.                            |
| joiningValue         | String         | The unique identifier for the entry.                            |
| recordedDateTime     | DateTimeOffset | The time of occurrence of this error.                           |
| reportableIdentifier | String         | The identifier of this error entry.                             |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSynchronizationError"
}-->

```json
{
  "id": "String",
  "entryType": "String",
  "errorCode": "String",
  "errorMessage": "String",
  "joiningValue": "String",
  "recordedDateTime": "DateTimeOffset",
  "reportableIdentifier": "String"
}
```
