---
title: "onPhoneMethodLoadStartExternalUsersAuthHandler resource type"
description: "Represents a step in a multi-event user flow policy defining what happens when telephony methods are ready to be presented to the user."
author: "aloom3"
ms.date: 01/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPhoneMethodLoadStartExternalUsersAuthHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A managed handler that defines what calling codes are enabled or disabled for telephony services in an [external identities user flow for Microsft Entra external tenants] (../resources/authenticationevents.flow.md). 
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

