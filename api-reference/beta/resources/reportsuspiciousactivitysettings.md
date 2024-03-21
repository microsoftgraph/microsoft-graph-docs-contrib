---
title: "reportSuspiciousActivitySettings resource type"
description: "Report suspicious activity enables users in the tenant to report multifactor authentication prompts as suspicious, indicating the user's credentials may have been compromised."
author: "gregkmsft"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# reportSuspiciousActivitySettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the report suspicious activity settings for the tenant, whether it's enabled and which group of users is enabled for use. Report suspicious activity enables users to report a suspicious voice or phone app notification multifactor authentication prompt as suspicious. These users have their user risk set to `high`, and a [risk detection](riskdetection.md) **riskEventType** of `userReportedSuspiciousActivity` is emitted.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|includeTarget|[includeTarget](../resources/includetarget.md)|Group IDs in scope for report suspicious activity.|
|state|advancedConfigState|Specifies the state of the reportSuspiciousActivitySettings object. The possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`. Setting to `default` results in a disabled state.|
|voiceReportingCode|Int32|Specifies the number the user enters on their phone to report the MFA prompt as suspicious.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.reportSuspiciousActivitySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportSuspiciousActivitySettings",
  "includeTarget": {
    "@odata.type": "microsoft.graph.includeTarget"
  },
  "voiceReportingCode": "Integer",
  "state": "String"
}
```

