---
title: "analyzedEmailAuthenticationDetail resource type"
description: Represents a list of pass or fail verdicts by email authentication protocols.
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
---

# analyzedEmailAuthenticationDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a list of pass or fail verdicts by email authentication protocols such as DMARC, DKIM, SPF, or a combination of multiple authentication types (CompAuth).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|compositeAuthentication|String|A value used by Microsoft 365 to combine email authentication such as SPF, DKIM, and DMARC, to determine whether the message is authentic.|
|dkim|String|DomainKeys identified mail (DKIM). Indicates whether it was pass/fail/soft fail.|
|dmarc|String|Domain-based Message Authentication. Indicates whether it was pass/fail/soft fail.|
|senderPolicyFramework|String|Sender Policy Framework (SPF). Indicates whether it was pass/fail/soft fail.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailAuthenticationDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailAuthenticationDetail",
  "dmarc": "String",
  "dkim": "String",
  "senderPolicyFramework": "String",
  "compositeAuthentication": "String"
}
```

