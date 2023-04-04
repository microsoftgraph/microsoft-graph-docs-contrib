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

Represents the various text strings that can be hidden on the sign-in page for a tenant.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| hideAccountResetCredentials | Boolean | Option to hide the self-service password reset (SSPR) hyperlinks such as "Can't access your account?", "Forgot my password" and "Reset it now" on the sign-in form. |
| hideCannotAccessYourAccount | Boolean | Option to hide the self-service password reset (SSPR) "Can't access your account?" hyperlink on the sign-in form. |
| hideForgotMyPassword | Boolean | Option to hide the self-service password reset (SSPR) "Forgot my password" hyperlink on the sign-in form. |
| hideResetItNow | Boolean | Option to hide the self-service password reset (SSPR) "reset it now" hyperlink on the sign-in form. |
| hideTermsOfUse | Boolean | Option to hide the "Terms of Use" hyperlink in the footer. |
| hidePrivacyAndCookies | Boolean | Option to hide the "Privacy & Cookies" hyperlink in the footer. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.loginPageTextVisibilitySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.loginPageTextVisibilitySettings",
  "hideAccountResetCredentials": "Boolean",
  "hideCannotAccessYourAccount": "Boolean",
  "hideForgotMyPassword": "Boolean",
  "hidePrivacyAndCookies": "Boolean",
  "hideResetItNow": "Boolean",
  "hideTermsOfUse": "Boolean"
}
```
