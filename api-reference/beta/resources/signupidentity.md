---
title: "signUpIdentity resource type"
description: "Represents the identity of the user who initiated a sign-up."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-monitoring-health"
author: "nanguil"
ms.date: 11/26/2024 
---

# signUpIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of the user who initiated a sign-up.


## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|signUpIdentifier|String|The identification that the user is trying to utilize to sign up.|
|signUpIdentifierType|signUpIdentifierType|The type of sign-up the user initiated. Possible values include:  `emailAddress`, `unknownFutureValue`. Supports `$filter` (`eq`) on the `emailAddress`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signUpIdentity"
}-->

```json
{
  "signUpIdentifier": "String",
  "signUpIdentifierType": "String"
}

```

