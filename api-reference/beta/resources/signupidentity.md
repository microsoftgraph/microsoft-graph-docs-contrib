---
title: "signUpIdentity resource type"
description: "Provides information about the identity of the user who has initiated a sign-up."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-monitoring-health"
author: "nanguil"
---

# signUpIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of the user who has initiated a sign-up


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|signUpIdentifier|String|The identification that the user is trying to utilize to sign up.|
|SignUpIdentifierType|String|The type of sign-up the user has initiated.  Possible values include: `federated` and `emailAddress`|


### Filtering

When filtering on the **signUpIdentity** property for a **selfServiceSignUp**:

- Filtering on **signUpIdentifierType** is supported for the following values: `federated`, `emailAddress`.


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signUpIdentity"
}-->

```json
{
  "signUpIdentifier": "String",
  "SignUpIdentifierType": "String"
}

```

