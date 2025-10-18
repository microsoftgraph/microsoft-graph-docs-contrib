---
title: "approverInformationVisibility enum type"
description: "Defines whether approver information is visible to the requestor in approval processes."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "enumPageType"
ms.date: 10/14/2025
---

# approverInformationVisibility enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines whether approver information is visible to the requestor in approval processes within [Microsoft Entra entitlement management](entitlementmanagement-overview.md) and related governance scenarios.

## Members

| Member             | Value | Description                                                        |
|:-------------------|:------|:-------------------------------------------------------------------|
| no                 | 0     | Approver information is not visible to the requestor.             |
| yes                | 1     | Approver information is visible to the requestor.                 |
| default            | 2     | Use the default system setting for approver information visibility.|
| unknownFutureValue | 3     | Evolvable enumeration sentinel value. Don't use.                  |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.approverInformationVisibility"
}-->

```json
{
  "@odata.type": "#microsoft.graph.approverInformationVisibility"
}
```