---
title: "certification resource type"
description: "Represents the certification details of an application."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "applications"
author: "arpitha-dhanapathi"
---

# certification resource type
Namespace: microsoft.graph

Represents the certification details of an [application](application.md). 

The certification property of an application is read-only, and can't be manually set. It is updated when the application is certified through the Microsoft 365 App Compliance Program. For more information, see [Microsoft 365 App Compliance Program](/microsoft-365-app-certification/docs/enterprise-app-certification-guide).

## Properties
|Property|Type|Description|
|:---------------|:--------|:----------|
|certificationDetailsUrl|String|URL that shows certification details for the application.|
|certificationExpirationDateTime|DateTimeOffset|The timestamp when the current certification for the application will expire.|
|isCertifiedByMicrosoft|Boolean|Indicates whether the application is certified by Microsoft.|
|isPublisherAttested|Boolean|Indicates whether the application has been self-attested by the application developer or the publisher.|
|lastCertificationDateTime|DateTimeOffset|The timestamp when the certification for the application was most recently added or updated.|

## JSON representation
The following is a JSON representation of the resource.

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
