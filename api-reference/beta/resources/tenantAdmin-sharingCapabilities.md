---
title: "sharingCapabilities enum type"
description: "Enum type representing sharing capabilities for a SharePoint site or tenant."
ms.localizationpriority: medium
author: "lfernandez"
ms.prod: "SharePoint"
doc_type: "enumPageType"
---

# sharingCapabilities enum type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enum type representing access to certain sharing capabilities for a tenant.

## Members
|Member|Description|
|:---|:---|
| disabled                        | Users can share only with people in the organization. No external sharing is allowed.             |
| externalUserSharingOnly         | Users can share with new and existing guests. Guests must sign in or provide a verification code. |
| externalUserAndGuestSharing     | Users can share with anyone by using links that don't require sign-in.                            |
| existingExternalUserSharingOnly | Users can share with existing guests (those already in the organization's directory).             |