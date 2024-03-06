---
title: "educationFileSynchronizationVerificationMessage resource type"
description: "Represents an error returned to the client in response to a request to start synchronization for CSV-based school data profiles. The resource will contain errors that result from the verification. Users must fix the source data before you restart the request to synchronize with Microsoft Entra ID."
author: "mmast-msft"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationFileSynchronizationVerificationMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an error returned to the client in response to a request to [start synchronization](../api/educationsynchronizationprofile-start.md) for CSV-based school data profiles. The resource will contain errors that result from the verification. Users must fix the source data before you restart the request to synchronize with Microsoft Entra ID.

## Properties

| Property    | Type   | Description                                                                  |
| :---------- | :----- | :--------------------------------------------------------------------------- |
| type        | string | Type of the message. Possible values are: `error`, `warning`, `information`. |
| fileName    | string | Source file that contains the error.                                         |
| description | string | Detailed information about the message type.                                 |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationFileSynchronizationVerificationMessage"
}-->

```json
{
  "type": "String",
  "fileName": "String",
  "description": "String"
}
```
