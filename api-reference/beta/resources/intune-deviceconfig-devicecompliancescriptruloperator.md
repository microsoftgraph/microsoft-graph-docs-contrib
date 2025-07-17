---
title: "deviceComplianceScriptRulOperator enum type"
description: "Operator for rules."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceComplianceScriptRulOperator enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Operator for rules.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|None operator.|
|and|1|And operator.|
|or|2|Or operator.|
|isEquals|3|IsEquals operator.|
|notEquals|4|NotEquals operator.|
|greaterThan|5|GreaterThan operator.|
|lessThan|6|LessThan operator.|
|between|7|Between operator.|
|notBetween|8|NotBetween operator.|
|greaterEquals|9|GreaterEquals operator.|
|lessEquals|10|LessEquals operator.|
|dayTimeBetween|11|DayTimeBetween operator.|
|beginsWith|12|BeginsWith operator.|
|notBeginsWith|13|NotBeginsWith operator.|
|endsWith|14|EndsWith operator.|
|notEndsWith|15|NotEndsWith operator.|
|contains|16|Contains operator.|
|notContains|17|NotContains operator.|
|allOf|18|AllOf operator.|
|oneOf|19|OneOf operator.|
|noneOf|20|NoneOf operator.|
|setEquals|21|SetEquals operator.|
|orderedSetEquals|22|OrderedSetEquals operator.|
|subsetOf|23|SubsetOf operator.|
|excludesAll|24|ExcludesAll operator.|