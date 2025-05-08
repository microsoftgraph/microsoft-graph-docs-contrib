---
title: "sensitivityLabelTarget enum type"
description: "Flags enum specifying the workloads or content types where a sensitivity label can be applied (Email, Site, File, etc.)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# sensitivityLabelTarget enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Flags enumeration specifying the target workloads or types of content where a sensitivity label is intended to be applied. Used in [sensitivityLabel](../resources/sensitivitylabel.md) and [sensitivityPolicySettings](../resources/sensitivitypolicysettings.md).

## Members

| Member             | Value | Description                                                 |
| :----------------- | :---- | :---------------------------------------------------------- |
| email              | 1     | Label applicable to email messages.                         |
| site               | 2     | Label applicable to SharePoint sites.                       |
| unifiedGroup       | 4     | Label applicable to Microsoft 365 Groups.                   |
| teamwork           | 8     | Label applicable to Microsoft Teams (meetings, channels).    |
| unknownFutureValue | 16    | Evolvable enumeration sentinel value. Do not use.           |
| file               | 32    | Label applicable to files (documents, etc.). *Note: Hidden in CSDL.* |
| schematizedData    | 64    | Label applicable to schematized data (e.g., Purview Data Map assets). *Note: Hidden in CSDL.* |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sensitivityLabelTarget",
  "isFlags": true
}-->
``` json
{
  "@odata.type": "#microsoft.graph.sensitivityLabelTarget",
  "isFlags": true,
  "members": [
    { "name": "email", "value": 1 },
    { "name": "site", "value": 2 },
    { "name": "unifiedGroup", "value": 4 },
    { "name": "teamwork", "value": 8 },
    { "name": "unknownFutureValue", "value": 16 },
    { "name": "file", "value": 32 },
    { "name": "schematizedData", "value": 64 }
 ]
}
```