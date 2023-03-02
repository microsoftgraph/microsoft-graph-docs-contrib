---
title: "threatIntelligence resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# threatIntelligence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List threatIntelligences](../api/security-list-threatintelligence.md)|[microsoft.graph.security.threatIntelligence](../resources/security-threatintelligence.md) collection|Get a list of the [microsoft.graph.security.threatIntelligence](../resources/security-threatintelligence.md) objects and their properties.|
|[Create threatIntelligence](../api/security-post-threatintelligence.md)|[microsoft.graph.security.threatIntelligence](../resources/security-threatintelligence.md)|Create a new [microsoft.graph.security.threatIntelligence](../resources/security-threatintelligence.md) object.|
|[Get threatIntelligence](../api/security-threatintelligence-get.md)|[microsoft.graph.security.threatIntelligence](../resources/security-threatintelligence.md)|Read the properties and relationships of a [microsoft.graph.security.threatIntelligence](../resources/security-threatintelligence.md) object.|
|[Update threatIntelligence](../api/security-threatintelligence-update.md)|[microsoft.graph.security.threatIntelligence](../resources/security-threatintelligence.md)|Update the properties of a [microsoft.graph.security.threatIntelligence](../resources/security-threatintelligence.md) object.|
|[Delete threatIntelligence](../api/security-delete-threatintelligence.md)|None|Delete a [microsoft.graph.security.threatIntelligence](../resources/security-threatintelligence.md) object.|
|[List articleIndicators](../api/security-article-list-indicators.md)|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|Get the articleIndicator resources from the articleIndicators navigation property.|
|[Create articleIndicator](../api/security-threatintelligence-post-articleindicators.md)|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md)|Create a new articleIndicator object.|
|[List articles](../api/security-threatintelligence-list-articles.md)|[microsoft.graph.security.article](../resources/security-article.md) collection|Get the article resources from the articles navigation property.|
|[Create article](../api/security-threatintelligence-post-articles.md)|[microsoft.graph.security.article](../resources/security-article.md)|Create a new article object.|
|[List components](../api/security-hostname-list-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Get the hostComponent resources from the components navigation property.|
|[Create hostComponent](../api/security-threatintelligence-post-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)|Create a new hostComponent object.|
|[List cookies](../api/security-hostname-list-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Get the hostCookie resources from the cookies navigation property.|
|[Create hostCookie](../api/security-threatintelligence-post-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md)|Create a new hostCookie object.|
|[List hosts](../api/security-threatintelligence-list-hosts.md)|[microsoft.graph.security.host](../resources/security-host.md) collection|Get the host resources from the hosts navigation property.|
|[Create host](../api/security-threatintelligence-post-hosts.md)|[microsoft.graph.security.host](../resources/security-host.md)|Create a new host object.|
|[List intelProfileIndicators](../api/security-intelligenceprofile-list-indicators.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Get the intelligenceProfileIndicator resources from the intelProfileIndicators navigation property.|
|[Create intelligenceProfileIndicator](../api/security-threatintelligence-post-intelprofileindicators.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md)|Create a new intelligenceProfileIndicator object.|
|[List intelProfiles](../api/security-threatintelligence-list-intelprofiles.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|Get the intelligenceProfile resources from the intelProfiles navigation property.|
|[Create intelligenceProfile](../api/security-threatintelligence-post-intelprofiles.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md)|Create a new intelligenceProfile object.|
|[List passiveDns](../api/security-hostname-list-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md) collection|Get the passiveDns resources from the passiveDns navigation property.|
|[Create passiveDns](../api/security-threatintelligence-post-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md)|Create a new passiveDns object.|
|[List trackers](../api/security-hostname-list-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Get the hostTracker resources from the trackers navigation property.|
|[Create hostTracker](../api/security-threatintelligence-post-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md)|Create a new hostTracker object.|
|[List vulnerabilities](../api/security-threatintelligence-list-vulnerabilities.md)|[microsoft.graph.security.vulnerability](../resources/security-vulnerability.md) collection|Get the vulnerability resources from the vulnerabilities navigation property.|
|[Create vulnerability](../api/security-threatintelligence-post-vulnerabilities.md)|[microsoft.graph.security.vulnerability](../resources/security-vulnerability.md)|Create a new vulnerability object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|articleIndicators|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|**TODO: Add Description**|
|articles|[microsoft.graph.security.article](../resources/security-article.md) collection|**TODO: Add Description**|
|components|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|**TODO: Add Description**|
|cookies|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|**TODO: Add Description**|
|hosts|[microsoft.graph.security.host](../resources/security-host.md) collection|**TODO: Add Description**|
|intelProfileIndicators|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|**TODO: Add Description**|
|intelProfiles|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|**TODO: Add Description**|
|passiveDns|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md) collection|**TODO: Add Description**|
|trackers|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|**TODO: Add Description**|
|vulnerabilities|[microsoft.graph.security.vulnerability](../resources/security-vulnerability.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.threatIntelligence",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatIntelligence"
}
```

