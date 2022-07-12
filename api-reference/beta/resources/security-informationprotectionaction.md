---
title: "informationProtectionAction resource type"
description: "Describes the abstract informationProtectionAction entity."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# informationProtectionAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes an abstract entity that is returned as the result of any of the information protection evaluation APIs. The object contains one or more of the following actions that instruct the application on how to apply, update, or remove the information protection label. 

* [addContentFooterAction](../resources/security-addcontentfooteraction.md)
* [addContentHeaderAction](../resources/security-addcontentheaderaction.md)
* [addWatermarkAction](../resources/security-addwatermarkaction.md)
* [applyLabelAction](../resources/security-applylabelaction.md)
* [customAction](../resources/security-customaction.md)
* [justifyAction](../resources/security-justifyaction.md)
* [metadataAction](../resources/security-metadataaction.md)
* [protectAdhocAction](../resources/security-protectadhocaction.md)
* [protectByTemplateAction](../resources/security-protectbytemplateaction.md)
* [protectionDoNotForwardAction](../resources/security-protectdonotforwardaction.md)
* [recommendLabelAction](../resources/security-recommendlabelaction.md)
* [removeContentFooterAction](../resources/security-removecontentfooteraction.md)
* [removeContentHeaderAction](../resources/security-removecontentheaderaction.md)
* [removeProtectionAction](../resources/security-removeprotectionaction.md)
* [removeWatermarkAction](../resources/security-removewatermarkaction.md)

## Properties

None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.informationProtectionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.informationProtectionAction"
}
```

