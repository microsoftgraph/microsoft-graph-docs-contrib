---
title: "conditionalAccessSessionControls resource type"
description: "Represents a complex type of session controls that is enforced after sign-in."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 04/03/2024
---

# conditionalAccessSessionControls resource type

Namespace: microsoft.graph

Represents session controls that are enforced after sign-in.
All the session controls inherit from [conditionalAccessSessionControl](conditionalaccesssessioncontrol.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applicationEnforcedRestrictions|[applicationEnforcedRestrictionsSessionControl](applicationenforcedrestrictionssessioncontrol.md)| Session control to enforce application restrictions. Only Exchange Online and Sharepoint Online support this session control. |
|cloudAppSecurity|[cloudAppSecuritySessionControl](cloudappsecuritysessioncontrol.md)| Session control to apply cloud app security.|
|disableResilienceDefaults|Boolean| Session control that determines whether it is acceptable for Microsoft Entra ID to extend existing sessions based on information collected prior to an outage or not.|
|persistentBrowser|[persistentBrowserSessionControl](persistentbrowsersessioncontrol.md)| Session control to define whether to persist cookies or not. All apps should be selected for this session control to work correctly. |
|signInFrequency|[signInFrequencySessionControl](signinfrequencysessioncontrol.md)| Session control to enforce signin frequency.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "applicationEnforcedRestrictions",
    "persistentBrowser",
    "cloudAppSecurity",
    "signInFrequency",
    "disableResilienceDefaults"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessSessionControls",
  "baseType": null
}-->

```json
{
  "applicationEnforcedRestrictions": {"@odata.type": "microsoft.graph.applicationEnforcedRestrictionsSessionControl"},
  "cloudAppSecurity": {"@odata.type": "microsoft.graph.cloudAppSecuritySessionControl"},
  "disableResilienceDefaults": false,
  "persistentBrowser": {"@odata.type": "microsoft.graph.persistentBrowserSessionControl"},
  "signInFrequency": {"@odata.type": "microsoft.graph.signInFrequencySessionControl"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessSessionControls resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
