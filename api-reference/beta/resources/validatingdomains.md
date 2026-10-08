---
title: "validatingDomains resource type"
description: "Defines the types of domains to which the federated token validation applies."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# validatingDomains resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the types of domains to which the federated token validation applies.

This object is an abstract type from which the following resources derive:
- [allDomains](../resources/alldomains.md)
- [enumeratedDomains](../resources/enumerateddomains.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|rootDomains|rootDomains|Defines the types of domains to which the validation applies. The possible values are: <br/><ul><li>`none`: Allows sign in without any domain match; this is the least secure option and is highly discouraged.</li><li>`all`: Requires a domain match for all domains; users are allowed to sign in only if their domain matches.</li><li>`allFederated`: Blocks sign in if the user's domain is federated (for example, when the user comes from a different federated domain), but allows sign in if the user's domain is managed.</li><li>`allManaged`: Blocks sign in if the user's domain is managed, but allows sign in for users from federated domains.</li><li>`enumerated`: Blocks sign in if the user's domain is in the specified enumerated domains list.</li><li>`allManagedAndEnumeratedFederated`: Blocks sign in for all managed domains, and blocks federated domains that are included in the enumerated domains list.</li><li>`unknownFutureValue`: Evolvable enumeration sentinel value. Don't use.</li></ul>|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.validatingDomains"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.validatingDomains",
  "rootDomains": "String"
}
```
