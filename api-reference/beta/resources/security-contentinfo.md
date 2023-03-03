---
title: "contentInfo resource type"
description: "Represents the current state of information that is to be labeled."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# contentInfo resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current state of some information that is to be labeled. **contentInfo** is passed in to the [evaluateRemoval](../api/security-sensitivitylabel-evaluateremoval.md), [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md), and [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md) APIs to describe to the API the current state of the information. This **contentInfo** detail drives the results on what metadata, content marking, and protection should be added or removed when the label is applied, updated, or removed.

## Properties
| Property      | Type                                                                                      | Description                                                                                                                     |
| :------------ | :---------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ |
| contentFormat | String                                                                                    | The format of the content to be labeled. Possible values are: `file`, `email`.                                                                     |
| identifier    | String                                                                                    | Identifier used for Azure Information Protection Analytics.                                                                     |
| metadata      | [keyValuePair](../resources/security-keyvaluepair.md) collection | Existing Microsoft Purview Information Protection metadata is passed as key-value pairs, where the key is the `MSIP_Label_GUID_PropName`. |
| state         | contentState                                                                              | The usage state of the content. The possible values are: `rest`, `motion`, or `use`.                                                                                |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentInfo",
  "contentFormat": "String",
  "format": "String",
  "identifier": "String",
  "metadata": [
    {
      "@odata.type": "microsoft.graph.security.keyValuePair"
    }
  ],
  "state": "String"
}
```

