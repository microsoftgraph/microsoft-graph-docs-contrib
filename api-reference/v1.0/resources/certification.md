---
title: "certification resource type"
description: "Represents the certification details of an application."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "arpitha-dhanapathi"
ms.date: 04/03/2024
---

# certification resource type
Namespace: microsoft.graph

Represents the certification details of an [application](application.md). 

The certification property of an application is read-only, and can't be manually set. It's updated when the application is certified through the Microsoft 365 App Compliance Program. For more information, see [Microsoft 365 App Compliance Program](/microsoft-365-app-certification/overview).

## Properties
|Property|Type|Description|
|:---------------|:--------|:----------|
|certificationDetailsUrl|String|URL that shows certification details for the application.|
|certificationExpirationDateTime|DateTimeOffset|The timestamp when the current certification for the application expires.|
|isCertifiedByMicrosoft|Boolean|Indicates whether the application is certified by Microsoft.|
|isPublisherAttested|Boolean|Indicates whether the application developer or publisher completed Publisher Attestation.|
|lastCertificationDateTime|DateTimeOffset|The timestamp when the certification for the application was most recently added or updated.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.certification"
}-->

```json
{
  "certificationDetailsUrl": "String",
  "certificationExpirationDateTime": "DateTimeOffset",
  "isCertifiedByMicrosoft": "Boolean",
  "isPublisherAttested": "Boolean",
  "lastCertificationDateTime": "DateTimeOffset"
}
```
