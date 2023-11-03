---
title: exportJob resource type
description: Represents an entity that holds the properties of an exportJob for Viva Goals. It inherits from base type LongRunningOperation.
author: ishatyagiit
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: resourcePageType
---

# ExportJob resource type

Namespace: microsoft.graph

The exportJob entity represents the properties of an exportJob in Viva Goals. It inherits from base type [LongRunningOperation](./longrunningoperation.md).

## Methods

| Method                                                    | Return Type                                   | Description                   |
| :-------------------------------------------------------- | :-------------------------------------------- | :---------------------------- |
| [Get exportJob status](../api/viva-goals-export-job-get.md) | [exportJob](viva-goals-export-job.md) entity| Get the status of an exportJob in Viva Goals.        |
| [List exportJob](../api/viva-goals-export-jobs-list.md)      | [exportJob](viva-goals-export-job.md) collection | Get a list of the exportJobs for a Viva Goals organization.   |

##### Properties

| Property                       | Type             | Description                                 | Key       | Required  | ReadOnly  |
| ----------------------------   | --------------   | ------------------------------------------- | --------- | --------- | --------- |
| `goalsOrganizationId` | `String`         | The unique identifier of the goals organization | No  | Yes  | Yes  |
| `explorerViewId` | `String`         | The unique identifier of the explorer view to be exported | No | Yes  | Yes |
| `expirationDateTime`| `DateTimeOffset` | Date and time of expiry of the result of the operation | No  | No | Yes |
| `content` | `Stream` | The content of the exportJob| No  | No | Yes |

## Obtaining goalsOrganizationId and explorerViewId
To obtain the goalsOrganizationId and explorerViewId, you can extract them from the URL of a saved explorerView:
```text
https://goals.microsoft.com/org_uuid/94a356ab-53d5-40e7-8a85-053d6d3b9eb3/objective-explorer?viewId=e5e7a3c1-8cdf-409d-9ce9-ff730d65d95e
```
- The `goalsOrganizationId` is represented by the org_uuid in the URL, specifically, `94a356ab-53d5-40e7-8a85-053d6d3b9eb3`.

- The `explorerViewId` is represented by the viewId in the URL, specifically, `e5e7a3c1-8cdf-409d-9ce9-ff730d65d95e`.

So, you can identify the goalsOrganizationId as 94a356ab-53d5-40e7-8a85-053d6d3b9eb3, and the explorerViewId as e5e7a3c1-8cdf-409d-9ce9-ff730d65d95e from this URL.

## ExportJob Content and Field Configurations for Delegated Users
The exportJob content is the content that comes from the explorerView. If the delegated user set field to do an export using the web app then those field configurations are honored in the export process as well.

## JSON representation

Following is a JSON representation of the resource

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
