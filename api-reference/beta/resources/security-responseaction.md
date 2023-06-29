---
title: "responseAction resource type"
description: "Describes an action taken on impacted assets as set in the custom detection rule"
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# responseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes an action taken on [impacted assets](../resources/security-impactedasset.md) as set in a [Custom Detection Rule](../resources/security-detectionrule.md).
More about response actions: https://learn.microsoft.com/en-us/microsoft-365/security/defender/custom-detection-rules?view=o365-worldwide#4-specify-actions
This is an abstract type, and has multiple different response action types that are derived from it:

* [Stop and Quarantine File](../resources/security-stopandquarantinefileresponseaction.md)
* [Disable User](../resources/security-disableuserresponseaction.md)
* [Force User Password Reset](../resources/security-forceuserpasswordresetresponseaction.md)
* [Mark User As Compromised](../resources/security-markuserascompromisedresponseaction.md)
* [Collect Investigation Package](../resources/security-collectinvestigationpackageresponseaction.md)
* [Initiate Investigation](../resources/security-initiateinvestigationresponseaction.md)
* [Isolate Device](../resources/security-isolatedeviceresponseaction.md)
* [Restrict App Execution](../resources/security-restrictappexecutionresponseaction.md)
* [Run Antivirus Scan](../resources/security-runantivirusscanresponseaction.md)
* [Allow File](../resources/security-allowfileresponseaction.md)
* [Block File](../resources/security-blockfileresponseaction.md)
* [Hard Delete Email](../resources/security-harddeleteresponseaction.md)
* [Soft Delete Email](../resources/security-softdeleteresponseaction.md)
* [Move To Inbox](../resources/security-movetoinboxresponseaction.md)
* [Move To Deleted Items](../resources/security-movetodeleteditemsresponseaction.md)
* [Move To Junk](../resources/security-movetojunkresponseaction.md)


## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

