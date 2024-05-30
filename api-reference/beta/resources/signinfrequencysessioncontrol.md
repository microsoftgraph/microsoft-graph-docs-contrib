---
title: "signInFrequencySessionControl resource type"
description: "Session control to enforce signin frequency."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# signInFrequencySessionControl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Session control to enforce sign-in frequency. Inherits from [conditionalAccessSessionControl](conditionalaccesssessioncontrol.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|authenticationType |signInFrequencyAuthenticationType  | The possible values are `primaryAndSecondaryAuthentication`, `secondaryAuthentication`, `unknownFutureValue`. This property isn't required when using **frequencyInterval** with the value of `timeBased`. |
|frequencyInterval  |signInFrequencyInterval  | The possible values are `timeBased`, `everyTime`, `unknownFutureValue`. Sign-in frequency of `everyTime` is available for risky users, risky sign-ins, Intune device enrollment, any application, authentication context, and user actions. For more information, see [Require reauthentication every time](https://aka.ms/RequireReauthentication). |
|isEnabled     |Boolean      | Specifies whether the session control is enabled. |
|type          |signinFrequencyType       | Possible values are: `days`, `hours`, or `null` if **frequencyInterval** is `everyTime` .|
|value         |Int32        | The number of `days` or `hours`.|


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signInFrequencySessionControl",
  "baseType": "microsoft.graph.conditionalAccessSessionControl"
}-->

```json
{
  "isEnabled":true,
  "type": "String",
  "value": 1024,
  "authenticationType": "String",
  "frequencyInterval": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signInFrequencySessionControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


