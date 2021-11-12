---
title: "certification resource type"
description: "Represents the certification of the application."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "applications"
author: "arpitha-dhanapathi"
---

# certification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the certification of an [application](application.md). For more information, see [M365 App Compliance Program](/microsoft-365-app-certification/docs/enterprise-app-certification-guide). The certification property of an application is read-only, and and can't be manually set. It is updated when the application is certified through the Microsoft 365 App Compliance Program. 

## Properties
|Property|Type|Description|
|:---------------|:--------|:----------|
|certificationDetailsUrl|String|URL that shows certification details for the application.|
|certificationExpirationDateTime|DateTimeOffset|The timestamp when the current certification for the application will expire.|
|isCertifiedByMicrosoft|Boolean|Represents whether the application is certified by Microsoft or not.|
|isPublisherAttested|Boolean|Represents whether the application has been self-attested by the application developer or the publisher.|
|lastCertificationDateTime|DateTimeOffset|The timestamp when the certification for the application was most recently added or updated.|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.certification"
}-->

```json
{
  "isPublisherAttested": "Boolean",
  "isCertifiedByMicrosoft": "Boolean",
  "certificationDetailsUrl": "String",
  "lastCertificationDateTime": "DateTimeOffset",
  "certificationExpirationDateTime": "DateTimeOffset"
}
```
