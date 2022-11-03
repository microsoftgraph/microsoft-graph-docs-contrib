---
title: "metadataAction resource type"
description: "Represents the metadata to be written or removed from a file."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# metadataAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the metadata to be written or removed from a file. **metadataAction** might be returned by the [evaluateRemoval](../api/security-sensitivitylabel-evaluateremoval.md), [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md), and [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md) APIs. The action informs the consuming application of the specific key-value pairs that should be added to the file or the specific metadata keys that should be removed from the file. This metadata is what describes the file or information as being *labeled*.


Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
| Property         | Type                                       | Description                                                                        |
| :--------------- | :----------------------------------------- | :--------------------------------------------------------------------------------- |
| metadataToAdd    | [keyValuePair](keyvaluepair.md) collection | A collection of key-value pairs that should be added to the file.                  |
| metadataToRemove | String collection                          | A collection of strings that indicate which keys to remove from the file metadata. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.metadataAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.metadataAction",
  "metadataToAdd": [
    {
      "@odata.type": "microsoft.graph.security.keyValuePair"
    }
  ],
  "metadataToRemove": [
    "String"
  ]
}
```

