---
title: "deviceJoinType enum type"
description: "Represents the Microsoft Entra device join type for a device participating in a network connection in Global Secure Access."
author: "eladweiss"
ms.date: 02/18/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# deviceJoinType enum type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft Entra device join type for a device participating in a network [connection](networkaccess-connection.md) in Global Secure Access.

## Members

| Member | Description |
|:-------|:------------|
| none | No specific device join type. Indicates a regular, non-BYOD scenario. |
| microsoftEntraJoined | The device is joined to Microsoft Entra ID. |
| microsoftEntraRegistered | The device is registered with Microsoft Entra ID (typically BYOD). |
| unknownFutureValue | Evolvable enumeration sentinel value. |

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.networkaccess"
}
-->
