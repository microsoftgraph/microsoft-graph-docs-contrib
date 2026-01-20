---
title: "allowedTenantsAudience resource type"
description: "Allows use of the application only in a given list of Entra tenants"
author: "psignoret"
ms.date: 11/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# allowedTenantsAudience resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **allowedTenantsAudience** type is used as the **signInAudienceRestrictions** value for an [application](application.md) resource to indicate that the application can only be used in one of the allowed Entra tenants in the listed in **allowedTenantIds**.

This type may only be used when the application's **signInAudience** property is `AzureADMultipleOrgs`.

Inherits from [signInAudienceRestrictionsBase](../resources/signinaudiencerestrictionsbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedTenantIds|String collection|The list of Entra tenant IDs where the application can be used as either a client application or a resource application (API). This property must contain at least one value and can't include more than 20 values. The tenant ID where the application is registered may be included, but is not required (see **isHomeTenantAllowed**). Required.|
|isHomeTenantAllowed|Boolean|Whether the tenant where the application is registered is allowed. Currently, only `true` is supported. Default is `true`.|
|kind|kind|If provided, must be `allowedTenants`. Optional. Inherited from [signInAudienceRestrictionsBase](../resources/signinaudiencerestrictionsbase.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.allowedTenantsAudience"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allowedTenantsAudience",
  "kind": "String",
  "allowedTenantIds": [
    "String"
  ],
  "isHomeTenantAllowed": "Boolean"
}
```
