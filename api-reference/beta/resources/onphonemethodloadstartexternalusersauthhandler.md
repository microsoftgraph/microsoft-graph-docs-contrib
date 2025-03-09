---
title: "onPhoneMethodLoadStartExternalUsersAuthHandler resource type"
description: "A managed handler that defines what calling codes are enabled or disabled for telephony services in an external identities user flow for Microsoft Entra external tenants."
author: "aloom3"
ms.date: 02/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPhoneMethodLoadStartExternalUsersAuthHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A managed handler that defines what calling codes are enabled or disabled for telephony services in an [external identities user flow for Microsoft Entra external tenants](../resources/authenticationeventsflow.md). 

This configuration enumerates what region codes can be opted-in or out for SMS or voice MFA.


Inherits from [onPhoneMethodLoadStartHandler](../resources/onphonemethodloadstarthandler.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|smsOptions|[phoneOptions](../resources/phoneoptions.md)|Telephony options to enable or disable regions for SMS.|
|voiceOptions|[phoneOptions](../resources/phoneoptions.md)|Telephony options to enable or disable regions for voice.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler",
  "smsOptions": {
    "@odata.type": "microsoft.graph.phoneOptions"
  },
  "voiceOptions": {
    "@odata.type": "microsoft.graph.phoneOptions"
  }
}
```

