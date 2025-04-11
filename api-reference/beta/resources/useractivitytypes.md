---
title: "userActivityTypes enum type"
toc.title: "userActivityTypes enum type (preview)"
description: "Flags enum specifying user activities relevant for data protection policy scoping (UploadText, UploadFile, DownloadText, DownloadFile)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# userActivityTypes enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Flags enumeration specifying the types of user activities that are relevant when computing or applying data protection policy scopes. Used as input to the `compute` action and returned in the `activities` property of [policyScopeBase](../resources/policyscopebase.md) derived types.

## Members

| Member             | Value | Description                         |
| :----------------- | :---- | :---------------------------------- |
| none               | 0     | No specific activity specified.     |
| uploadText         | 1     | User is uploading text content.     |
| uploadFile         | 2     | User is uploading a file.           |
| downloadText       | 4     | User is downloading text content.   |
| downloadFile       | 8     | User is downloading a file.         |
| unknownFutureValue | 16    | Evolvable enumeration sentinel value. |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userActivityTypes",
  "isFlags": true
}-->
``` json
{
  "@odata.type": "#microsoft.graph.userActivityTypes",
  "isFlags": true,
  "members": [
    { "name": "none", "value": 0 },
    { "name": "uploadText", "value": 1 },
    { "name": "uploadFile", "value": 2 },
    { "name": "downloadText", "value": 4 },
    { "name": "downloadFile", "value": 8 },
    { "name": "unknownFutureValue", "value": 16 }
 ]
}
```
