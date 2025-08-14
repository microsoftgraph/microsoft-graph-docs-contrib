---
title: "Remove threatIntelligencePolicy from a filteringProfile"
description: "Remove threatIntelligencePolicy from a filteringProfile"
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Remove threatIntelligencePolicy from a filteringProfile

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) object from a [filteringProfile](../resources/networkaccess-filteringprofile.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencepolicylink-delete-policy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicylink-delete-policy-permissions.md)]
[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

```http
DELETE /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy/{id}
