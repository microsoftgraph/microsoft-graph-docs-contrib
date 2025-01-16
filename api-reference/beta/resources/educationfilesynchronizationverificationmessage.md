---
title: "educationFileSynchronizationVerificationMessage resource type (deprecated)"
description: "Represents an error returned to the client in response to a request to start synchronization for CSV-based school data profiles. The resource will contain errors that result from the verification. Users must fix the source data before you restart the request to synchronize with Microsoft Entra ID."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# educationFileSynchronizationVerificationMessage resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [educationsynchronizationprofile-deprecate](../includes/education-deprecate-educationsynchronizationprofile.md)]

Represents an error returned to the client in response to a request to [start synchronization](../api/educationsynchronizationprofile-start.md) for CSV-based school data profiles. The resource will contain errors that result from the verification. Users must fix the source data before you restart the request to synchronize with Microsoft Entra ID.

## Properties

| Property    | Type   | Description                                                                  |
| :---------- | :----- | :--------------------------------------------------------------------------- |
| type        | string | Type of the message. Possible values are: `error`, `warning`, `information`. |
| fileName    | string | Source file that contains the error.                                         |
| description | string | Detailed information about the message type.                                 |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
