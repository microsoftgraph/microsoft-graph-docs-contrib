---
title: "loginPageTextVisibilitySettings resource type"
description: "Contains details of various text strings that can be hidden on the sign-in page for a tenant."
author: nanguil
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# loginPageTextVisibilitySettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the various text strings that can be hidden on the sign-in page for a tenant. This resource is configured as part of the [organizationalBranding resource](../resources/organizationalbranding.md).

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
The following JSON representation shows the resource type.
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
