---
title: "responseAction resource type"
description: "Describes an action taken on impacted assets as set in the custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# responseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes an action taken on [impacted assets](../resources/security-impactedasset.md) as set in a [custom detection rule](../resources/security-detectionrule.md). For more information, see [response actions](/microsoft-365/security/defender/custom-detection-rules#4-specify-actions)

This type is abstract and has multiple response action types that are derived from it:

* [Stop and quarantine file](../resources/security-stopandquarantinefileresponseaction.md)
* [Disable user](../resources/security-disableuserresponseaction.md)
* [Force user password reset](../resources/security-forceuserpasswordresetresponseaction.md)
* [Mark user as compromised](../resources/security-markuserascompromisedresponseaction.md)
* [Collect investigation package](../resources/security-collectinvestigationpackageresponseaction.md)
* [Initiate investigation](../resources/security-initiateinvestigationresponseaction.md)
* [Isolate device](../resources/security-isolatedeviceresponseaction.md)
* [Restrict app execution](../resources/security-restrictappexecutionresponseaction.md)
* [Run antivirus scan](../resources/security-runantivirusscanresponseaction.md)
* [Allow file](../resources/security-allowfileresponseaction.md)
* [Block file](../resources/security-blockfileresponseaction.md)
* [Hard delete email](../resources/security-harddeleteresponseaction.md)
* [Soft delete email](../resources/security-softdeleteresponseaction.md)
* [Move to inbox](../resources/security-movetoinboxresponseaction.md)
* [Move to deleted items](../resources/security-movetodeleteditemsresponseaction.md)
* [Move to junk](../resources/security-movetojunkresponseaction.md)


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.responseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.responseAction"
}
```

