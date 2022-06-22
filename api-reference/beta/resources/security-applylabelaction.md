---
title: "applyLabelAction resource type"
description: "Represents a set of actions that should be taken to apply or update a label."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# applyLabelAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of actions that should be taken to apply or update a label. **applyLabelAction** is returned when the result of a label evaluation operation is that a label should be applied. The **actions** property contains an [informationProtectionAction](security-informationprotectionaction.md) collection that describes the full set of actions to apply the label, including removal of old metadata, content marking, and protection.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties

| Property                    | Type                                                                                           | Description                                                                                                                                   |
| :-------------------------- | :--------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------- |
| actions                     | [informationProtectionAction](../resources/security-informationprotectionaction.md) collection | The collection of actions that should be implemented by the caller.                                                                           |
| actionSource                | [actionSource](../resources/enums.md#actionsource-values)                                      | Specifies why the label was selected. Possible values are: `manual`, `automatic`, `recommended`, `default`.                                   |
| responsibleSensitiveTypeIds | GUID collection                                                                                | If the label was the result of an automatic classification, supply the list of sensitive info type GUIDs that resulted in the returned label. |

## Relationships

| Relationship     | Type                                                          | Description                                                           |
| :--------------- | :------------------------------------------------------------ | :-------------------------------------------------------------------- |
| sensitivityLabel | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) | The label that corresponds to the set of actions returned by the API. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.applyLabelAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.applyLabelAction",
  "actions": [
    {
      "@odata.type": "microsoft.graph.security.addContentFooterAction"
    }
  ],
  "actionSource": "String",
  "responsibleSensitiveTypeIds": [
    "GUID"
  ]
}
```

