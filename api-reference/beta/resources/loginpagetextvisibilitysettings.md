---
title: "loginPageTextVisibilitySettings resource type"
description: "Contains details of the organization's branding."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# loginPageTextVisibilitySettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a complex type that represents the various texts that can be hidden on the login page for a tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| loginPageTextVisibilitySettings | [loginPageTextVisibilitySettings](../resources/loginPageTextVisibilitySettings.md) | This is a complex type that represents the various texts that can be hidden on the login page for a tenant. |
| hideAccountResetCredentials | Boolean | Option to hide the self service password reset (SSPR) hyperlinks such as “Can’t access your account”, "Forgot my password" and "reset it now" inside of the sign-in form. |
| hideTermsOfUse | Boolean | Option to hide “Terms of Use” hyperlink in the footer. |
| hidePrivacyAndCookies | Boolean | Option to hide "Microsoft Privacy & Cookies" URL in the footer. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "loginPageTextVisibilitySettings:" {"@odata.type": "microsoft.graph.loginPageTextVisibilitySettings"}
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.loginPageTextVisibilitySettings",
  "hideAccountResetCredentials": "Boolean",
  "hidePrivacyAndCookies": "Boolean",
  "hideTermsOfUse": "Boolean"
}
```
