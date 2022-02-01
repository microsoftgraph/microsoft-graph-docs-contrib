---
title: "recommendLabelAction resource type"
description: "Represents a label that should be recommended to the user for application to the file based on sensitive information types."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# recommendLabelAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a label that should be recommended to the user for application to the file based on discovered sensitive information types. The [evaluateClassificationResults](../api/security-informationprotection-sensitivitylabel-evaluateclassificationresults.md) may return a **recommendLabelAction** if the Microsoft Information Protection labeling policy is set to **recommend** and label rather than enforce a label. The user or appliation may choose to ignore or accept the recommendation. 

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties

| Property                    | Type                                                                                                                    | Description                                                                      |
| :-------------------------- | :---------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------- |
| actionSource                | String                                                                                                                  | Possible values are: `manual`, `automatic`, `recommended`, `default`.            |
| actions                     | [microsoft.graph.security.informationProtectionAction](../resources/security-informationprotectionaction.md) collection | Actions to take if the label is accepted by the user.                            |
| responsibleSensitiveTypeIds | Guid collection                                                                                                         | The sensitive information type GUIDs that caused the recommendation to be given. |

## Relationships

| Relationship     | Type                                                          | Description                          |
| :--------------- | :------------------------------------------------------------ | :----------------------------------- |
| sensitivityLabel | [sensitivityLabel](../resources/security-sensitivitylabel.md) | The label that is being recommended. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.recommendLabelAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.recommendLabelAction",
  "actions": [
    {
      "@odata.type": "microsoft.graph.security.addContentFooterAction"
    }
  ],
  "actionSource": "String",
  "responsibleSensitiveTypeIds": [
    "Guid"
  ]
}
```

