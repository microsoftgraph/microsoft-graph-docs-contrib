---
title: "entitlementManagementSettings resource type"
description: "Tenant-wide settings for Azure AD entitlement management."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# entitlementManagementSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The settings control the behavior of [Azure AD entitlement management](entitlementmanagement-root.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|externalUserLifecycleAction|String|One of `None`, `BlockSignIn`, or `BlockSignInAndDelete`. |
|daysUntilExternalUserDeletedAfterBlocked|Int64|If `externalUserLifecycleAction` is `BlockSignInAndDelete`, the number of days after an external user is blocked from sign in before their account is deleted.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.entitlementManagementSettings",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "externalUserLifecycleAction": "None",
  "daysUntilExternalUserDeletedAfterBlocked": 1
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "entitlementManagementSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
