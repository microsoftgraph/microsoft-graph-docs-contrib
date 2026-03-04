---
title: "crossTenantAccessType enum type"
description: "Represents the type of cross-tenant access for a network connection in Global Secure Access."
author: "eladweiss"
ms.date: 02/18/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# crossTenantAccessType enum type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the type of cross-tenant access for a network [connection](networkaccess-connection.md) in Global Secure Access.

## Members

| Member | Description |
|:-------|:------------|
| none | No cross-tenant access. Indicates a single-tenant, non-B2B scenario. |
| b2bCollaboration | The connection involves B2B collaboration across tenants. |
| unknownFutureValue | Evolvable enumeration sentinel value. |

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.networkaccess"
}
-->
