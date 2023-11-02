---
title: export job resource type
description: The ExportJob entity is used to represent the properties of a goals export job. It inherits from base type LongRunningOperation.
author: ishatyagiit
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: resourcePageType
---

# Export job resource type

Namespace: microsoft.graph

The ExportJob entity is used to represent the properties of a goals export job. It inherits from base type [LongRunningOperation](./longrunningoperation.md).

## Methods

| Method                                                    | Return Type                                   | Description                   |
| :-------------------------------------------------------- | :-------------------------------------------- | :---------------------------- |
| [Get export job status](../api/viva-goals-export-job-get.md) | [export job](viva-goals-export-job.md) entity| Get export job status.        |
| [List export jobs](../api/viva-goals-export-jobs-list.md)      | [export job](viva-goals-export-job.md) collection | Get a list of export jobs.    |

##### Properties

| Property                       | Type             | Description                                 | Key       | Required  | ReadOnly  |
| ----------------------------   | --------------   | ------------------------------------------- | --------- | --------- | --------- |
| `goalsOrganizationId` | `String`         | The unique identifier of the goals organization | No  | Yes  | Yes  |
| `explorerViewId` | `String`         | The unique identifier of the explorer view to be exported | No | Yes  | Yes |
| `expirationDateTime`| `DateTimeOffset` | Date and time of expiry of the result of the operation | No  | No | Yes |
| `content` | `Stream` | The content of the export job| No  | No | Yes |

## JSON representation

Here is a JSON representation of the resource

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
