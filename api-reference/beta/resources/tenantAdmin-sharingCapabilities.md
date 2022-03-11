---
title: "sharingCapabilities enum type"
description: "Enum type representing sharing capabilities for a SharePoint site or tenant."
ms.localizationpriority: medium
author: "lfernandez"
ms.prod: "sharepoint"
doc_type: "enumPageType"
---

# sharingCapabilities enum type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enum type representing access to certain sharing capabilities for a tenant.

## Members
|Member|Description|
|:---|:---|
| disabled                        | External user sharing (share by email) and guest link sharing are both disabled.                     |
| externalUserSharingOnly         | External user sharing is enabled, but guest link sharing is disabled.                                |
| externalUserAndGuestSharing     | Both external user sharing and guest link sharing are enabled.                                       |
| existingExternalUserSharingOnly | External user sharing and guest link sharing are both disabled, but AllowGuestUserSignIn is enabled. |