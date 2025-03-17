---
title: "userFlowApiConnectorConfiguration resource type"
description: "Represents the API connectors that are enabled for a user flow."
author: "nickgmicrosoft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# userFlowApiConnectorConfiguration resource type

Namespace: microsoft.graph

Defines the APIs that are called at specific points in the user flow.  Each relationship of this object corresponds to a specific step in the user flow that can be configured to call an API connector.

## Relationships

| Relationship            | Type                                            | Description                                                                                                                                             |
| :---------------------- | :---------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------ |
| postAttributeCollection | [identityApiConnector](identityapiconnector.md) | Specifies an API to call after a user submits the collected attributes and before the user account is created during sign-up.|   
| postFederationSignup    | [identityApiConnector](identityapiconnector.md) | Specifies an API to call after federation with an external identity provider. For example, a Google, Facebook, or Microsoft Entra API is completed when the user is signing up (does not apply to sign-in). |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userFlowApiConnectorConfiguration"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userFlowApiConnectorConfiguration"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "User flow API Connector Configuration",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
