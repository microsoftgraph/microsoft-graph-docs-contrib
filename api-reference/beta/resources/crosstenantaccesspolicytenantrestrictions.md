---
title: "crossTenantAccessPolicyTenantRestrictions resource type"
description: "Defines how to configure Azure AD Tenant Restrictions settings for your organization users accessing external organizations using external idenities on your network or devices.Settings can be targeted to specific users, groups, or applications."
author: "vimrang"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# crossTenantAccessPolicyTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how to target your cross-tenant access policy tenant restrictions settings. Settings can be targeted to specific users, groups, or applications. You can also use keywords to target specific groups or applications.

Inherits from [crossTenantAccessPolicyB2BSettings](../resources/crosstenantaccesspolicyb2bsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
| target | String | The unique identifier of the user, group, or application; one of the following keywords: `AllUsers` and `AllApplications`; or for targets that are applications, you may use [reserved values](#reserved-values-for-targets-that-are-applications). |
| targetType | crossTenantAccessPolicyTargetType | The type of resource that you want to target. The possible values are: `user`, `group`, `application`, `unknownFutureValue`. |

### Reserved values for targets that are applications

When setting application targets, you can also use the following reserved values:

| Symbol | Description |
|:---|:---|
| Office365 | Includes the applications mentioned as part of the [Office365](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps#office-365) suite. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyTenantRestrictions"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyTarget",
  "target": "String",
  "targetType": "microsoft.graph.crossTenantAccessPolicyTargetType"
}
```
