---
title: "addressBookAccountTargetContent resource type"
description: "Represents included or excluded users' email addresses for an attack simulation training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# addressBookAccountTargetContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents included or excluded users' email addresses for an attack simulation training campaign.

Inherits from [accountTargetContent](../resources/accounttargetcontent.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accountTargetEmails|String collection|List of user emails targeted for an attack simulation training campaign.|
|type|[accountTargetContentType](../resources/accounttargetcontent.md#accounttargetcontenttype-values)| The type of account target content contains targeted user email addresses. The possible values are: `unknown`, `includeAll`, `addressBook`, `unknownFutureValue`. Inherited from [accountTargetContent](../resources/accounttargetcontent.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.addressBookAccountTargetContent",
  "openType": true
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.security.addressBookAccountTargetContent",
    "accountTargetEmails": ["String"],
    "type": "String"
}
```

## Related content

- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
