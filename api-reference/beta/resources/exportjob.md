---
title: exportJob resource type
description: Represents an entity that holds the properties of an exportJob for Viva Goals. It inherits from base type LongRunningOperation.
author: ishatyagiit
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: resourcePageType
---

# exportJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The exportJob entity represents the properties of an exportJob in Viva Goals. It inherits from base type [LongRunningOperation](./longrunningoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Get exportJob status](../api/employeeexperience-get-exportjob.md) | [exportJob](exportjob.md) | Get the status of an [exportJob](exportjob.md) in Viva Goals.        |
| [List exportJob](../api/employeeexperience-list-exportjob.md)      | [exportJob](exportjob.md) collection | Get a list of the [exportJob](exportjob.md) objects for a Viva Goals organization.   |
| [Create exportJob](../api/employeeexperience-post-exportjob.md)      | [exportJob](exportjob.md) collection | Create a new [exportJob](exportjob.md) object in Viva Goals.   |

## Properties
| Property                       | Type             | Description                                 | 
| ----------------------------   | --------------   | ------------------------------------------- |
|id|String|The unique identifier for the operation. |
|createdDateTime|DateTimeOffset|The start time of the operation. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|resourceLocation|String| URI of the resource that the operation is performed on. |
|status|longRunningOperationStatus|The status of the operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
| goalsOrganizationId | String       | The unique identifier of the goals organization. |
| explorerViewId | String         | The unique identifier of the explorer view to be exported. |
| expirationDateTime| DateTimeOffset | Date and time of expiry of the result of the operation.| 
| content | Stream | The content of the exportJob.|

## Relationships
None.

## JSON representation
Following is a JSON representation of the resource.
```json
{
  "id": "string",
  "createdDateTime": "timestamp",
  "resourceLocation": "string",
  "status": "string",
  "goalsOrganizationId": "string",
  "explorerViewId": "string",
  "expirationDateTime": "timestamp"
}
```