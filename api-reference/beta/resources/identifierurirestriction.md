---
title: "identifierUriRestriction resource type"
description: "Configuration object to configure a restriction for identifier URIs on applications."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/17/2024
---

# identifierUriRestriction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object to configure a restriction for identifier URIs on application objects.

## Properties
| Property                                    | Type                            | Description                 |
| :------------------------------------------ | :------------------------------ | :-------------------------- |
| excludeActors                | [appManagementPolicyActorExemptions](appmanagementpolicyactorexemptions.md)                         | Collection of custom security attribute exemptions. If an actor user or service principal has the custom security attribute defined in this section, they're exempted from the restriction.  This means that calls the user or service principal makes to create or update apps are exempt from this policy enforcement.  |
| excludeAppsReceivingV2Tokens                | Boolean                         | If `true`, the restriction isn't enforced for applications that are configured to receive V2 tokens in Microsoft Entra ID; else, the restriction isn't enforced for those applications.|
| excludeSaml                                 | Boolean                         | If `true`, the restriction isn't enforced for SAML applications in Microsoft Entra ID; else, the restriction is enforced for those applications.|
| restrictForAppsCreatedAfterDateTime         | String                  | Specifies the date from which the policy restriction applies to newly created applications. For existing applications, the enforcement date can be retroactively applied.|
| state                                       | appManagementRestrictionState   |  String value that indicates if the restriction is evaluated. The possible values are: `enabled`, `disabled`, and `unknownFutureValue`. If `enabled`, the restriction is evaluated. If `disabled`, the restriction isn't evaluated or enforced.|
| isStateSetByMicrosoft                       | Boolean                         | If `true`, Microsoft sets the `identifierUriRestriction` state. If `false`, the tenant modifies the `identifierUriRestriction` state. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identifierUriRestriction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identifierUriRestriction",
  "state": "String",
  "isStateSetByMicrosoft": "Boolean",
  "restrictForAppsCreatedAfterDateTime": "String (timestamp)",
  "excludeAppsReceivingV2Tokens": "Boolean",
  "excludeSaml": "Boolean",
  "excludeActors": {
      "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
    }
}
```

