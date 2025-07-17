---
author: spgraph-docs-team
description: "This resource provides information on the status of a asynchronous job progress."
ms.date: 09/10/2017
title: asyncJobStatus resource type
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---

# asyncJobStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource provides information on the status of a asynchronous job progress.

The following API calls return **asyncJobStatus** resources:

* [Copy Item](../api/driveitem-copy.md)

## Properties

| Property name          | Type   | Description                                                                                |
|:-----------------------|:-------|:-------------------------------------------------------------------------------------------|
| percentageComplete| Double | A value between 0 and 100 that indicates the completion percentage.                          |
| status             | String | A string value that maps to an enumeration of possible values about the status of the job. |

## Relationships
None.

## JSON representation

<!-- { "blockType": "resource", "@type": "microsoft.graph.asyncJobStatus", "@type.aka": "oneDrive.asyncOperationStatus" } -->

```json
{
  "percentageComplete": 100.0,
  "status": "notStarted | inProgress | completed | updating | failed | deletePending | deleteFailed | waiting"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "AsyncJobResource provides details about how to poll for an async completion.",
  "keywords": "async,job status,async status,copy,upload from url",
  "section": "documentation",
  "suppressions": []
}
-->


